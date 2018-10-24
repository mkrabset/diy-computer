package ivark.diycomputer.model;

import java.util.List;
import java.util.stream.Collectors;

public abstract class Module {
    public final String name;

    public Module(String name) {
        this.name=name;
    }

    abstract public List<Signal> signals();
}