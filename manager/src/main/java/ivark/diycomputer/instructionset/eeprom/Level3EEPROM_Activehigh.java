package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.model.Signal;

/**
 * Created by ivark on 21.06.17.
 */
public class Level3EEPROM_Activehigh extends SignalEEpromBase {

    private Signal[] signals={
            c.alu.updateFlagsSignal,
            c.alu.invertBSignal,
            c.alu.setCarrySignal,
            c.alu.clearCarrySignal,

            Signal.DUMMY_ACTIVE_HIGH,
            c.sp.highOutSignal,
            c.mar.incSignal,
            c.pc.incSignal};

    public static void main(String...args) throws Exception {
        Level3EEPROM_Activehigh eeprom = new Level3EEPROM_Activehigh();
        String spec = eeprom.gen();
        eeprom.writeSpec(spec);
    }



    @Override
    public Signal[] getSignals() {
        return signals;
    }

}
