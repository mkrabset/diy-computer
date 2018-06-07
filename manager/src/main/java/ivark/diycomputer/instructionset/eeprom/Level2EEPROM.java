package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.model.Signal;

/**
 * Created by ivark on 21.06.17.
 */
public class Level2EEPROM extends SignalEEpromBase {

    private Signal[] signals={
            Signal.DUMMY_ACTIVE_LOW,
            Signal.DUMMY_ACTIVE_LOW,
            c.pc.lowOutSignal,
            Signal.DUMMY_ACTIVE_LOW,

            c.sp.dirUpSignal,
            c.sp.cntSignal,
            c.sp.resetSignal,
            c.instreg.contSignal};


    public static void main(String...args) throws Exception {
        Level2EEPROM eeprom = new Level2EEPROM();
        String spec = eeprom.gen();
        System.out.println(spec);
        eeprom.writeSpec(spec);
    }



    @Override
    public Signal[] getSignals() {
        return signals;
    }

}
