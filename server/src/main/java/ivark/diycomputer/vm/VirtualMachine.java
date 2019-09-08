package ivark.diycomputer.vm;

import ivark.diycomputer.instructionset.Compiler;
import ivark.diycomputer.instructionset.Instruction;
import ivark.diycomputer.instructionset.InstructionSet;
import ivark.diycomputer.instructionset.Microcode;
import ivark.diycomputer.model.BUS;
import ivark.diycomputer.model.Computer;
import ivark.diycomputer.model.PC;
import ivark.diycomputer.model.Signal;

import java.io.File;
import java.io.FileReader;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


public class VirtualMachine {
    private Computer c = new Computer();
    private InstructionSet is = new InstructionSet(c);
    private Compiler compiler = new Compiler(c);
    private InstReg instReg = new InstReg();
    private Mar mar = new Mar();
    private Ram ram = new Ram();
    private Alu alu = new Alu();
    private Sp sp = new Sp();
    private Pc pc=new Pc();
    private Reg xreg = new Reg(BUS.BusReader.X_IN, BUS.BusWriter.X_OUT);
    private Reg yreg = new Reg(BUS.BusReader.Y_IN, BUS.BusWriter.Y_OUT);
    private Reg zreg = new Reg(BUS.BusReader.Z_IN, BUS.BusWriter.Z_OUT);
    private Reg tmpreg = new Reg(BUS.BusReader.TMP_IN, BUS.BusWriter.TMP_OUT);
    private Out out0 = new Out("OUT0", BUS.BusReader.OUTPUT_0_IN);
    private Out out1 = new Out("OUT1", BUS.BusReader.OUTPUT_1_IN);
    private Out out2 = new Out("OUT2", BUS.BusReader.OUTPUT_2_IN);
    private List<Part> parts = Arrays.asList(instReg, mar, ram, alu, sp, pc, xreg, yreg, zreg, tmpreg, out0, out1, out2);
    private static final int LEVEL=0;

    public static void main(String... args) throws Exception {
        new VirtualMachine().run(args[0]);
    }

    public void run(String programpath) throws Exception {
        List<String> lines = compiler.getLines(new FileReader(new File(programpath)));
        Map<String, Integer> labelMap = compiler.createLabelMap(lines);
        List<Byte> byteCode = compiler.getByteCode(lines, labelMap);
        for (int i=0;i<byteCode.size();i++) {
            ram.memory[i]=byteCode.get(i);
        }

        System.out.println();
        System.out.println();

        pc.pc_h=0;
        pc.pc_l=0;
        instReg.instr=0;
        instReg.step=0;

        int d=1;

        while(!instReg.isActive(c.clock.haltSignal)) {
            if (instReg.step>=3) {
                BUS.BusWriter w = instReg.getBusWriter();
                BUS.BusReader r = instReg.getBusReader();
                log(1,instReg.getCurrentInstruction().opcode + ", step " + instReg.step+" "+bustraffic(w,r)+", "+signals()+", status: "+statusflags());
            }
            parts.forEach(p->p.onCLKRising());
            sleep(d);
            parts.forEach(p->p.onCLKRisingDone());
            sleep(d);
            if (instReg.step==0) {
                log(1,"\n"+toHex((pc.pc_h & 0xff)*256+(pc.pc_l & 0xff),4)+": ");
            }
            parts.forEach(p->p.onCLKFalling());
            sleep(d);
            parts.forEach(p->p.onCLKFallingDone());
            sleep(d);
        }
    }

    private String signals() {
        return instReg.getMicrocode().activeSignals.stream().map(s->s.fullName()).collect(Collectors.joining(", "));
    }

    String bustraffic(BUS.BusWriter w, BUS.BusReader r) {
        if (w!=null && r!=null) {
            byte busval = getValueFromBus();
            return w.name()+" -> "+r.name() + "  ("+(int)(busval & 0xff)+" = 0x"+toHex((int)busval,2)+" = "+toBinary(busval)+")";
        } else {
            return "";
        }
    }

    private String statusflags() {
        return "c="+(alu.fc?1:0)+",z="+(alu.fz?1:0)+",n="+(alu.fn?1:0)+",v="+(alu.fv?1:0);
    }

    String toBinary(byte value) {
        String padded="00000000"+Integer.toBinaryString((int)value);
        return padded.substring(padded.length()-8);
    }

    private void sleep(int i) {
        try {Thread.sleep(i);} catch (Exception e) {}
    }


    private static String toHex(int v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }


    class InstReg extends Part {
        private byte instr = 0;
        private byte step = 0;

        private byte newInst = 0;

        void onCLKRising() {
            newInst = getBusReader() == BUS.BusReader.INSTREG_IN ? getValueFromBus() : instr;
        }

        void onCLKRisingDone() {
            instr = newInst;

        }

        @Override
        protected void onCLKFallingDone() {
            if (isActive(c.instreg.contSignal)) {
                step = 0;
            } else {
                step++;
                step &= 0x0f;
            }
        }

        boolean isActive(Signal signal) {
            return getMicrocode().activeSignals.contains(signal);
        }

        BUS.BusWriter getBusWriter() {
            return getMicrocode().from;
        }

        BUS.BusReader getBusReader() {
            return getMicrocode().to;
        }

        private Microcode getMicrocode() {
            Instruction currentInstruction = getCurrentInstruction();
            return currentInstruction.steps.get(step);
        }

        private Instruction getCurrentInstruction() {
            return is.instructions.get(instr);
        }

        @Override
        BUS.BusWriter getWriter() {
            return null;
        }

        @Override
        byte getBusOutput() {
            throw new RuntimeException();
        }
    }


    private class Mar extends Part {
        private byte addr_h;
        private byte addr_l;

        private byte newAddr_h;
        private byte newAddr_l;

        @Override
        void onCLKRising() {
            if (instReg.isActive(c.mar.loadHighSignal) && instReg.isActive(c.mar.loadLowSignal)) {
                if (instReg.isActive(c.mux.selectStackPointerSignal)) {
                    newAddr_h=sp.val_h;
                    newAddr_l=sp.val_l;
                } else {
                    newAddr_h=pc.pc_h;
                    newAddr_l=pc.pc_l;
                }
            } else if (instReg.isActive(c.mar.loadLowSignal)) {
                newAddr_h=addr_h;
                newAddr_l=getValueFromBus();
            } else if (instReg.isActive(c.mar.loadHighSignal)) {
                newAddr_h=getValueFromBus();
                newAddr_l=addr_l;
            } else if (instReg.isActive(c.mar.incSignal)){
                newAddr_l++;
                if (newAddr_l == 0) {
                    newAddr_h++;
                }
            } else {
                newAddr_l=addr_l;
                newAddr_h=addr_h;
            }
        }

        @Override
        void onCLKRisingDone() {
            addr_h = newAddr_h;
            addr_l = newAddr_l;
        }

        @Override
        void onCLKFalling() {
            super.onCLKFalling();
        }

        @Override
        void onCLKFallingDone() {
            super.onCLKFallingDone();
        }

        int getAddress() {
            return (int)(addr_h & 0xff) * 256 + (int)(addr_l & 0xff);
        }

        @Override
        BUS.BusWriter getWriter() {
            return null;
        }

        @Override
        byte getBusOutput() {
            return 0;
        }
    }

    private class Ram extends Part {
        private byte[] memory = new byte[32768];

        private byte newVal;

        void onCLKRising() {
            newVal = instReg.getBusReader() == BUS.BusReader.RAM_IN ? getValueFromBus() : newVal;
        }

        @Override
        void onCLKRisingDone() {
        }

        @Override
        void onCLKFalling() {
            if (instReg.getBusReader() == BUS.BusReader.RAM_IN) {
                memory[mar.getAddress()] = newVal;
            }
        }

        @Override
        void onCLKFallingDone() {
        }

        @Override
        BUS.BusWriter getWriter() {
            return BUS.BusWriter.RAM_OUT;
        }

        @Override
        public byte getBusOutput() {
            return memory[mar.getAddress()];
        }
    }

    private class Pc extends Part {
        private byte jump_h;
        private byte jump_l;

        private byte newjump_h;
        private byte newjump_l;

        private byte pc_h;
        private byte pc_l;

        private byte newpc_h;
        private byte newpc_l;

        void onCLKRising() {
            newjump_h = instReg.getBusReader() == BUS.BusReader.PC_JMP_H_IN ? getValueFromBus() : jump_h;
            newjump_l = instReg.getBusReader() == BUS.BusReader.PC_JMP_L_IN ? getValueFromBus() : jump_l;

            newpc_h = isJump() ? jump_h : pc_h;
            newpc_l = isJump() ? jump_l : pc_l;

            if (instReg.isActive(c.pc.incSignal)) {
                newpc_l++;
                if (newpc_l == 0) {
                    newpc_h++;
                }
            }
        }

        void onCLKRisingDone() {
            jump_h = newjump_h;
            jump_l = newjump_l;
            pc_h = newpc_h;
            pc_l = newpc_l;
        }

        void onCLKFalling() {
        }

        void onCLKFallingDone() {
        }

        @Override
        BUS.BusWriter getWriter() {
            return BUS.BusWriter.PC_OUT;
        }

        @Override
        byte getBusOutput() {
            return instReg.isActive(c.muxhat.pcOutLowSignal) ? pc_l : pc_h;
        }

        boolean isJump() {
            int condOrdinal = 0;
            if (instReg.isActive(c.pc.jumpCond0Signal)) condOrdinal |= 0x01;
            if (instReg.isActive(c.pc.jumpCond1Signal)) condOrdinal |= 0x02;
            if (instReg.isActive(c.pc.jumpCond2Signal)) condOrdinal |= 0x04;
            if (instReg.isActive(c.pc.jumpCond3Signal)) condOrdinal |= 0x08;
            PC.JumpCondition cond = PC.JumpCondition.values()[condOrdinal];
            return cond.eval(alu.getZ(), alu.getN(), alu.getC(), alu.getV());
        }
    }


    class Alu extends Part {
        private byte a;
        private byte b;

        private byte newa;
        private byte newb;

        private boolean fz;  // all bits zero
        private boolean fn;  // bit7 one
        private boolean fc;  // carry
        private boolean fv;

        @Override
        void onCLKRising() {
            newa = instReg.getBusReader() == BUS.BusReader.ALU_A_IN ? getValueFromBus() : a;
            newb = instReg.getBusReader() == BUS.BusReader.ALU_B_IN ? getValueFromBus() : b;
        }

        @Override
        void onCLKRisingDone() {
            a = newa;
            b = newb;
            if (instReg.isActive(c.alu.clearCarrySignal)) fc = false;
            if (instReg.isActive(c.alu.setCarrySignal)) fc = true;
            if (instReg.isActive(c.alu.updateFlagsSignal)) {
                Result result = calcResult(a, b);
                fz = result.fz;
                fn = result.fn;
                fc = result.fc;
                fv = result.fv;
            }
        }

        @Override
        void onCLKFalling() {
            super.onCLKFalling();
        }

        @Override
        void onCLKFallingDone() {
            super.onCLKFallingDone();
        }

        Result calcResult(byte a, byte b) {
            if (instReg.isActive(c.alu.invertBSignal)) {
                b = (byte) (~b);
            }
            boolean op0 = !instReg.isActive(c.alu.op0Signal);
            boolean op1 = !instReg.isActive(c.alu.op1Signal);
            boolean op2 = !instReg.isActive(c.alu.op2Signal);
            if (op2) {
                if (op1) {
                    if (!op0) {
                        // xor
                        return new Result(a, b, (byte) (a ^ b), false);
                    }
                } else {
                    if (op0) {
                        // ror
                        byte outval = (byte) ((b & 0xff) >>> 1);
                        if (fc) {
                            outval |= 0x80;
                        }
                        return new Result(a, b, outval, (b & 0x01) == 0x01);
                    } else {
                        // and
                        return new Result(a, b, (byte) (a & b), false);
                    }
                }
            } else {
                if (op1) {
                    if (op0) {
                        // not
                        return new Result(a, b, (byte) (~b), false);
                    } else {
                        // or
                        return new Result(a, b, (byte) (a | b), false);
                    }
                } else {
                    if (op0) {
                        // rol
                        byte outval = (byte) ((a & 0xff) << 1);
                        if (fc) {
                            outval |= 0x01;
                        }
                        return new Result(a, b, outval, (a & 0x80) == 0x80);
                    } else {
                        // add
                        int sum = (a & 0xff) + (b & 0xff) + (fc ? 1 : 0);
                        return new Result(a, b, (byte) (sum & 0xff), (sum & 0x100) == 0x100);
                    }
                }
            }
            throw new RuntimeException("No such op");
        }


        boolean getZ() {
            return fz;
        }

        boolean getN() {
            return fn;
        }

        boolean getC() {
            return fc;
        }

        boolean getV() {
            return fv;
        }

        class Result {
            private byte outval;
            private boolean fc;
            private boolean fn;
            private boolean fz;
            private boolean fv;

            Result(byte a, byte b, byte outval, boolean carryout) {
                this.outval = outval;
                this.fc = carryout;
                this.fn = bit7set(outval);
                this.fz = outval == 0;
                this.fv = (bit7set(a) && bit7set(b) && !bit7set(outval)) ||
                        (!bit7set(a) && !bit7set(b) && bit7set(outval));

            }

            private boolean bit7set(byte b) {
                return (b & 0x80) == 0x80;
            }
        }

        @Override
        BUS.BusWriter getWriter() {
            return BUS.BusWriter.ALU_OUT;
        }

        @Override
        byte getBusOutput() {
            return calcResult(a, b).outval;
        }
    }


    class Sp extends Part {
        private byte val_h;
        private byte val_l;

        private byte newval_h;
        private byte newval_l;

        void onCLKRising() {
            if (instReg.isActive(c.sp.resetSignal)) {
                newval_h = 0;
                newval_l = 0;
            } else if (instReg.isActive(c.sp.cntSignal)) {
                if (instReg.isActive(c.sp.dirUpSignal)) {
                    newval_l++;
                    if (newval_l == 0) {
                        newval_h++;
                    }
                } else {
                    if (newval_l == 0) {
                        newval_h--;
                    }
                    newval_l--;
                }
            }
        }

        void onCLKRisingDone() {
            val_h = newval_h;
            val_l = newval_l;
        }

        @Override
        BUS.BusWriter getWriter() {
            return null;
        }

        @Override
        byte getBusOutput() {
            return 0;
        }
    }


    class Reg extends Part {
        private BUS.BusReader reader;
        private BUS.BusWriter writer;

        public Reg(BUS.BusReader reader, BUS.BusWriter writer) {
            this.reader = reader;
            this.writer = writer;
        }

        private byte value;

        private byte newValue;

        void onCLKRising() {
            newValue = instReg.getBusReader() == reader ? getValueFromBus() : value;
        }

        void onCLKRisingDone() {
            value = newValue;
        }

        void onCLKFalling() {
        }

        void onCLKFallingDone() {
        }

        @Override
        BUS.BusWriter getWriter() {
            return writer;
        }

        byte getBusOutput() {
            return value;
        }
    }

    class Out extends Part {
        private final String name;
        private BUS.BusReader reader;
        private byte value;
        private byte newvalue;


        public Out(String name, BUS.BusReader reader) {
            this.name = name;
            this.reader = reader;
        }

        @Override
        void onCLKRising() {
            newvalue = instReg.getBusReader() == reader ? getValueFromBus() : value;
        }

        @Override
        void onCLKRisingDone() {
            value = newvalue;
            if (instReg.getBusReader() == reader) {
                log(5,"Output " + name + " : " + (int)(value & 0xff));
            }
        }

        @Override
        BUS.BusWriter getWriter() {
            return null;
        }

        @Override
        byte getBusOutput() {
            return 0;
        }
    }


    private byte getValueFromBus() {
        List<Part> busWriters = parts.stream().filter(p -> p.writesToBus()).collect(Collectors.toList());
        if (busWriters.size() > 1) {
            throw new RuntimeException("Got multiple buswriters");
        }
        return busWriters.size() == 0 ? 0 : busWriters.get(0).getBusOutput();
    }

    abstract class Part {
        void onCLKRising() {
        }

        void onCLKRisingDone() {
        }

        void onCLKFalling() {
        }

        void onCLKFallingDone() {
        }

        abstract BUS.BusWriter getWriter();

        boolean writesToBus() {
            return instReg.getBusWriter() == getWriter() && getWriter()!=null;
        }

        abstract byte getBusOutput();
    }

    public void log(int level, String msg) {
        if (level>=LEVEL) {
            System.out.println(msg);
        }
    }
}
