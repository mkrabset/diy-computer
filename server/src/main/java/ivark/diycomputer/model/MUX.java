package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MUX extends Module {
    public final Signal.ActiveLowSignal selectStackPointerSignal=new Signal.ActiveLowSignal("selectStackPointer");

    public MUX(Computer c, String name) {
        super(c,name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(selectStackPointerSignal);
    }

    @Override
    public VMPart getVMPart() {
        return null; // TODO:
    }
}
