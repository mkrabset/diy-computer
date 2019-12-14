package ivark.diycomputer.model;

import ivark.diycomputer.vm.VirtualMachine;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ALU extends Module {
    public final Signal.ActiveHighSignal invertBSignal = new Signal.ActiveHighSignal("INVB");
    public final Signal.ActiveLowSignal op0Signal = new Signal.ActiveLowSignal("OP0");
    public final Signal.ActiveLowSignal op1Signal = new Signal.ActiveLowSignal("OP1");
    public final Signal.ActiveLowSignal flrSignal = new Signal.ActiveLowSignal("FLR");
    public final Signal.ActiveHighSignal setCarrySignal = new Signal.ActiveHighSignal("CS");
    public final Signal.ActiveHighSignal clearCarrySignal = new Signal.ActiveHighSignal("CC");
    public final Signal.ActiveHighSignal updateFlagsSignal = new Signal.ActiveHighSignal("FLAGW");

    // Signals to be LOW for each ALU-operations
    public final Signal[] addOpSignals= opSignals(false, false, false);
    public final Signal[] rolOpSignals= opSignals(false, false, false);
    public final Signal[] notOpSignals =opSignals(false, false, false);
    public final Signal[] andOpSignals= opSignals(true, false, false);
    public final Signal[] orOpSignals=  opSignals(true, false, true);
    public final Signal[] xorOpSignals =opSignals(true, true, false);
    public final Signal[] rorOpSignals =opSignals(true, true, true);

    public ALU(Computer c, String name) {
        super(c, name);
    }

    public List<Signal> signals() {
        return Arrays.asList(invertBSignal, op0Signal, op1Signal, flrSignal,
                setCarrySignal, clearCarrySignal, updateFlagsSignal);
    }

    private Signal[] opSignals(boolean flr, boolean op0, boolean op1) {
        List<Signal> resultList=new ArrayList<>();
        if (flr == flrSignal.activeValue) {
            resultList.add(flrSignal);
        }
        if (op1==op1Signal.activeValue) {
            resultList.add(op1Signal);
        }
        if (op0==op0Signal.activeValue) {
            resultList.add(op0Signal);
        }
        return resultList.stream().toArray(Signal[]::new);
    }

    @Override
    public VMPart getVMPart() {
        return new VMPart() {
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
                    VirtualMachine.Alu.Result result = calcResult(a, b);
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

            VirtualMachine.Alu.Result calcResult(byte a, byte b) {
                if (instReg.isActive(c.alu.invertBSignal)) {
                    b = (byte) (~b);
                }
                boolean op0 = !instReg.isActive(c.alu.op0Signal);
                boolean op1 = !instReg.isActive(c.alu.op1Signal);
                boolean op2 = !instReg.isActive(c.alu.flrSignal);
                if (op2) {
                    if (op1) {
                        if (!op0) {
                            // xor
                            return new VirtualMachine.Alu.Result(a, b, (byte) (a ^ b), false);
                        }
                    } else {
                        if (op0) {
                            // ror
                            byte outval = (byte) ((b & 0xff) >>> 1);
                            if (fc) {
                                outval |= 0x80;
                            }
                            return new VirtualMachine.Alu.Result(a, b, outval, (b & 0x01) == 0x01);
                        } else {
                            // and
                            return new VirtualMachine.Alu.Result(a, b, (byte) (a & b), false);
                        }
                    }
                } else {
                    if (op1) {
                        if (op0) {
                            // not
                            return new VirtualMachine.Alu.Result(a, b, (byte) (~b), false);
                        } else {
                            // or
                            return new VirtualMachine.Alu.Result(a, b, (byte) (a | b), false);
                        }
                    } else {
                        if (op0) {
                            // rol
                            byte outval = (byte) ((a & 0xff) << 1);
                            if (fc) {
                                outval |= 0x01;
                            }
                            return new VirtualMachine.Alu.Result(a, b, outval, (a & 0x80) == 0x80);
                        } else {
                            // add
                            int sum = (a & 0xff) + (b & 0xff) + (fc ? 1 : 0);
                            return new VirtualMachine.Alu.Result(a, b, (byte) (sum & 0xff), (sum & 0x100) == 0x100);
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
        };
    }
}