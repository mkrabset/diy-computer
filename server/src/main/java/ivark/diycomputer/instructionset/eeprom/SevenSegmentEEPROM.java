package ivark.diycomputer.instructionset.eeprom;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.PrintWriter;

/**
 * Created by ivark on 18.10.17.
 */
public class SevenSegmentEEPROM {

    static final int[] data={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71};
    static final int MODULO=16;

    static public void main(String...args) throws Exception{



        // Invert for common cathode
        for (int i=0;i<data.length;i++) {
            data[i]=~data[i];
        }


        StringBuilder pw=new StringBuilder();

        for (int h=0;h<16;h++) {
            pw.append("w "+toHex(h*16+768,4));
            for (int l=0;l<16;l++) {
                int val=h*16+l;
                pw.append(" "+toHex(flip(data[val % MODULO]),2));
            }
            pw.append("\n");
        }

        for (int h=0;h<16;h++) {
            pw.append("w "+toHex(h*16+512,4));
            for (int l=0;l<16;l++) {
                int val=h*16+l;
                pw.append(" "+toHex(flip(data[(val/MODULO) % MODULO]),2));
            }
            pw.append("\n");
        }

        for (int h=0;h<16;h++) {
            pw.append("w "+toHex(h*16+256,4));
            for (int l=0;l<16;l++) {
                int val=h*16+l;
                pw.append(" "+toHex(flip(data[(val/(MODULO*MODULO)) % MODULO]),2));
            }
            pw.append("\n");
        }

        for (int h=0;h<16;h++) {
            pw.append("w "+toHex(h*16,4));
            for (int l=0;l<16;l++) {
                int val=h*16+l;
                pw.append(" "+toHex(flip(data[(val/(MODULO*MODULO*MODULO)) % MODULO]),2));
            }
            pw.append("\n");
        }
        System.out.println(pw.toString());
        writeSpec(pw.toString());
    }

    public static int flip(int val) {
        int result=0;
        int a=0x01;
        int b=0x80;
        for (int i=0;i<8;i++) {
            if ((val & a) == a) {
                result|=b;
            }
            a<<=1;
            b>>=1;
        }
        return ~val;
    }

    private static String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

    private static void writeSpec(String spec) throws Exception {
        File tempFile = File.createTempFile("eeprom", "7seg");
        try (PrintWriter pw=new PrintWriter(new FileWriter(tempFile))) {
            pw.print(spec);
            pw.flush();
        }
        try (SerialWriter sw=new SerialWriter()) {
            sw.writeToSerial(tempFile);
        }
    }
}
