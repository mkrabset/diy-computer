package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.model.PC;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

/**
 * Created by ivark on 06.07.17.
 */
public class JumpCondEEPROM {
    static public void main(String...args) throws Exception {
        new JumpCondEEPROM();
    }

    public JumpCondEEPROM() throws Exception{
        writeSpec(getSpec());
    }

    private String getSpec() {
        StringBuffer sb=new StringBuffer();
        //sb.append("f\n");
        for (int i=0;i<256;i++) {
            if (i % 16==0) {
                sb.append("w "+toHex(i,4)+" ");
            }
            PC.JumpCondition cond=PC.JumpCondition.values()[~i & 0x0f];
            boolean z= (i & 0x10)==0x10;
            boolean n= (i & 0x20)==0x20;
            boolean c= (i & 0x40)==0x40;
            boolean v= (i & 0x80)==0x80;
            sb.append(cond.eval(z,n,c,v) ? "00" : "01");
            if (i % 16 ==15) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

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
