package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 24.06.17.
 */
public class CLK extends Part {
    public final Signal.ActiveLowSignal haltSignal = new Signal.ActiveLowSignal("HALT");
    private final VMPart vmPart;

    public CLK(Computer c, String name) {
        super(c, name);
        this.vmPart=createVMPart();
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(haltSignal);
    }

    @Override
    public VMPart getVMPart() {
        return vmPart;
    }

    private VMPart createVMPart() {
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
