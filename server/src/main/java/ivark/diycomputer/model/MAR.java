package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MAR extends Module {
    public final Signal.ActiveHighSignal incSignal=new Signal.ActiveHighSignal("INC");
    public final Signal.ActiveLowSignal loadHighSignal=new Signal.ActiveLowSignal("LOADHIGH");
    public final Signal.ActiveLowSignal loadLowSignal=new Signal.ActiveLowSignal("LOADLOW");

    public MAR(String name) {
        super(name);
    }

    public List<Signal> signals() {
        return Arrays.asList(incSignal, loadHighSignal, loadLowSignal);
    }
}
