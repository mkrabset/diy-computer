package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.instructionset.Microcode;
import ivark.diycomputer.model.Signal;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

/**
 * Created by ivark on 21.06.17.
 */
public abstract class SignalEEpromBase extends DecoderEEPromBase {
    abstract Signal[] getSignals();

    @Override
    int getDefaultValue() {
        int result=0;
        for (int i=0;i<8;i++) {
            result<<=1;
            Signal sig = getSignals()[i];
            result|=(false==sig.activeValue) ? 1 : 0;
        }
        return result;
    }

    @Override
    int getValue(Microcode step) {
        int result=0;
        for (int i=0;i<8;i++) {
            Signal sig = getSignals()[i];
            boolean active=step.activeSignals.contains(sig);
            boolean on=(active==sig.activeValue);
            result<<=1;
            result|=(on ? 1 : 0);
        }
        return result;
    }
}
