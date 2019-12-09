package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.BUS;
import ivark.diycomputer.model.Computer;

import java.util.Arrays;
import java.util.List;

public class MOS6502InstructionSet extends InstructionSet {

    public static void main(String...args) {
        Computer c = new Computer();
        MOS6502InstructionSet is = new MOS6502InstructionSet(c);
        is.dump();
    }

    public MOS6502InstructionSet(Computer c) {
        super(c);
    }

    @Override
    protected List<Instruction> getInstructions() {
        Instruction[] instructions=new Instruction[256];

        instructions[0x00]=null; // BRK
        instructions[0x01]=ora(); // ORA X,ind
        instructions[0x02]=null; // ---
        instructions[0x03]=null; // ---
        instructions[0x04]=null; // ---
        instructions[0x05]=null; // ORA zpg
        instructions[0x06]=null; // ASL zpg
        instructions[0x07]=null; // ---
        instructions[0x08]=null; // PHP impl
        instructions[0x09]=null; // ORA #
        instructions[0x0a]=null; // ASL A
        instructions[0x0b]=null; // ---
        instructions[0x0c]=null; // ---
        instructions[0x0d]=null; // ORA
        instructions[0x0e]=null; // abs
        instructions[0x0f]=null; // ASL abs


        instructions[0xfe]=createRamLoad();
        instructions[0xff]=createResetPc();

        for (int i=0;i<0xff;i++) {
            if (instructions[i]==null) {
                instructions[i]=new Instruction(c, "dummy", "dummy", "dummy","na");
            }
            instructions[i].num=i;
        }

        return Arrays.asList(instructions);
    }

    private Instruction ora() {
        Instruction i = new Instruction(c, "ORA", "ORA \\(\\$..,X\\)", "A := A & mem(mem(arg+x))","indirect indexed");
        addXInd2MAR(i);
        addStep(i, BUS.BusWriter.RAM_OUT, BUS.BusReader.ALU_A_IN);
        addStep(i, BUS.BusWriter.Z_OUT, BUS.BusReader.ALU_B_IN);
        addStep(i,BUS.BusWriter.ALU_OUT, BUS.BusReader.Z_IN, c.alu.orOpSignals, c.alu.updateFlagsSignal, c.pc.incSignal);
        return i;
    }

    private void addXInd2MAR(Instruction i) {
        addStep(i, BUS.BusWriter.RAM_OUT, BUS.BusReader.NO_INPUT, c.mar.loadLowSignal);                 // Load arg into mar low
        addStep(i, BUS.BusWriter.ZEROS, BUS.BusReader.NO_INPUT, c.mar.loadHighSignal);                  // Load zero into mar high
        addStep(i, BUS.BusWriter.X_OUT, BUS.BusReader.MAR_OFFSET_IN, c.mar.loadHighSignal);             // Load X into mar offset
        addStep(i, BUS.BusWriter.RAM_OUT, BUS.BusReader.TMP_IN, c.mar.incSignal);                       // Load low address value into tmp
        addStep(i, BUS.BusWriter.RAM_OUT, BUS.BusReader.NO_INPUT, c.mar.loadHighSignal);                // Load high address value into mar high
        addStep(i, BUS.BusWriter.TMP_OUT, BUS.BusReader.NO_INPUT, c.mar.loadLowSignal);                 // Load low address value into mar low (from tmp)
        addStep(i, BUS.BusWriter.ZEROS, BUS.BusReader.MAR_OFFSET_IN, c.mar.loadHighSignal);             // Load zero into mar high
    }



}
