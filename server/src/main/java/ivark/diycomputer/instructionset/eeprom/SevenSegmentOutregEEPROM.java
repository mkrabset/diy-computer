package ivark.diycomputer.instructionset.eeprom;

import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

/**
 * Created by ivark on 18.10.17.
 */
public class SevenSegmentOutregEEPROM {

    static final int[] data = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};
    static final int HEX = 16;
    static final int DEC = 10;

    static public void main(String... args) throws Exception {

        for (int i = 0; i < data.length; i++) {
            data[i] = flip(data[i]);
            System.out.println("#" + i + "-> 0x" + toHex(data[i], 2));
        }

        StringBuilder script = new StringBuilder();
        script.append(genScript(HEX, false, 0));
        script.append(genScript(DEC, false, 1024));
        script.append(genScript(HEX, false, 1024 * 2));
        script.append(genScript(DEC, true, 1024 * 3));

        System.out.println(script.toString());
        writeSpec(script.toString());
    }

    @NotNull
    private static String genScript(int modulo, boolean signed, int offset) {
        StringBuilder pw = new StringBuilder();
        //Digit #0
        for (int h = 0; h < 16; h++) {
            pw.append("w " + toHex(h * 16 + 768 + offset, 4));
            for (int l = 0; l < 16; l++) {
                int val = h * 16 + l;
                val = signed ? toSigned(val) : val;
                pw.append(" " + toHex(data[val % modulo], 2));
            }
            pw.append("\n");
        }

        // Digit #1
        for (int h = 0; h < 16; h++) {
            pw.append("w " + toHex(h * 16 + 512 + offset, 4));
            for (int l = 0; l < 16; l++) {
                int val = h * 16 + l;
                val = signed ? toSigned(val) : val;
                if (val < modulo) {
                    pw.append(" 00");
                } else {
                    pw.append(" " + toHex(data[(val / modulo) % modulo], 2));
                }
            }
            pw.append("\n");
        }

        // Digit #2
        for (int h = 0; h < 16; h++) {
            pw.append("w " + toHex(h * 16 + 256 + offset, 4));
            for (int l = 0; l < 16; l++) {
                int val = h * 16 + l;
                val = signed ? toSigned(val) : val;
                if (val < modulo * modulo) {
                    pw.append(" 00");
                } else {
                    pw.append(" " + toHex(data[(val / (modulo * modulo)) % modulo], 2));
                }
            }
            pw.append("\n");
        }

        // Digit #3
        for (int h = 0; h < 16; h++) {
            pw.append("w " + toHex(h * 16 + offset, 4));
            for (int l = 0; l < 16; l++) {
                int val = h * 16 + l;
                if (signed && val >= 128) {
                    pw.append(" 02");
                } else {
                    pw.append(" 00");
                }
            }
            pw.append("\n");
        }

        return pw.toString();
    }

    private static int toSigned(int val) {
        return val < 128 ? val : 256 - val;
    }

    public static int flip(int val) {
        int result = 0;
        int a = 0x01;
        int b = 0x80;
        for (int i = 0; i < 8; i++) {
            if ((val & a) == a) {
                result |= b;
            }
            a <<= 1;
            b >>= 1;
        }
        return result;
    }

    private static String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

    private static void writeSpec(String spec) throws Exception {
        File tempFile = File.createTempFile("eeprom", "7seg");
        try (PrintWriter pw = new PrintWriter(new FileWriter(tempFile))) {
            pw.print(spec);
            pw.flush();
        }
        try (SerialWriter sw = new SerialWriter()) {
            sw.writeToSerial(tempFile);
        }
    }
}
