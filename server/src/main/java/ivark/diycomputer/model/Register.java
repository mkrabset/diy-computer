package ivark.diycomputer.model;

import ivark.diycomputer.model.BUS.BusReader;
import ivark.diycomputer.model.BUS.BusWriter;

import java.util.Arrays;
import java.util.List;

public class Register extends Part {
    private final BusReader busReader;
    private final BusWriter busWriter;
    private final ExtendedVMPart vmPart;

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
    public ExtendedVMPart getVMPart() {
        return vmPart;
    }

    private ExtendedVMPart createVMPart() {
        return new ExtendedVMPart() {

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

            @Override
            public byte getValue() {
                return value;
            }
        };
    }

    public abstract class ExtendedVMPart extends VMPart {
        public abstract byte getValue();
    }
}
