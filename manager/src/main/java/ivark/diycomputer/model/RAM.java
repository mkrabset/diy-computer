package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class RAM extends Module {

    public RAM(String name) {
        super(name);
    }

    public List<Signal> signals() {
        return Arrays.asList();
    }
}
