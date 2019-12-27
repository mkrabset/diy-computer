package ivark.diycomputer.vm;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.IntNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.TextNode;
import ivark.diycomputer.instructionset.Compiler;
import ivark.diycomputer.model.*;

import java.io.File;
import java.io.FileReader;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;


public class VirtualMachine {
    public final Computer c;
    public final Compiler compiler;
    private final ObjectMapper objectMapper=new ObjectMapper();
    private static final int LOGLEVEL = 0;

    public static void main(String... args) throws Exception {
        Computer c = new Computer();
        Compiler compiler = new Compiler(c);
        new VirtualMachine(c,compiler).run(args[0]);
    }

    public VirtualMachine(Computer c, Compiler compiler) {
        this.c = c;
        this.compiler = compiler;
    }

    public void init() {
        c.pc.getVMPart().reset();
        c.instReg.getVMPart().reset();
    }

    public void step() {
        c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKRising());
        c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKRisingDone());
        c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKFalling());
        c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKFallingDone());
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
        Part.VMPart clock = c.clock.getVMPart();
        pc.reset();
        instReg.reset();

        int d = 0;

        while (!clock.isActive(c.clock.haltSignal)) {
            if (instReg.getCurrentStep() >= 3) {
                BUS.BusWriter w = instReg.getCurrentBusWriter();
                BUS.BusReader r = instReg.getCurrentBusReader();
                log(1, instReg.getCurrentInstruction().opcode + ", step " + instReg.getCurrentStep() + " " + bustraffic(w, r) +
                        ", " + signals() + ", status: " + statusflags() +
                        ", out0="+c.out0.getVMPart().getValue()+
                        ", out1="+c.out1.getVMPart().getValue()+
                        ", out2="+c.out2.getVMPart().getValue()+
                        ", out3="+c.out3.getVMPart().getValue()
                        );
            }
            c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKRising());
            sleep(d);
            c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKRisingDone());
            sleep(d);
            if (instReg.getCurrentStep() == 0) {
                log(1, "\n" + toHex((pc.getHighValue() & 0xff) * 256 + (pc.getLowValue() & 0xff), 4) + ": ");
            }
            c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKFalling());
            sleep(d);
            c.parts.stream().map(Part::getVMPart).forEach(p -> p.onCLKFallingDone());
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

    public JsonNode getState() {
        ObjectNode result = objectMapper.createObjectNode();
        ObjectNode out = objectMapper.createObjectNode();
        ObjectNode instreg = objectMapper.createObjectNode();
        ObjectNode bus = objectMapper.createObjectNode();
        ObjectNode pc = objectMapper.createObjectNode();
        ObjectNode mar = objectMapper.createObjectNode();
        ObjectNode reg = objectMapper.createObjectNode();
        ObjectNode sp = objectMapper.createObjectNode();
        ObjectNode alu = objectMapper.createObjectNode();

        // Output registers
        out.set("reg0",new TextNode(""+c.out0.getVMPart().getValue()));
        out.set("reg1",new TextNode(""+c.out1.getVMPart().getValue()));
        out.set("reg2",new TextNode(""+c.out2.getVMPart().getValue()));
        out.set("reg3",new TextNode(""+c.out3.getVMPart().getValue()));

        // Instruction register
        instreg.set("instr", new TextNode(toHex(c.instReg.getVMPart().getCurrentInstruction().num,2)));
        instreg.set("step", new TextNode(toHex(c.instReg.getVMPart().getCurrentStep(),2)));

        // bus
        BUS.BusWriter from = c.instReg.getVMPart().getCurrentBusWriter();
        BUS.BusReader to = c.instReg.getVMPart().getCurrentBusReader();
        bus.set("value", new TextNode(toHex(c.instReg.getVMPart().getValueFromBus(),2)));
        bus.set("from", new TextNode(from==null ? "" : from.name()));
        bus.set("to", new TextNode(to==null ? "" : to.name()));

        // pc
        pc.set("jumptarget",new TextNode(toHex(c.pc.getVMPart().getJump_h(),2)+toHex(c.pc.getVMPart().getJump_l(),2)));
        pc.set("current",new TextNode(toHex(c.pc.getVMPart().getHighValue(),2)+toHex(c.pc.getVMPart().getLowValue(),2)));

        // mar
        mar.set("address", new TextNode(toHex(c.mar.getVMPart().getHighValue(),2)+toHex(c.mar.getVMPart().getLowValue(),2)));

        // reg
        reg.set("x", new TextNode(toHex(c.xreg.getVMPart().getValue(),2)));
        reg.set("y", new TextNode(toHex(c.yreg.getVMPart().getValue(),2)));
        reg.set("z", new TextNode(toHex(c.zreg.getVMPart().getValue(),2)));
        reg.set("t", new TextNode(toHex(c.tmp.getVMPart().getValue(),2)));

        // sp
        sp.set("address", new TextNode(toHex(c.sp.getVMPart().getHighValue(),2)+toHex(c.sp.getVMPart().getLowValue(),2)));

        // alu
        alu.set("a", new TextNode(toHex(c.alu.getVMPart().getA(),2)));
        alu.set("b", new TextNode(toHex(c.alu.getVMPart().getB(),2)));

        ObjectNode aluflags = objectMapper.createObjectNode();
        aluflags.set("c",new TextNode(c.alu.getVMPart().getC() ? "x" : " "));
        aluflags.set("v",new TextNode(c.alu.getVMPart().getV() ? "x" : " "));
        aluflags.set("z",new TextNode(c.alu.getVMPart().getZ() ? "x" : " "));
        aluflags.set("n",new TextNode(c.alu.getVMPart().getN() ? "x" : " "));
        alu.set("flags", aluflags);

        alu.set("operation", new TextNode(c.alu.getVMPart().getOperation().name()));

        ALU.Result res = c.alu.getVMPart().getResult();
        ObjectNode aluResult = objectMapper.createObjectNode();
        aluResult.set("value", new TextNode(toHex(res.outval,2)));
        aluResult.set("co", new TextNode(res.fc ? "x" : " "));
        alu.set("result", aluResult);

        // Signals
        Set<Signal> activeSignals = c.parts.stream().flatMap(p -> p.signals().stream().filter(c.instReg.getVMPart()::isActive)).collect(Collectors.toSet());
        ArrayNode signals = objectMapper.createArrayNode();
        activeSignals.forEach(s->signals.add(s.fullName()));
        result.set("signals",signals);

        result.set("out",out);
        result.set("instreg",instreg);
        result.set("bus",bus);
        result.set("pc",pc);
        result.set("mar",mar);
        result.set("reg",reg);
        result.set("sp",sp);
        result.set("alu",alu);
        return result;
    }
}
