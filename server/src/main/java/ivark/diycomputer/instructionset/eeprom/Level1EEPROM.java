package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.model.Signal;

/**
 * Created by ivark on 21.06.17.
 */
public class Level1EEPROM extends SignalEEpromBase {

    private Signal.ActiveLowSignal[] signals={
            c.alu.op2Signal,
            c.alu.op1Signal,
            c.alu.op0Signal,
            c.pc.resetSignal,  // Note: Can be replaced by a short microcode sequence loading zeros into jumpreg and then jump unconditionally
                               //       Probably a better idea than wasting this signal slot.
                               //       Only used for initialization.

            c.pc.jumpCond0Signal,
            c.pc.jumpCond1Signal,
            c.pc.jumpCond2Signal,
            c.pc.jumpCond3Signal};

    public static void main(String...args) throws Exception {
        Level1EEPROM eeprom = new Level1EEPROM();
        String spec = eeprom.gen();
        System.out.println(spec);
        eeprom.writeSpec(spec);
    }



    @Override
    public Signal[] getSignals() {
        return signals;
    }

}
