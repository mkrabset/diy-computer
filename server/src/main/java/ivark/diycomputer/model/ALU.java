package ivark.diycomputer.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ALU extends Module {
    public final Signal.ActiveHighSignal invertBSignal = new Signal.ActiveHighSignal("INVB");
    public final Signal.ActiveLowSignal op0Signal = new Signal.ActiveLowSignal("OP0");
    public final Signal.ActiveLowSignal op1Signal = new Signal.ActiveLowSignal("OP1");
    public final Signal.ActiveLowSignal flrSignal = new Signal.ActiveLowSignal("FLR");
    public final Signal.ActiveHighSignal setCarrySignal = new Signal.ActiveHighSignal("CS");
    public final Signal.ActiveHighSignal clearCarrySignal = new Signal.ActiveHighSignal("CC");
    public final Signal.ActiveHighSignal updateFlagsSignal = new Signal.ActiveHighSignal("FLAGW");

    // Signals to be LOW for each ALU-operations
    public final Signal[] addOpSignals= opSignals(false, false, false);
    public final Signal[] rolOpSignals= opSignals(false, false, false);
    public final Signal[] notOpSignals =opSignals(false, false, false);
    public final Signal[] andOpSignals= opSignals(true, false, false);
    public final Signal[] orOpSignals=  opSignals(true, false, true);
    public final Signal[] xorOpSignals =opSignals(true, true, false);
    public final Signal[] rorOpSignals =opSignals(true, true, true);

    public ALU(String name) {
        super(name);
    }

    public List<Signal> signals() {
        return Arrays.asList(invertBSignal, op0Signal, op1Signal, flrSignal,
                setCarrySignal, clearCarrySignal, updateFlagsSignal);
    }

    private Signal[] opSignals(boolean flr, boolean op0, boolean op1) {
        List<Signal> resultList=new ArrayList<>();
        if (flr == flrSignal.activeValue) {
            resultList.add(flrSignal);
        }
        if (op1==op1Signal.activeValue) {
            resultList.add(op1Signal);
        }
        if (op0==op0Signal.activeValue) {
            resultList.add(op0Signal);
        }
        return resultList.stream().toArray(Signal[]::new);
    }
}