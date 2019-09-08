package ivark.diycomputer.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ALU extends Module {
    public final Signal.ActiveHighSignal invertBSignal = new Signal.ActiveHighSignal("INVB");
    public final Signal.ActiveLowSignal op0Signal = new Signal.ActiveLowSignal("OP0");
    public final Signal.ActiveLowSignal op1Signal = new Signal.ActiveLowSignal("OP1");
    public final Signal.ActiveLowSignal op2Signal = new Signal.ActiveLowSignal("OP2");
    public final Signal.ActiveHighSignal setCarrySignal = new Signal.ActiveHighSignal("CS");
    public final Signal.ActiveHighSignal clearCarrySignal = new Signal.ActiveHighSignal("CC");
    public final Signal.ActiveHighSignal updateFlagsSignal = new Signal.ActiveHighSignal("FLAGW");

    // Signals to be LOW for each ALU-operations
    public final Signal[] addOpSignals= opSignals(false,false,false);
    public final Signal[] rolOpSignals= opSignals(false,false,true);
    public final Signal[] orOpSignals=  opSignals(false,true,false);
    public final Signal[] notOpSignals =opSignals(false,true,true);
    public final Signal[] andOpSignals= opSignals(true,false,false);
    public final Signal[] rorOpSignals =opSignals(true,false,true);
    public final Signal[] xorOpSignals =opSignals(true,true,false);

    public ALU(String name) {
        super(name);
    }

    public List<Signal> signals() {
        return Arrays.asList(invertBSignal, op0Signal, op1Signal, op2Signal,
                setCarrySignal, clearCarrySignal, updateFlagsSignal);
    }

    private Signal[] opSignals(boolean op2, boolean op1, boolean op0) {
        List<Signal> resultList=new ArrayList<>();
        if (op2==op2Signal.activeValue) {
            resultList.add(op2Signal);
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