package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 24.06.17.
 */
public class SP extends Module {
    public final Signal.ActiveLowSignal resetSignal=new Signal.ActiveLowSignal("RESET");
    public final Signal.ActiveLowSignal cntSignal = new Signal.ActiveLowSignal("CNT");
    public final Signal.ActiveLowSignal dirUpSignal = new Signal.ActiveLowSignal("DIRUP");

    public SP(String name) {
        super(name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(cntSignal, dirUpSignal, resetSignal);
    }
}
