package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class RAM extends Module {

    public RAM(Computer c, String name) {
        super(c, name);
    }

    public List<Signal> signals() {
        return Arrays.asList();
    }

    @Override
    public VMPart getVMPart() {
        return new VMPart() {
            private byte[] memory = new byte[65536];

            private byte newVal;

            void onCLKRising() {
                newVal = c.instreg.getVMPart().getCurrentBusReader() == BUS.BusReader.RAM_IN ? getValueFromBus() : newVal;
            }

            @Override
            void onCLKRisingDone() {
            }

            @Override
            void onCLKFalling() {
                if (c.instreg.getVMPart().getCurrentBusReader() == BUS.BusReader.RAM_IN) {
                    memory[c.mar.getVMPart().getAddress()] = newVal;
                }
            }

            @Override
            void onCLKFallingDone() {
            }

            @Override
            BUS.BusWriter getWriter() {
                return BUS.BusWriter.RAM_OUT;
            }

            @Override
            public byte getBusOutput() {
                return memory[c.mar.getVMPart().getAddress()];
            }
        };
    }
}
