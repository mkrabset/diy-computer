package ivark.diycomputer.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ALU extends Module {
    public final Signal invertBSignal = new Signal("INVB", true);
    public final Signal op0Signal = new Signal("OP0", false);
    public final Signal op1Signal = new Signal("OP1", false);
    public final Signal op2Signal = new Signal("OP2", false);
    public final Signal setCarrySignal = new Signal("CS", true);
    public final Signal clearCarrySignal = new Signal("CC", true);
    public final Signal updateFlagsSignal = new Signal("FLAGW", true);

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