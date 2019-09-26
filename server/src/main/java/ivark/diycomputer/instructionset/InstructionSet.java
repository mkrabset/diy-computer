package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.Computer;
import ivark.diycomputer.model.BUS.BusReader;
import ivark.diycomputer.model.BUS.BusWriter;
import ivark.diycomputer.model.PC;
import ivark.diycomputer.model.Register;
import ivark.diycomputer.model.Signal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static ivark.diycomputer.model.BUS.BusReader.*;
import static ivark.diycomputer.model.BUS.BusWriter.*;

public class InstructionSet {
    public final List<Instruction> instructions = new ArrayList<>();
    private Computer c;

    public InstructionSet(Computer c) {
        this.c = c;
        instructions.add(createNop());
        for (Register r : Arrays.asList(c.xreg, c.yreg, c.zreg)) {
            instructions.add(createLoadAbsolute(r));
            instructions.add(createLoadIndirect(r));
            instructions.add(createStoreIndirect(c, r));
            instructions.add(createAddAbsolute(r));
            instructions.add(createSubAbsolute(r));
            instructions.add(createCmpAbsolute(r));

            instructions.add(createAddIndirect(r));
            instructions.add(createSubIndirect(r));
            instructions.add(createCmpIndirect(r));

            instructions.add(createAndOrXorAbsolute(r, "AND", c.alu.andOpSignals));
            instructions.add(createAndOrXorAbsolute(r, "OR", c.alu.orOpSignals));
            instructions.add(createAndOrXorAbsolute(r, "XOR", c.alu.xorOpSignals));

            instructions.add(createAndOrXorIndirect(r, "AND", c.alu.andOpSignals));
            instructions.add(createAndOrXorIndirect(r, "OR", c.alu.orOpSignals));
            instructions.add(createAndOrXorIndirect(r, "XOR", c.alu.xorOpSignals));

            instructions.add(createRol(r));
            instructions.add(createRor(r));
            instructions.add(createNot(r));

            instructions.add(createInc(r));
            instructions.add(createDec(r));

            for (Register r2 : Arrays.asList(c.xreg, c.yreg, c.zreg)) {
                if (r != r2 && r != c.zreg) {
                    instructions.add(createOp2regs("ADD", c.alu.addOpSignals, r, r2, false));
                    instructions.add(createOp2regs("SUB", c.alu.addOpSignals, r, r2, true));
                    instructions.add(createOp2regs("AND", c.alu.addOpSignals, r, r2, false));
                    instructions.add(createOp2regs("OR", c.alu.addOpSignals, r, r2, false));
                    instructions.add(createOp2regs("XOR", c.alu.addOpSignals, r, r2, false));
                }
            }
        }
        instructions.add(createCmpRegs(c.xreg, c.yreg));
        instructions.add(createCmpRegs(c.xreg, c.zreg));
        instructions.add(createCmpRegs(c.yreg, c.xreg));
        instructions.add(createCmpRegs(c.yreg, c.zreg));
        instructions.add(createCmpRegs(c.zreg, c.xreg));
        instructions.add(createCmpRegs(c.zreg, c.yreg));

        instructions.add(createRolIndirect());
        instructions.add(createRorIndirect());
        instructions.add(createNotIndirect());
        instructions.add(createIncDecIndirect("INC", true));
        instructions.add(createIncDecIndirect("DEC", false));

        instructions.add(createSec());
        instructions.add(createClc());


        instructions.add(createBranchDirect("JMP", PC.JumpCondition.UNCOND));
        for (PC.JumpCondition cond : PC.JumpCondition.values()) {
            if (cond != PC.JumpCondition.UNCOND && cond != PC.JumpCondition.NOJUMP) {
                instructions.add(createBranchDirect("B" + cond.name(), cond));
            }
        }

        instructions.add(createJumpIndirect());

        instructions.add(createJsr(false));
        instructions.add(createJsr(true));
        instructions.add(createRts());

        for (Register r : Arrays.asList(c.xreg, c.yreg, c.zreg)) {
            instructions.add(createPush(r));
            instructions.add(createPop(r));
        }

        instructions.add(createHalt());

        for (Register r : Arrays.asList(c.xreg, c.yreg)) {
            instructions.add(createOut(r, 0, BusReader.OUTPUT_0_IN));
            instructions.add(createOut(r, 1, BusReader.OUTPUT_1_IN));
            instructions.add(createOut(r, 2, BusReader.OUTPUT_2_IN));
        }

        for (Register r : Arrays.asList(c.xreg)) {
            instructions.add(createIn(r, 0, BusWriter.INPUT_0_OUT));
            instructions.add(createIn(r, 1, BusWriter.INPUT_1_OUT));
        }

        instructions.add(createRamLoad());
        instructions.add(createResetPc());

        for (int i=instructions.size();i<256;i++) {
            instructions.add(new Instruction(c,"dummy","dummy", "dummy"));
        }

        for (Instruction ins : instructions) {
            ins.addContinueAfterCompletion();
        }



        for (int i = 0; i < instructions.size(); i++) {
            instructions.get(i).num = i;
        }
        System.out.println("RAM Write check:");
        checkRamWrite();

    }


    private Instruction createLoadAbsolute(Register r) {
        Instruction i = new Instruction(c, "LD" + r.name, "LD" + r.name + " #(..)", r.name + " := arg");
        addStep(i, RAM_OUT, r.busRead(), c.pc.incSignal);
        return i;
    }

    private Instruction createLoadIndirect(Register r) {
        Instruction i = new Instruction(c, "LD" + r.name, "LD" + r.name + " \\$(....)", r.name + " := ram(arg)");
        argsToMar(i);
        addStep(i, RAM_OUT, r.busRead());
        return i;
    }

    private Instruction createStoreIndirect(Computer c, Register r) {
        Instruction i = new Instruction(c, "ST" + r.name, "ST" + r.name + " \\$(....)", r.name + " -> ram(arg)");
        argsToMar(i);
        addStep(i, r.busWrite(), RAM_IN);
        return i;
    }

    private Instruction createAddAbsolute(Register r) {
        Instruction i = new Instruction(c, "ADD" + r.name, "ADD" + r.name + " #(..)", r.name + " := " + r.name + " + arg");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.mar.incSignal, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    // User needs to use SEC/SLC depending on borrow/noborrow (SEC for noborrow)
    private Instruction createSubAbsolute(Register r) {
        Instruction i = new Instruction(c, "SUB" + r.name, "SUB" + r.name + " #(..)", r.name + " := " + r.name + " + arg");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.mar.incSignal, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createCmpAbsolute(Register r) {
        Instruction i = new Instruction(c, "CMP" + r.name, "CMP" + r.name + " #(..)", "flags := " + "cmp(" + r.name + ",arg)");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.alu.setCarrySignal, c.mar.incSignal, c.pc.incSignal);
        addStep(i, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createCmpRegs(Register r1, Register r2) {
        Instruction i = new Instruction(c, "CMP" + r1.name, "CMP" + r1.name + "," + r2.name, "flags := " + "cmp(" + r1.name + "," + r2.name + ")");
        addStep(i, r1.busWrite(), ALU_A_IN);
        addStep(i, r2.busWrite(), ALU_B_IN, c.alu.setCarrySignal);
        addStep(i, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createNop() {
        Instruction i = new Instruction(c, "NOP", "NOP", "No operation");
        return i;
    }

    private Instruction createAddIndirect(Register r) {
        Instruction i = new Instruction(c, "ADD" + r.name, "ADD" + r.name + " \\$(....)", r.name + " := " + r.name + " + ram(arg)");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    // User needs to use SEC/SLC depending on borrow/noborrow (SEC for noborrow)
    private Instruction createSubIndirect(Register r) {
        Instruction i = new Instruction(c, "SUB" + r.name, "SUB" + r.name + " \\$(....)", r.name + " := " + r.name + " - ram(arg)");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createCmpIndirect(Register r) {
        Instruction i = new Instruction(c, "CMP" + r.name, "CMP" + r.name + " \\$(....)", "flags := " + "cmp(" + r.name + ",ram(arg))");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.alu.setCarrySignal);
        addStep(i, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private void argsToMar(Instruction i) {
        addStep(i, RAM_OUT, TMP_IN, c.mar.incSignal, c.pc.incSignal);       // Store hi value in tmp
        addStep(i, RAM_OUT, NO_INPUT, c.mar.loadLowSignal, c.pc.incSignal); // Load low value from ram
        addStep(i, TMP_OUT, NO_INPUT, c.mar.loadHighSignal);                // Load hi value from tmp
    }

    private Instruction createAndOrXorAbsolute(Register r, String opName, Signal[] aluOpSignals) {
        Instruction i = new Instruction(c, opName + r.name, opName + r.name + " #(..)", r.name + " := " + r.name + " " + opName + " arg");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), aluOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createAndOrXorIndirect(Register r, String opName, Signal[] aluOpSignals) {
        Instruction i = new Instruction(c, opName + r.name, opName + r.name + " \\$(....)", r.name + " := " + r.name + " " + opName + " ram(arg)");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), aluOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createRol(Register r) {
        Instruction i = new Instruction(c, "ROL" + r.name, "ROL" + r.name, r.name + " := ROL(" + r.name + ")");
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, r.busWrite(), ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createRor(Register r) {
        Instruction i = new Instruction(c, "ROR" + r.name, "ROR" + r.name, r.name + " := ROR(" + r.name + ")");
        addStep(i, r.busWrite(), ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), c.alu.rorOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createNot(Register r) {
        Instruction i = new Instruction(c, "NOT" + r.name, "NOT" + r.name, r.name + " := NOT(" + r.name + ")");
        addStep(i, ZEROS, ALU_A_IN);
        addStep(i, r.busWrite(), ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createInc(Register r) {
        Instruction i = new Instruction(c, "INC" + r.name, "INC " + r.name, r.name + " := " + r.name + " + 1 ");
        addStep(i, BusWriter.ZEROS, BusReader.ALU_B_IN);
        addStep(i, r.busWrite(), ALU_A_IN, c.alu.setCarrySignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createDec(Register r) {
        Instruction i = new Instruction(c, "DEC" + r.name, "DEC " + r.name, r.name + " := " + r.name + " - 1 ");
        addStep(i, BusWriter.ZEROS, BusReader.ALU_B_IN);
        addStep(i, r.busWrite(), ALU_A_IN, c.alu.clearCarrySignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createOp2regs(String opName, Signal[] opSignals, Register r, Register r2, boolean subMode) {
        Instruction i = new Instruction(c, opName + r.name + r2.name, opName + r.name + " " + r2.name, r.name + " := " + r.name + " " + opName + " " + r2.name);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, r2.busWrite(), ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), opSignals, c.alu.updateFlagsSignal);
        if (subMode) {
            i.steps.get(i.steps.size() - 1).activeSignals.add(c.alu.invertBSignal);
        }
        return i;
    }


    private Instruction createRolIndirect() {
        Instruction i = new Instruction(c, "ROL", "ROL \\$(....)", "ram(arg):=ROL(ram(arg))");
        argsToMar(i);
        addStep(i, RAM_OUT, ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, RAM_IN, c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createRorIndirect() {
        Instruction i = new Instruction(c, "ROR", "ROR \\$(....)", "ram(arg):=ROR(ram(arg))");
        argsToMar(i);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, RAM_IN, c.alu.rorOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createNotIndirect() {
        Instruction i = new Instruction(c, "NOT", "NOT \\$(....)", "ram(arg):=NOT(ram(arg))");
        argsToMar(i);
        addStep(i, ZEROS, ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.alu.clearCarrySignal);
        addStep(i, ALU_OUT, RAM_IN, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createIncDecIndirect(String opName, boolean inc) {
        Instruction i = new Instruction(c, opName, opName + " \\$(....)", "ram(arg):=" + opName + "(ram(arg))");
        argsToMar(i);
        addStep(i, BusWriter.ZEROS, BusReader.ALU_B_IN);
        if (inc) {
            addStep(i, RAM_OUT, ALU_A_IN, c.alu.setCarrySignal);
            addStep(i, ALU_OUT, RAM_IN, c.alu.addOpSignals, c.alu.updateFlagsSignal);
        } else {
            addStep(i, RAM_OUT, ALU_A_IN, c.alu.clearCarrySignal);
            addStep(i, ALU_OUT, RAM_IN, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        }
        return i;
    }

    private Instruction createSec() {
        Instruction i = new Instruction(c, "SEC", "SEC", "flags.c=true");
        addStep(i, c.alu.setCarrySignal);
        return i;
    }

    private Instruction createClc() {
        Instruction i = new Instruction(c, "CLC", "CLC", "flags.c=false");
        addStep(i, c.alu.clearCarrySignal);
        return i;
    }

    private Instruction createBranchDirect(String opName, PC.JumpCondition jumpCond) {
        Instruction i = new Instruction(c, opName, opName + " \\$(....)", "if (" + jumpCond.descr + ") pc=arg");
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_H_IN, c.pc.incSignal, c.mar.incSignal);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_L_IN, c.pc.incSignal);
        addStep(i, jumpCond.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }

    private Instruction createJumpIndirect() {
        Instruction i = new Instruction(c, "JMP", "JMP \\(\\$(....)\\)", "pc=ram(arg)");
        argsToMar(i);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_H_IN, c.mar.incSignal);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_L_IN);
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }

    private Instruction createJsr(boolean indirect) {
        Instruction i = indirect
                ? new Instruction(c, "JSR", "JSR \\(\\$(....)\\)", "if (cond) pc=ram($address), push returnaddress")
                : new Instruction(c, "JSR", "JSR \\$(....)", "if (cond) pc=address, push returnaddress");
        if (indirect) {
            argsToMar(i);
        }
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_H_IN, c.pc.incSignal, c.mar.incSignal, c.sp.cntSignal, c.sp.dirDownSignal);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_L_IN, c.pc.incSignal, c.sp.cntSignal, c.sp.dirDownSignal);

        // Stack pointer to mar
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);

        // Store return address on stack
        addStep(i, BusWriter.PC_OUT, BusReader.RAM_IN, c.mar.incSignal);
        addStep(i, BusWriter.PC_OUT, BusReader.RAM_IN, c.muxhat.pcOutLowSignal);

        // Jump to subroutine
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }

    private Instruction createRts() {
        Instruction i = new Instruction(c, "RTS", "RTS", "pc=pop()");

        // Move stack pointer to mar
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);

        // Pop return address from stack into jump address register
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_H_IN, c.mar.incSignal, c.sp.cntSignal);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_L_IN, c.sp.cntSignal);

        // Jump back from subroutine
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }

    private Instruction createPush(Register r) {
        Instruction i = new Instruction(c, "PUSH" + r.name, "PUSH " + r.name, "push(" + r.name + ")");
        addStep(i, c.sp.cntSignal, c.sp.dirDownSignal); // decrease sp

        // Move stack pointer to mar
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);

        // Copy value to stack
        addStep(i, r.busWrite(), BusReader.RAM_IN);
        return i;
    }

    private Instruction createPop(Register r) {
        Instruction i = new Instruction(c, "POP" + r.name, "POP " + r.name, r.name + "=pop()");

        // Move stack pointer to mar and increase sp
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal, c.sp.cntSignal);

        // Copy value from stack
        addStep(i, BusWriter.RAM_OUT, r.busRead());
        return i;
    }

    private Instruction createOut(Register r, int port, BusReader in) {
        Instruction i = new Instruction(c, "OUT" + port, "OUT" + port + " " + r.name, "out#" + port + " := " + r.name);
        addStep(i, r.busWrite(), in);
        return i;
    }

    private Instruction createIn(Register r, int port, BusWriter out) {
        Instruction i = new Instruction(c, "IN" + port, "IN" + port + " " + r.name, r.name + " := in#" + port);
        addStep(i, out, r.busRead());
        return i;
    }

    private Instruction createHalt() {
        Instruction i = new Instruction(c, "HLT", "HLT", "halt");
        addStep(i, c.clock.haltSignal);
        return i;
    }

    private Instruction createRamLoad() {
        Instruction i = new Instruction(c, "RAMLOAD", "RAMLOAD", "RAMLOAD");
        addStep(i, ZEROS, MAR_OFFSET_IN);                               // Clear mar offset
        addStep(i, FLOATING, NO_INPUT, c.mar.loadHighSignal);           // Load MAR high from programmer
        addStep(i, FLOATING, NO_INPUT, c.mar.loadLowSignal);            // Load MAR low from programmer
        addStep(i, FLOATING, NO_INPUT, c.mar.incSignal);                // Increase MAR
        addStep(i, FLOATING, BusReader.RAM_IN);                         // Write to RAM from programmer. Don't do twice in a row
        addStep(i, FLOATING, NO_INPUT, c.sp.resetSignal);
        return i;
    }

    private Instruction createResetPc() {
        Instruction i = new Instruction(c, "RESETPC", "RESETPC", "RESETPC");
        addStep(i, ZEROS, MAR_OFFSET_IN, c.sp.resetSignal);
        addStep(i, ZEROS, X_IN, c.mar.loadHighSignal);
        addStep(i, ZEROS, Y_IN, c.mar.loadLowSignal);
        addStep(i, ZEROS, Z_IN);
        addStep(i, ZEROS, TMP_IN);
        addStep(i, ZEROS, ALU_A_IN);
        addStep(i, ZEROS, ALU_B_IN, c.alu.clearCarrySignal);
        addStep(i, ZEROS, NO_INPUT, c.alu.addOpSignals, c.alu.clearCarrySignal, c.alu.flrSignal, c.alu.updateFlagsSignal);
        addStep(i, ZEROS, PC_JMP_H_IN);
        addStep(i, ZEROS, PC_JMP_L_IN);
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }


    private void addStep(Instruction i, Signal... signals) {
        i.addStep(new Microcode().withActive(signals));
    }

    private void addStep(Instruction i, Signal[] aluOp, Signal... signals) {
        i.addStep(new Microcode().withActive(aluOp).withActive(signals));
    }

    private void addStep(Instruction i, BusWriter toBus, BusReader fromBus, Signal... sig) {
        i.addStep(new Microcode().bus(toBus, fromBus).withActive(sig));
    }

    private void addStep(Instruction i, BusWriter toBus, BusReader fromBus, Signal[] aluOp, Signal... sig) {
        i.addStep(new Microcode().bus(toBus, fromBus).withActive(aluOp).withActive(sig));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < instructions.size(); i++) {
            sb.append("Instruction #" + toHex(i, 2) + " (" + i + ")\n");
            sb.append(instructions.get(i).toString());
            sb.append("\n\n");
        }
        return sb.toString();
    }

    private String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

    public String summary() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < instructions.size(); i++) {
            sb.append(i + "= #" + toHex(i, 2) + "\t\t" + instructions.get(i).pattern + "\t\t" + instructions.get(i).description + "\t\t" + instructions.get(i).steps.size());
            sb.append("\n");
        }
        return sb.toString();
    }

    public void checkRamWrite() {
        for (Instruction i : instructions) {
            i.checkRamWrite();
        }
    }
}
