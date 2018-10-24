package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.model.Computer;
import ivark.diycomputer.instructionset.Instruction;
import ivark.diycomputer.instructionset.InstructionSet;
import ivark.diycomputer.instructionset.Microcode;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

abstract class DecoderEEPromBase {
    Computer c = new Computer();
    InstructionSet instructionSet=new InstructionSet(c);

    DecoderEEPromBase() {}

    public String gen() {
        StringBuilder sb=new StringBuilder();
        sb.append("f\n");
        for (int i=0;i<128;i++) {
            sb.append("w "+toHex(i*16,4)+" ");
            Instruction instr=(i>=instructionSet.instructions.size())
                    ? new Instruction(c,"DUMMY","DUMMY","DUMMY")
                    : instructionSet.instructions.get(i);
            for (int s=0;s<16;s++) {
                int value= getDefaultValue();
                if (s<instr.steps.size()) {
                    Microcode step = instr.steps.get(s);
                    value=getValue(step);
                }
                sb.append(toHex(value,2));
            }
            sb.append("\n");
        }
        return sb.toString();
    }
    abstract int getDefaultValue();
    abstract int getValue(Microcode step);

    private String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length()-length);
    }

    protected void writeSpec(String spec) throws Exception {
        File tempFile = File.createTempFile("eeprom", "level1");
        try (PrintWriter pw=new PrintWriter(new FileWriter(tempFile))) {
            pw.print(spec);
            pw.flush();
        }
        try (SerialWriter sw=new SerialWriter()) {
            sw.writeToSerial(tempFile.getAbsolutePath());
        }
    }
}
