package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MUXHAT extends Part {
    public final Signal.ActiveHighSignal pcOutLowSignal=new Signal.ActiveHighSignal("PC_OUT_LOW");
    private final VMPart vmPart;

    public MUXHAT(Computer c, String name) {
        super(c,name);
        this.vmPart=createVMPart();
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(pcOutLowSignal);
    }

    @Override
    public VMPart getVMPart() {
        return vmPart;
    }

    private VMPart createVMPart() {
        return new VMPart() {
            @Override
            BUS.BusWriter getWriter() {
                return null;
            }

            @Override
            byte getBusOutput() {
                return 0;
            }

            @Override
            public void reset() {

            }
        };
    }
}
