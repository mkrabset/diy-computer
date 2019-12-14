package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 24.06.17.
 */
public class CLK extends Module {
    public final Signal.ActiveLowSignal haltSignal = new Signal.ActiveLowSignal("HALT");

    public CLK(Computer c, String name) {
        super(c, name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(haltSignal);
    }

    @Override
    public VMPart getVMPart() {
        // TODO: Put more of the clock stuff in here maybe?


        return new VMPart() {
            @Override
            BUS.BusWriter getWriter() {
                return null;
            }

            @Override
            byte getBusOutput() {
                return 0;
            }
        };
    }
}
