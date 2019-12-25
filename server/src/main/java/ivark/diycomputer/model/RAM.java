package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class RAM extends Part {

    private final ExtendedVMPart vmPart;

    public RAM(Computer c, String name) {
        super(c, name);
        this.vmPart=createVMPart();
    }

    public List<Signal> signals() {
        return Arrays.asList();
    }

    @Override
    public ExtendedVMPart getVMPart() {
        return vmPart;
    }

    private ExtendedVMPart createVMPart() {
        return new ExtendedVMPart() {
            private byte[] memory = new byte[65536];

            private byte newVal;

            public void onCLKRising() {
                newVal = c.instReg.getVMPart().getCurrentBusReader() == BUS.BusReader.RAM_IN ? getValueFromBus() : newVal;
            }

            @Override
            public void onCLKRisingDone() {
            }

            @Override
            public void onCLKFalling() {
                if (c.instReg.getVMPart().getCurrentBusReader() == BUS.BusReader.RAM_IN) {
                    memory[getMARAddress()] = newVal;
                }
            }

            @Override
            public void onCLKFallingDone() {
            }

            @Override
            BUS.BusWriter getWriter() {
                return BUS.BusWriter.RAM_OUT;
            }

            @Override
            public byte getBusOutput() {
                int address = getMARAddress();
                return memory[address];
            }

            @Override
            public byte read(int address) {
                return memory[address];
            }

            @Override
            public void write(int address, byte value) {
                memory[address]=value;
            }

            private int getMARAddress() {
                return (c.mar.getVMPart().getHighValue() & 0xff) * 256 + (c.mar.getVMPart().getLowValue() & 0xff);
            }
        };
    }

    public abstract class ExtendedVMPart extends VMPart {
        public abstract byte read(int address);
        public abstract void write(int address, byte value);
    }
}
