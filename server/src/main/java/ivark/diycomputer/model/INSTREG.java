package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 13.05.17.
 */
public class INSTREG extends Module {
    public final Signal.ActiveLowSignal contSignal=new Signal.ActiveLowSignal("CONT");

    public INSTREG(String name) {
        super(name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(contSignal);
    }
}
