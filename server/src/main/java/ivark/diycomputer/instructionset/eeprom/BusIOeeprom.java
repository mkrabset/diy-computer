package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.instructionset.Microcode;
import ivark.diycomputer.model.BUS;

/**
 * Created by ivark on 21.06.17.
 */
public class BusIOeeprom extends DecoderEEPromBase {

    public static void main(String...args) throws Exception {
        BusIOeeprom eeprom = new BusIOeeprom();
        String spec = eeprom.gen();
        System.out.println(spec);
        eeprom.writeSpec(spec);
    }

    @Override
    int getDefaultValue() {
        return BUS.BusWriter.FLOATING.getPattern() | BUS.BusReader.NO_INPUT.getPattern();
    }

    @Override
    int getValue(Microcode step) {
        BUS.BusWriter busFrom = step.from;
        BUS.BusReader busTo = step.to;
        if (busFrom!=null && busTo!=null) {
            return busFrom.getPattern() | busTo.getPattern();
        } else {
            return getDefaultValue();
        }
    }
}
