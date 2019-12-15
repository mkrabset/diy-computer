package ivark.diycomputer.model;

import ivark.diycomputer.model.BUS.BusReader;
import ivark.diycomputer.model.BUS.BusWriter;

import java.util.Arrays;
import java.util.List;

public class Register extends Module {
    private final BusReader busReader;
    private final BusWriter busWriter;
    private final VMPart vmPart;

    public Register(Computer c, String name, BusReader busReader, BusWriter busWriter) {
        super(c, name);
        this.busReader=busReader;
        this.busWriter=busWriter;
        this.vmPart=createVMPart();
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

    @Override
    public VMPart getVMPart() {
        return vmPart;
    }

    private VMPart createVMPart() {
        return new VMPart() {
            private byte value;
            private byte newValue;

            @Override
            BusWriter getWriter() {
                return busWriter;
            }

            @Override
            byte getBusOutput() {
                return value;
            }

            public void onCLKRising() {
                newValue = getCurrentBusReader() == busReader ? getValueFromBus() : value;
            }

            public void onCLKRisingDone() {
                value = newValue;
            }

            public void onCLKFalling() {
            }

            public void onCLKFallingDone() {
            }
        };
    }
}
