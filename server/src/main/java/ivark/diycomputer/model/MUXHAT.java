package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MUXHAT extends Module {
    public final Signal.ActiveHighSignal pcOutLowSignal=new Signal.ActiveHighSignal("PC_OUT_LOW");

    public MUXHAT(Computer c, String name) {
        super(c,name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(pcOutLowSignal);
    }

    @Override
    public VMPart getVMPart() {
        return null; // TODO:
    }
}
