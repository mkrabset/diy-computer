package ivark.diycomputer.vm;

import ivark.diycomputer.instructionset.Compiler;
import ivark.diycomputer.model.*;

import java.io.File;
import java.io.FileReader;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


public class VirtualMachine {
    private Computer c = new Computer();
    private Compiler compiler = new Compiler(c);
    private static final int LOGLEVEL = 0;

    public static void main(String... args) throws Exception {
        new VirtualMachine().run(args[0]);
    }

    public void run(String programpath) throws Exception {
        List<String> lines = compiler.getLines(new FileReader(new File(programpath)));
        Map<String, Integer> labelMap = compiler.createLabelMap(lines);
        List<Byte> byteCode = compiler.getByteCode(lines, labelMap).getBytes();

        RAM.ExtendedVMPart ram = c.ram.getVMPart();
        for (int i = 0; i < byteCode.size(); i++) {
            ram.write(i, byteCode.get(i));
        }

        System.out.println();
        System.out.println();

        PC.ExtendedVMPart pc = c.pc.getVMPart();
        INSTREG.SignalProvidingVMPart instReg = c.instReg.getVMPart();
        Module.VMPart clock = c.clock.getVMPart();
        pc.reset();
        instReg.reset();

        int d = 1;

        while (!clock.isActive(c.clock.haltSignal)) {
            if (instReg.getCurrentStep() >= 3) {
                BUS.BusWriter w = instReg.getCurrentBusWriter();
                BUS.BusReader r = instReg.getCurrentBusReader();
                log(1, instReg.getCurrentInstruction().opcode + ", step " + instReg.getCurrentStep() + " " + bustraffic(w, r) + ", " + signals() + ", status: " + statusflags());
            }
            c.modules.stream().map(Module::getVMPart).forEach(p -> p.onCLKRising());
            sleep(d);
            c.modules.stream().map(Module::getVMPart).forEach(p -> p.onCLKRisingDone());
            sleep(d);
            if (instReg.getCurrentStep() == 0) {
                log(1, "\n" + toHex((pc.getHighValue() & 0xff) * 256 + (pc.getLowValue() & 0xff), 4) + ": ");
            }
            c.modules.stream().map(Module::getVMPart).forEach(p -> p.onCLKFalling());
            sleep(d);
            c.modules.stream().map(Module::getVMPart).forEach(p -> p.onCLKFallingDone());
            sleep(d);
        }
    }

    private String signals() {
        return c.instReg.getVMPart().getMicrocode().activeSignals.stream().map(s -> s.fullName()).collect(Collectors.joining(", "));
    }

    String bustraffic(BUS.BusWriter w, BUS.BusReader r) {
        if (w != null && r != null) {
            byte busval = c.instReg.getVMPart().getValueFromBus();
            return w.name() + " -> " + r.name() + "  (" + (int) (busval & 0xff) + " = 0x" + toHex((int) busval, 2) + " = " + toBinary(busval) + ")";
        } else {
            return "";
        }
    }

    private String statusflags() {
        ALU.ExtendedVMPart alu = c.alu.getVMPart();
        return "c=" + (alu.getC() ? 1 : 0) + ",z=" + (alu.getZ() ? 1 : 0) + ",n=" + (alu.getN() ? 1 : 0) + ",v=" + (alu.getV() ? 1 : 0);
    }

    String toBinary(byte value) {
        String padded = "00000000" + Integer.toBinaryString((int) value);
        return padded.substring(padded.length() - 8);
    }

    private void sleep(int i) {
        try {
            Thread.sleep(i);
        } catch (Exception e) {
        }
    }

    private static String toHex(int v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

    public void log(int level, String msg) {
        if (level >= LOGLEVEL) {
            System.out.println(msg);
        }
    }
}
