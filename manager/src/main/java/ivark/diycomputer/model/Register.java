package ivark.diycomputer.model;

import ivark.diycomputer.model.BUS.BusReader;
import ivark.diycomputer.model.BUS.BusWriter;

import java.util.Arrays;
import java.util.List;

public class Register extends Module {
    private final BusReader busReader;
    private final BusWriter busWriter;

    public Register(String name, BusReader busReader, BusWriter busWriter) {
        super(name);
        this.busReader=busReader;
        this.busWriter=busWriter;
    }

    public List<Signal> signals() {
        return Arrays.asList();
    }

    public BusReader busRead() {
        return busReader;
    }

    public BusWriter busWrite() {
        return busWriter;
    }
}
