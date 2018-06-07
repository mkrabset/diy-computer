package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MAR extends Module {
    public final Signal incSignal=new Signal("INC", true);

    public MAR(String name) {
        super(name);
    }

    public List<Signal> signals() {
        return Arrays.asList(incSignal);
    }
}
