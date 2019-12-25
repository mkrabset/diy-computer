package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MUX extends Part {
    public final Signal.ActiveLowSignal selectStackPointerSignal=new Signal.ActiveLowSignal("selectStackPointer");
    private final VMPart vmPart;

    public MUX(Computer c, String name) {
        super(c,name);
        this.vmPart=createVMPart();
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(selectStackPointerSignal);
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
        };
    }
}
