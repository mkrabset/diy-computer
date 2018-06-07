package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 24.06.17.
 */
public class CLK extends Module {
    public final Signal haltSignal = new Signal("A.RESET", true);

    public CLK(String name) {
        super(name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(haltSignal);
    }
}
