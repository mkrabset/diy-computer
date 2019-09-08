package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MAR extends Module {
    public final Signal incSignal=new Signal("INC", true);
    public final Signal loadHighSignal=new Signal("LOADHIGH",false);
    public final Signal loadLowSignal=new Signal("LOADLOW",false);
    public final Signal loadOffsetSignal=new Signal("LOADOFFSET",false);

    public MAR(String name) {
        super(name);
    }

    public List<Signal> signals() {
        return Arrays.asList(incSignal, loadHighSignal, loadLowSignal, loadOffsetSignal);
    }
}
