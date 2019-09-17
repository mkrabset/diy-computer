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
        for (Register r : Arrays.asList(c.xreg, c.yreg, c.zreg)) {
            instructions.add(createLoadAbsolute(r));
            instructions.add(createLoadIndirect(r));
            instructions.add(createStoreIndirect(c, r));
            instructions.add(createAddAbsolute(r));
            instructions.add(createSubAbsolute(r));
            instructions.add(createCmpAbsolute(r));

            instructions.add(createAddDirect(r));
            instructions.add(createSubDirect(r));
            instructions.add(createCmpDirect(r));

            instructions.add(createOpAbsolute(r, "AND", c.alu.andOpSignals));
            instructions.add(createOpAbsolute(r, "OR", c.alu.orOpSignals));
            instructions.add(createOpAbsolute(r, "XOR", c.alu.xorOpSignals));

            instructions.add(createOpDirect(r, "AND", c.alu.andOpSignals));
            instructions.add(createOpDirect(r, "OR", c.alu.orOpSignals));
            instructions.add(createOpDirect(r, "XOR", c.alu.xorOpSignals));

            instructions.add(createOpSingleOperand("ROL", c.alu.rolOpSignals, r, false));
            instructions.add(createOpSingleOperand("ROR", c.alu.rorOpSignals, r, true));
            instructions.add(createOpSingleOperand("NOT", c.alu.notOpSignals, r, true));

            for (Register r2 : Arrays.asList(c.xreg, c.yreg, c.zreg)) {
                if (r != r2 && r != c.zreg) {
                    instructions.add(createOp("ADD", c.alu.addOpSignals, r, r2, false));
                    instructions.add(createOp("SUB", c.alu.addOpSignals, r, r2, true));
                    instructions.add(createOp("AND", c.alu.addOpSignals, r, r2, false));
                    instructions.add(createOp("OR", c.alu.addOpSignals, r, r2, false));
                    instructions.add(createOp("XOR", c.alu.addOpSignals, r, r2, false));
                }
            }

            instructions.add(createInc(r));
            instructions.add(createDec(r));
        }
        instructions.add(createCmpRegs(c.xreg, c.yreg));
        instructions.add(createCmpRegs(c.xreg, c.zreg));
        instructions.add(createCmpRegs(c.yreg, c.zreg));
        instructions.add(createNop());
        instructions.add(createOpDirect("ROR", c.alu.rorOpSignals, true));
        instructions.add(createOpDirect("ROL", c.alu.rolOpSignals, false));
        instructions.add(createOpDirect("NOT", c.alu.notOpSignals, true));
        instructions.add(createIncDecDirect("INC", true));
        instructions.add(createIncDecDirect("DEC", false));

        instructions.add(createSec());
        instructions.add(createClc());


        instructions.add(createBranchDirect("JMP", PC.JumpCondition.UNCOND));
        for (PC.JumpCondition cond : PC.JumpCondition.values()) {
            if (cond != PC.JumpCondition.UNCOND && cond != PC.JumpCondition.NOJUMP) {
                instructions.add(createBranchDirect("B" + cond.name(), cond));
            }
        }

        instructions.add(createJumpIndirect());

        instructions.add(createJsrDirect());
        instructions.add(createJsrInDirect());
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
        addStep(i, c.mar.incSignal);
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
        addStep(i, r.busWrite(), ALU_A_IN, c.mar.incSignal);
        addStep(i, RAM_OUT, ALU_B_IN, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    // User needs to use SEC/SLC depending on borrow/noborrow (SEC for noborrow)
    private Instruction createSubAbsolute(Register r) {
        Instruction i = new Instruction(c, "SUB" + r.name, "SUB" + r.name + " #(..)", r.name + " := " + r.name + " - arg");
        addStep(i, r.busWrite(), ALU_A_IN, c.mar.incSignal);
        addStep(i, RAM_OUT, ALU_B_IN, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal, c.alu.invertBSignal);
        return i;
    }

    private Instruction createCmpAbsolute(Register r) {
        Instruction i = new Instruction(c, "CMP" + r.name, "CMP" + r.name + " #(..)", "flags := " + "cmp(" + r.name + ",arg)");
        addStep(i, r.busWrite(), ALU_A_IN, c.mar.incSignal);
        addStep(i, RAM_OUT, ALU_B_IN, c.alu.setCarrySignal, c.pc.incSignal);
        addStep(i, ZEROS, NO_INPUT, c.alu.addOpSignals, c.alu.updateFlagsSignal, c.alu.invertBSignal);
        return i;
    }

    private Instruction createCmpRegs(Register r1, Register r2) {
        Instruction i = new Instruction(c, "CMP" + r1.name, "CMP" + r1.name + "," + r2.name, "flags := " + "cmp(" + r1.name + "," + r2.name + ")");
        addStep(i, r1.busWrite(), ALU_A_IN);
        addStep(i, r2.busWrite(), ALU_B_IN, c.alu.setCarrySignal);
        addStep(i, ZEROS, NO_INPUT, c.alu.addOpSignals, c.alu.updateFlagsSignal, c.alu.invertBSignal);
        return i;
    }

    private Instruction createNop() {
        Instruction i = new Instruction(c, "NOP", "NOP", "No operation");
        return i;
    }

    private Instruction createAddDirect(Register r) {
        Instruction i = new Instruction(c, "ADD" + r.name, "ADD" + r.name + " \\$(....)", r.name + " := " + r.name + " + ram(arg)");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    // User needs to use SEC/SLC depending on borrow/noborrow (SEC for noborrow)
    private Instruction createSubDirect(Register r) {
        Instruction i = new Instruction(c, "SUB" + r.name, "SUB" + r.name + " \\$(....)", r.name + " := " + r.name + " - ram(arg)");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal, c.alu.invertBSignal);
        return i;
    }

    private Instruction createCmpDirect(Register r) {
        Instruction i = new Instruction(c, "CMP" + r.name, "CMP" + r.name + " \\$(....)", "flags := " + "cmp(" + r.name + ",ram(arg))");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN, c.alu.setCarrySignal);
        addStep(i, ZEROS, NO_INPUT, c.alu.addOpSignals, c.alu.updateFlagsSignal, c.alu.invertBSignal);
        return i;
    }

    private void argsToMar(Instruction i) {
        addStep(i, c.mar.incSignal);  // TODO: verify that this step is correct
        addStep(i, RAM_OUT, TMP_IN, c.mar.incSignal, c.pc.incSignal);       // Store hi value in tmp
        addStep(i, RAM_OUT, NO_INPUT, c.mar.loadLowSignal, c.pc.incSignal); // Load low value from ram
        addStep(i, TMP_OUT, NO_INPUT, c.mar.loadHighSignal);                // Load hi value from tmp
    }

    private Instruction createOp(String opName, Signal[] opSignals, Register r, Register r2, boolean subMode) {
        Instruction i = new Instruction(c, opName + r.name + r2.name, opName + r.name + " " + r2.name, r.name + " := " + r.name + " " + opName + " " + r2.name);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, r2.busWrite(), ALU_B_IN);
        if (subMode) {
            addStep(i, ALU_OUT, r.busRead(), opSignals, c.alu.updateFlagsSignal, c.alu.invertBSignal);
        } else {
            addStep(i, ALU_OUT, r.busRead(), opSignals, c.alu.updateFlagsSignal);
        }
        return i;
    }

    private Instruction createOpAbsolute(Register r, String opName, Signal[] aluOpSignals) {
        Instruction i = new Instruction(c, opName + r.name, opName + r.name + " #(..)", r.name + " := " + r.name + " " + opName + " arg");
        addStep(i, r.busWrite(), ALU_A_IN, c.mar.incSignal);
        addStep(i, RAM_OUT, ALU_B_IN, c.pc.incSignal);
        addStep(i, ALU_OUT, r.busRead(), aluOpSignals, c.alu.updateFlagsSignal);
        return i;
    }


    private Instruction createOpDirect(Register r, String opName, Signal[] aluOpSignals) {
        Instruction i = new Instruction(c, opName + r.name, opName + r.name + " \\$(....)", r.name + " := " + r.name + " " + opName + " ram(arg)");
        argsToMar(i);
        addStep(i, r.busWrite(), ALU_A_IN);
        addStep(i, RAM_OUT, ALU_B_IN);
        addStep(i, ALU_OUT, r.busRead(), aluOpSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createOpSingleOperand(String opName, Signal[] aluOpSignals, Register r, boolean useOperandB) {
        Instruction i = new Instruction(c, opName + r.name, opName + r.name, r.name + " := " + opName + "(" + r.name + ")");
        addStep(i, r.busWrite(), useOperandB ? ALU_B_IN : ALU_A_IN);
        addStep(i, ALU_OUT, r.busRead(), aluOpSignals, c.alu.updateFlagsSignal);
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
        addStep(i, ALU_OUT, r.busRead(), c.alu.addOpSignals, c.alu.updateFlagsSignal, c.alu.invertBSignal);
        return i;
    }

    private Instruction createOpDirect(String opName, Signal[] opSignals, boolean useOperandB) {
        Instruction i = new Instruction(c, opName, opName + " \\$(....)", "ram(arg):=" + opName + "(ram(arg))");
        argsToMar(i);
        addStep(i, RAM_OUT, useOperandB ? ALU_B_IN : ALU_A_IN);
        addStep(i, ALU_OUT, RAM_IN, opSignals, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createIncDecDirect(String opName, boolean inc) {
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
        addStep(i, c.mar.incSignal);
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

    private Instruction createJsrDirect() {
        Instruction i = new Instruction(c, "JSR", "JSR \\$(....)", "if (cond) pc=address, push returnaddress");

        addStep(i, c.mar.incSignal);  // TODO: verify that this should be done. Could be wrong all over the place

        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_H_IN, c.pc.incSignal, c.mar.incSignal, c.sp.cntSignal);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_L_IN, c.pc.incSignal, c.sp.cntSignal);

        // Stack pointer to mar
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);

        // Store return address on stack
        addStep(i, BusWriter.PC_OUT, BusReader.RAM_IN, c.mar.incSignal);
        addStep(i, c.mar.incSignal);
        addStep(i, BusWriter.PC_OUT, BusReader.RAM_IN, c.muxhat.pcOutLowSignal);

        // Jump to subroutine
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }

    private Instruction createJsrInDirect() {
        Instruction i = new Instruction(c, "JSR", "JSR \\(\\$(....)\\)", "if (cond) pc=ram($address), push returnaddress");
        argsToMar(i);

        // Copy jump address to jump address register
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_H_IN, c.mar.incSignal, c.sp.cntSignal);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_L_IN, c.sp.cntSignal);

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
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_H_IN, c.mar.incSignal, c.sp.cntSignal, c.sp.dirDownSignal);
        addStep(i, BusWriter.RAM_OUT, BusReader.PC_JMP_L_IN, c.sp.cntSignal, c.sp.dirDownSignal);

        // Jump back from subroutine
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }

    private Instruction createPush(Register r) {
        Instruction i = new Instruction(c, "PUSH" + r.name, "PUSH " + r.name, "push(" + r.name + ")");
        addStep(i, c.sp.cntSignal);

        // Move stack pointer to mar
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);

        addStep(i, r.busWrite(), BusReader.RAM_IN);
        return i;
    }

    private Instruction createPop(Register r) {
        Instruction i = new Instruction(c, "POP" + r.name, "POP " + r.name, r.name + "=pop()");

        // Move stack pointer to mar
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal, c.sp.cntSignal, c.sp.dirDownSignal);

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

        // Set initial address (step 3-4)
        addStep(i, BusWriter.ZEROS, NO_INPUT, c.mar.loadHighSignal);
        addStep(i, BusWriter.ZEROS, NO_INPUT, c.mar.loadLowSignal);

        // Inc address (step 5)
        addStep(i, c.mar.incSignal);

        // Load ram (step 6)
        addStep(i, BusWriter.ZEROS, BusReader.RAM_IN);

        // Reset (step 7)
        addStep(i, c.sp.resetSignal);


        return i;
    }

    private Instruction createResetPc() {
        Instruction i = new Instruction(c, "RESETPC", "RESETPC", "RESETPC");
        addStep(i, BusWriter.ZEROS, BusReader.TMP_IN);
        addStep(i, BusWriter.TMP_OUT, BusReader.PC_JMP_H_IN);
        addStep(i, BusWriter.TMP_OUT, BusReader.PC_JMP_L_IN);
        addStep(i, PC.JumpCondition.UNCOND.getConditionSignals(c.pc).stream().toArray(Signal[]::new));
        return i;
    }


    private void addStep(Instruction i, Signal... signals) {
        i.addStep(new Microcode().withActive(signals));
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
