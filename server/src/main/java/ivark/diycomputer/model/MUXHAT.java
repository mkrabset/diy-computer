package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MUXHAT extends Module {
    private static final Signal pcOutLowSignal=new Signal("PC_OUT_LOW",true);

    public MUXHAT(String name) {
        super(name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(pcOutLowSignal);
    }
}
