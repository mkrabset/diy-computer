package ivark.diycomputer.model;

import java.util.List;
import java.util.stream.Collectors;

public abstract class Module {
    public final Computer c;
    public final String name;

    public Module(Computer c, String name) {
        this.c=c ;
        this.name=name;
        c.registerModule(this);
    }

    abstract public List<Signal> signals();

    abstract public VMPart getVMPart();

    public abstract class VMPart {
        public void onCLKRising() {
        }

        public void onCLKRisingDone() {
        }

        public void onCLKFalling() {
        }

        public void onCLKFallingDone() {
        }

        abstract BUS.BusWriter getWriter();

        abstract byte getBusOutput();

        protected BUS.BusReader getCurrentBusReader() {
            return c.instReg.getVMPart().getCurrentBusReader();
        }

        protected BUS.BusWriter getCurrentBusWriter() {
            return c.instReg.getVMPart().getCurrentBusWriter();
        }

        public final byte getValueFromBus() {
            BUS.BusWriter currentBusWriter = c.instReg.getVMPart().getCurrentBusWriter();

            List<VMPart> busWriters = c.modules.stream()
                    .map(Module::getVMPart)
                    .filter(vmpart -> vmpart.getWriter() == currentBusWriter)
                    .collect(Collectors.toList());

            if (busWriters.size() > 1) {
                throw new RuntimeException("Got multiple buswriters");
            }
            return busWriters.size() == 0 ? 0 : busWriters.get(0).getBusOutput();
        }

        public boolean isActive(Signal signal) {
            return c.instReg.getVMPart().isActive(signal);
        }
    }
}