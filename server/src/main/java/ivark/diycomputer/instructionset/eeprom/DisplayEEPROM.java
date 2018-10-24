package ivark.diycomputer.instructionset.eeprom;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

/**
 * Created by ivark on 15.08.17.
 */
public class DisplayEEPROM {



    protected void writeSpec(String spec) throws Exception {
        File tempFile = File.createTempFile("eeprom", "display");
        try (PrintWriter pw=new PrintWriter(new FileWriter(tempFile))) {
            pw.print(spec);
            pw.flush();
        }
        try (SerialWriter sw=new SerialWriter()) {
            sw.writeToSerial(tempFile.getAbsolutePath());
        }
    }
}
