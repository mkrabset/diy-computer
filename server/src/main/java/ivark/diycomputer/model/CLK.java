package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 24.06.17.
 */
public class CLK extends Module {
    public final Signal.ActiveHighSignal haltSignal = new Signal.ActiveHighSignal("A.RESET");

    public CLK(String name) {
        super(name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(haltSignal);
    }
}
