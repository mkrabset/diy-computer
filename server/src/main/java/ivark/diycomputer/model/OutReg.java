package ivark.diycomputer.model;

import ivark.diycomputer.model.BUS.BusReader;

import java.util.Arrays;
import java.util.List;

public class OutReg extends Module {
    private final BusReader busReader;
    private final ExtendedVMPart vmPart;

    public OutReg(Computer c, String name, BusReader busReader) {
        super(c, name);
        this.busReader = busReader;
        this.vmPart=createVMPart();
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList();
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
            BUS.BusWriter getWriter() {
                return null;
            }

            @Override
            byte getBusOutput() {
                return 0;
            }

            @Override
            public void onCLKRising() {
                if (getCurrentBusReader()==busReader) {
                    this.newValue = getValueFromBus();
                }
            }

            @Override
            public void onCLKRisingDone() {
                this.value=newValue;
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
