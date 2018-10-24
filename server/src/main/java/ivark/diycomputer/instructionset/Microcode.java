package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.BUS;
import ivark.diycomputer.model.Signal;

import java.util.ArrayList;
import java.util.List;

public class Microcode {
    public List<Signal> activeSignals=new ArrayList<Signal>();
    public BUS.BusWriter from;
    public BUS.BusReader to;

    public Microcode withActive(Signal...aSig) {
        for (Signal s:aSig) {
            activeSignals.add(s);
        }
        return this;
    }

    public Microcode bus(BUS.BusWriter from, BUS.BusReader to) {
        this.from=from;
        this.to=to;
        return this;
    }
}
