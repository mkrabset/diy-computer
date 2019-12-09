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
import java.util.function.Function;
import java.util.stream.Collectors;

import static ivark.diycomputer.model.BUS.BusReader.*;
import static ivark.diycomputer.model.BUS.BusWriter.*;

public class DIYInstructionSet extends InstructionSet {

    public DIYInstructionSet(Computer c) {
        super(c);
    }

    @Override
    protected List<Instruction> getInstructions() {
        List<Instruction> instructions=new ArrayList<>();
        final List<Register> regs = Arrays.asList(c.xreg, c.yreg, c.zreg);
        final List<RegPair> regPairs = regs.stream()
                .flatMap(r1 -> regs.stream().map(r2 -> new RegPair(r1, r2)))
                .filter(rp -> rp.r1 != rp.r2)
                .collect(Collectors.toList());

        // Nop and halt
        instructions.add(createNop());
        instructions.add(createHalt());

        // Single register instructions
        instructions.addAll(genIns(regs, this::createLoadAbsolute));
        instructions.addAll(genIns(regs, this::createLoadIndirect));
        instructions.addAll(genIns(regs, this::createStoreIndirect));
        instructions.addAll(genIns(regs, this::createAddAbsolute));
        instructions.addAll(genIns(regs, this::createSubAbsolute));
        instructions.addAll(genIns(regs, this::createCmpAbsolute));

        instructions.addAll(genIns(regs, this::createAddIndirect));
        instructions.addAll(genIns(regs, this::createSubIndirect));
        instructions.addAll(genIns(regs, this::createCmpIndirect));

        instructions.addAll(genIns(regs, this::createRol));
        instructions.addAll(genIns(regs, this::createRor));
        instructions.addAll(genIns(regs, this::createNot));
        instructions.addAll(genIns(regs, this::createInc));
        instructions.addAll(genIns(regs, this::createDec));

        instructions.addAll(genIns(regs, r -> createAndOrXorAbsolute(r, "AND", c.alu.andOpSignals)));
        instructions.addAll(genIns(regs, r -> createAndOrXorAbsolute(r, "OR", c.alu.orOpSignals)));
        instructions.addAll(genIns(regs, r -> createAndOrXorAbsolute(r, "XOR", c.alu.xorOpSignals)));

        instructions.addAll(genIns(regs, r -> createAndOrXorIndirect(r, "AND", c.alu.andOpSignals)));
        instructions.addAll(genIns(regs, r -> createAndOrXorIndirect(r, "OR", c.alu.orOpSignals)));
        instructions.addAll(genIns(regs, r -> createAndOrXorIndirect(r, "XOR", c.alu.xorOpSignals)));

        instructions.addAll(genIns(regs, this::createPush));
        instructions.addAll(genIns(regs, this::createPop));
        instructions.add(createPushXYZ());
        instructions.add(createPopZYX());

        instructions.addAll(genIns(regs, r-> createOut(r, 0, BusReader.OUTPUT_0_IN)));
        instructions.addAll(genIns(regs, r-> createOut(r, 1, BusReader.OUTPUT_1_IN)));
        instructions.addAll(genIns(regs, r-> createOut(r, 2, BusReader.OUTPUT_2_IN)));
        instructions.addAll(genIns(regs, r-> createOut(r, 3, BusReader.OUTPUT_3_IN)));

        instructions.addAll(genIns(regs, r-> createIn(r, 0, BusWriter.INPUT_0_OUT)));
        instructions.addAll(genIns(regs, r-> createIn(r, 1, BusWriter.INPUT_1_OUT)));
        instructions.addAll(genIns(regs, r-> createIn(r, 2, BusWriter.INPUT_2_OUT)));
        instructions.addAll(genIns(regs, r-> createIn(r, 3, BusWriter.INPUT_3_OUT)));


        // Dual register instructions
        instructions.addAll(genIns2(regPairs, rp -> createLoadIndirectIndexed(rp.r1, rp.r2)));
        instructions.addAll(genIns2(regPairs, rp -> createStoreIndirectIndexed(rp.r1, rp.r2)));

        instructions.addAll(genIns2(regPairs, rp -> createOp2regs("ADD", c.alu.addOpSignals, rp.r1, rp.r2, false)));
        instructions.addAll(genIns2(regPairs, rp -> createOp2regs("SUB", c.alu.addOpSignals, rp.r1, rp.r2, true)));
        instructions.addAll(genIns2(regPairs, rp -> createOp2regs("AND", c.alu.andOpSignals, rp.r1, rp.r2, false)));
        instructions.addAll(genIns2(regPairs, rp -> createOp2regs("OR", c.alu.orOpSignals, rp.r1, rp.r2, false)));
        instructions.addAll(genIns2(regPairs, rp -> createOp2regs("XOR", c.alu.xorOpSignals, rp.r1, rp.r2, false)));
        instructions.addAll(genIns2(regPairs, rp -> createCmpRegs(rp.r1, rp.r2)));
        instructions.addAll(genIns2(regPairs, rp -> createTransferRegs(rp.r1, rp.r2)));

        // No register instructions
        instructions.add(createRolIndirect());
        instructions.add(createRorIndirect());
        instructions.add(createNotIndirect());
        instructions.add(createIncDecIndirect("INC", true));
        instructions.add(createIncDecIndirect("DEC", false));

        // Carry set/clear
        instructions.add(createSec());
        instructions.add(createClc());

        // Unconditional jumps
        instructions.add(createBranchDirect("JMP", PC.JumpCondition.UNCOND));
        instructions.add(createJumpIndirect());

        // Conditional jumps
        instructions.addAll(
                Arrays.stream(PC.JumpCondition.values())
                        .filter(cond -> (cond != PC.JumpCondition.UNCOND && cond != PC.JumpCondition.NOJUMP))
                        .map(cond -> createBranchDirect("B" + cond.name(), cond))
                        .collect(Collectors.toList())
        );

        // Subroutine jump/return
        instructions.add(createJsr(false));
        instructions.add(createJsr(true));
        instructions.add(createRts());

        // Dummy fill the rest
        for (int i = instructions.size(); i < 254; i++) {
            instructions.add(new Instruction(c, "dummy", "dummy", "dummy"));
        }

        // Instructions for the programmer
        instructions.add(createRamLoad());
        instructions.add(createResetPc());

        // Fill remaining steps with cont-signal
        for (Instruction ins : instructions) {
            ins.addContinueAfterCompletion();
        }

        // Set index value on instructions
        for (int i = 0; i < instructions.size(); i++) {
            instructions.get(i).num = i;
        }
        return instructions;
    }

    private List<Instruction> genIns(List<Register> regs, Function<Register, Instruction> generator) {
        return regs.stream().map(r -> generator.apply(r)).collect(Collectors.toList());
    }

    private List<Instruction> genIns2(List<RegPair> regPairs, Function<RegPair, Instruction> generator) {
        return regPairs.stream().map(r -> generator.apply(r)).collect(Collectors.toList());
    }



    private Instruction createCmpRegs(Register r1, Register r2) {
        Instruction i = new Instruction(c, "CMP" + r1.name, "CMP" + r1.name + "," + r2.name, "flags := " + "cmp(" + r1.name + "," + r2.name + ")");
        addStep(i, r1.busWrite(), ALU_A_IN);
        addStep(i, r2.busWrite(), ALU_B_IN, c.alu.setCarrySignal);
        addStep(i, BusWriter.ALU_OUT, BusReader.NO_INPUT, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
    }

    private Instruction createTransferRegs(Register r1, Register r2) {
        Instruction i = new Instruction(c, "T" + r1.name+r2.name, "T" + r1.name + r2.name, r2.name+" := " + r1.name);
        addStep(i, r1.busWrite(), r2.busRead());
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
        addStep(i, BusWriter.ALU_OUT, BusReader.NO_INPUT, c.alu.addOpSignals, c.alu.invertBSignal, c.alu.updateFlagsSignal);
        return i;
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
        addStep(i, BusWriter.PC_OUT, BusReader.RAM_IN);
        addStep(i, FLOATING, NO_INPUT);   // Extra empty step after RAM write before modifying MAR
        addStep(i, c.mar.incSignal);
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

    private Instruction createPushXYZ() {
        Instruction i = new Instruction(c, "PUSHXYZ", "PUSHXYZ", "push([x,y,z])");
        addStep(i, c.sp.cntSignal, c.sp.dirDownSignal); // decrease sp
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);  // sp->mar
        addStep(i, c.xreg.busWrite(), BusReader.RAM_IN);  // copy x to stack
        addStep(i, c.sp.cntSignal, c.sp.dirDownSignal); // decrease sp
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);  // sp->mar
        addStep(i, c.yreg.busWrite(), BusReader.RAM_IN);  // copy x to stack
        addStep(i, c.sp.cntSignal, c.sp.dirDownSignal); // decrease sp
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal);  // sp->mar
        addStep(i, c.zreg.busWrite(), BusReader.RAM_IN);  // copy x to stack
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

    private Instruction createPopZYX() {
        Instruction i = new Instruction(c, "POPZYX", "POPZYX", "[y,z,x] = [pop(),pop(),pop()]");
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal, c.sp.cntSignal); // sp->mar, sp++
        addStep(i, BusWriter.RAM_OUT, c.zreg.busRead()); // ram to z
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal, c.sp.cntSignal); // sp->mar, sp++
        addStep(i, BusWriter.RAM_OUT, c.yreg.busRead()); // ram to y
        addStep(i, c.mar.loadHighSignal, c.mar.loadLowSignal, c.mux.selectStackPointerSignal, c.sp.cntSignal); // sp->mar, sp++
        addStep(i, BusWriter.RAM_OUT, c.xreg.busRead()); // ram to x
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
}
