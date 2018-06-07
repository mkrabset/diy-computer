package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 24.06.17.
 */
public class SP extends Module {
    public final Signal resetSignal=new Signal("RESET", false);
    public final Signal highOutSignal=new Signal("HIGHOUT",true);
    public final Signal cntSignal = new Signal("CNT", false);
    public final Signal dirUpSignal = new Signal("DIRUP", false);

    public SP(String name) {
        super(name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(highOutSignal, cntSignal, dirUpSignal, resetSignal);
    }
}
