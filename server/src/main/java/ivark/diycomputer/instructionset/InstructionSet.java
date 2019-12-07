package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.*;

import java.util.ArrayList;
import java.util.List;

import static ivark.diycomputer.model.BUS.BusReader.*;
import static ivark.diycomputer.model.BUS.BusReader.ALU_B_IN;
import static ivark.diycomputer.model.BUS.BusWriter.*;

public abstract class InstructionSet {
    public final List<Instruction> instructions;
    protected final Computer c;

    public InstructionSet(Computer c) {
        this.c = c;
        this.instructions=getInstructions();

        checkRamWrite(instructions);
        flagWriteCheck(instructions);
    }

    public void dump() {
        System.out.println("Instruction set:");
        System.out.println("-----------------");
        System.out.println(toString());
        System.out.println("\n\n");
        System.out.println("Instruction set summary:");
        System.out.println("-------------------------");
        System.out.println(summary());
    }

    abstract protected List<Instruction> getInstructions();

    protected Instruction createLoadAbsolute(Register r) {
        Instruction i = new Instruction(c, "LD" + r.name, "LD" + r.name + " #(..)", r.name + " := arg");
        addStep(i, RAM_OUT, r.busRead(), c.pc.incSignal);
        return i;
    }

    protected Instruction createLoadIndirect(Register r) {
        Instruction i = new Instruction(c, "LD" + r.name, "LD" + r.name + " \\$(....)", r.name + " := ram(arg)");
        argsToMar(i);
        addStep(i, RAM_OUT, r.busRead());
        return i;
    }

    protected Instruction createLoadIndirectIndexed(Register r, Register ri) {
        Instruction i = new Instruction(c, "LD" + r.name, "LD" + r.name + " \\$(....),"+ri.name, r.name + " := ram(arg+"+ri.name+")");
        argsToMar(i);
        addStep(i, ri.busWrite(), MAR_OFFSET_IN);
        addStep(i, RAM_OUT, r.busRead());
        return i;
    }

    protected Instruction createStoreIndirect(Register r) {
        Instruction i = new Instruction(c, "ST" + r.name, "ST" + r.name + " \\$(....)", "ram(arg) := "+r.name);
        argsToMar(i);
        addStep(i, r.busWrite(), RAM_IN);
        return i;
    }

    protected Instruction createStoreIndirectIndexed(Register r, Register ri) {
        Instruction i = new Instruction(c, "ST" + r.name, "ST" + r.name + " \\$(....),"+ri.name, "ram(arg+"+ri.name+") := "+r.name);
        argsToMar(i);
        addStep(i, ri.busWrite(), MAR_OFFSET_IN);
        addStep(i, r.busWrite(), RAM_IN);
        return i;
    }

    protected Instruction createAddAbsolute(Register r) {
        Instruction i = new Instruction(c, "ADD" + r.name, "ADD" + r.name + " #(..)", r.name + " := " + r.name + " + arg");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.mar.incSignal, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    // User needs to use SEC/SLC depending on borrow/noborrow (SEC for noborrow)
    protected Instruction createSubAbsolute(Register r) {
        Instruction i = new Instruction(c, "SUB" + r.name, "SUB" + r.name + " #(..)", r.name + " := " + r.name + " + arg");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.mar.incSignal, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    protected Instruction createCmpAbsolute(Register r) {
        Instruction i = new Instruction(c, "CMP" + r.name, "CMP" + r.name + " #(..)", "flags := " + "cmp(" + r.name + ",arg)");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.alu.setCarrySignal, c.mar.incSignal, c.pc.incSignal);
        addStep(i, BUS.BusWriter.ALU_OUT, BUS.BusReader.NO_INPUT, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    protected void argsToMar(Instruction i) {
        addStep(i, RAM_OUT, TMP_IN, c.mar.incSignal, c.pc.incSignal);       // Store hi value in tmp
        addStep(i, RAM_OUT, NO_INPUT, c.mar.loadLowSignal, c.pc.incSignal); // Load low value from ram
        addStep(i, TMP_OUT, NO_INPUT, c.mar.loadHighSignal);                // Load hi value from tmp
    }

    protected Instruction createRamLoad() {
        Instruction i = new Instruction(c, "RAMLOAD", "RAMLOAD", "RAMLOAD");
        addStep(i, ZEROS, MAR_OFFSET_IN);                               // Clear mar offset
        addStep(i, FLOATING, NO_INPUT, c.mar.loadHighSignal);           // Load MAR high from programmer
        addStep(i, FLOATING, NO_INPUT, c.mar.loadLowSignal);            // Load MAR low from programmer
        addStep(i, FLOATING, NO_INPUT, c.mar.incSignal);                // Increase MAR
        addStep(i, FLOATING, BUS.BusReader.RAM_IN);                         // Write to RAM from programmer. Don't do twice in a row
        addStep(i, FLOATING, NO_INPUT, c.sp.resetSignal);
        return i;
    }

    protected Instruction createResetPc() {
        Instruction i = new Instruction(c, "RESETPC", "RESETPC", "RESETPC");
        addStep(i, ZEROS, MAR_OFFSET_IN, c.sp.resetSignal);
        addStep(i, ZEROS, X_IN, c.mar.loadHighSignal);
        addStep(i, ZEROS, Y_IN, c.mar.loadLowSignal);
        addStep(i, ZEROS, Z_IN);
        addStep(i, ZEROS, TMP_IN);
        addStep(i, ZEROS, ALU_A_IN);
        addStep(i, ZEROS, ALU_B_IN, c.alu.clearCarrySignal);
        addStep(i, BUS.BusWriter.ALU_OUT, BUS.BusReader.NO_INPUT, c.alu.addOpSignals, c.alu.clearCarrySignal, c.alu.flrSignal, c.alu.updateFlagsSignal);
        addStep(i, ZEROS, PC_JMP_H_IN);
        addStep(i, ZEROS, PC_JMP_L_IN);
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }


    protected void addStep(Instruction i, Signal... signals) {
        i.addStep(new Microcode().withActive(signals));
    }

    protected void addStep(Instruction i, BUS.BusWriter toBus, BUS.BusReader fromBus, Signal... sig) {
        i.addStep(new Microcode().bus(toBus, fromBus).withActive(sig));
    }

    protected void addStep(Instruction i, BUS.BusWriter toBus, BUS.BusReader fromBus, Signal[] aluOp, Signal... sig) {
        i.addStep(new Microcode().bus(toBus, fromBus).withActive(aluOp).withActive(sig));
    }

    protected String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

    public String summary() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < instructions.size(); i++) {
            if (!instructions.get(i).isDummy()) {
                Instruction ins = instructions.get(i);
                sb.append("#" + toHex(i, 2) + "\t\t"
                        + ins.pattern + "\t\t"
                        + ins.description
                        + "\t\t" + ins.numSteps());
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    // Ensure that we don't modify MAR during ram write, and not have 2 consecutive ramwrite-steps
    public void checkRamWrite(List<Instruction> instructions) {
        for (Instruction i : instructions) {
            try {
                i.checkRamWrite();
            } catch (Exception e) {
                throw new RuntimeException("Ram write check failed for instruction: \n" + i, e);
            }
        }
    }

    // Check that we always enables alu out when updating flags
    public void flagWriteCheck(List<Instruction> instructions) {
        for (Instruction i : instructions) {
            try {
                i.checkFlagWrite();
            } catch (Exception e) {
                throw new RuntimeException("Ram write check failed for instruction: \n" + i, e);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < instructions.size(); i++) {
            if (!instructions.get(i).isDummy()) {
                sb.append("Instruction #" + toHex(i, 2) + " (" + i + ")\n");
                sb.append(instructions.get(i).toString());
                sb.append("\n\n");
            }
        }
        return sb.toString();
    }

    protected class RegPair {
        final public Register r1;
        final public Register r2;

        public RegPair(Register r1, Register r2) {
            this.r1 = r1;
            this.r2 = r2;
        }
    }
}
