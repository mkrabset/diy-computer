package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.model.Signal;

/**
 * Created by ivark on 21.06.17.
 */
public class Level3EEPROM_Activehigh extends SignalEEpromBase {

    private Signal.ActiveHighSignal[] signals = {
            c.alu.updateFlagsSignal,
            c.alu.invertBSignal,
            c.alu.setCarrySignal,
            c.alu.clearCarrySignal,

            c.muxhat.pcOutLowSignal,
            c.mar.incSignal,
            c.pc.incSignal,
            Signal.DUMMY_ACTIVE_HIGH
    };

    public static void main(String... args) throws Exception {
        Level3EEPROM_Activehigh eeprom = new Level3EEPROM_Activehigh();
        String spec = eeprom.gen();
        eeprom.writeSpec(spec);
    }


    @Override
    public Signal[] getSignals() {
        return signals;
    }

}
