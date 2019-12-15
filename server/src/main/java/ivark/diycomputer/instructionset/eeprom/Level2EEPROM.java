package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.model.Signal;

/**
 * Created by ivark on 21.06.17.
 */
public class Level2EEPROM extends SignalEEpromBase {

    private Signal.ActiveLowSignal[] signals = {
            c.clock.haltSignal,
            c.mar.loadHighSignal,
            c.mar.loadLowSignal,
            c.mux.selectStackPointerSignal,
            c.sp.resetSignal,
            c.sp.cntSignal,
            c.sp.dirDownSignal,
            c.instReg.contSignal
    };


    public static void main(String... args) throws Exception {
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
