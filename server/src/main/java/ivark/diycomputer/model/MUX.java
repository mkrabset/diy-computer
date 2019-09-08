package ivark.diycomputer.model;

import java.util.List;

public class MUX extends Module {
    private static final Signal selectPcSignal=new Signal("select_pc",true);

    public MUX(String name) {
        super(name);
    }

    @Override
    public List<Signal> signals() {
        return null;
    }
}
