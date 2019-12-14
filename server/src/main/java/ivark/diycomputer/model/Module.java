package ivark.diycomputer.model;

import ivark.diycomputer.vm.VirtualMachine;

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
        void onCLKRising() {
        }

        void onCLKRisingDone() {
        }

        void onCLKFalling() {
        }

        void onCLKFallingDone() {
        }

        abstract BUS.BusWriter getWriter();

        abstract byte getBusOutput();

        protected final byte getValueFromBus() {
            BUS.BusWriter currentBusWriter = c.instreg.getVMPart().getCurrentBusWriter();

            List<VMPart> busWriters = c.modules.stream()
                    .map(Module::getVMPart)
                    .filter(vmpart -> vmpart.getWriter() == currentBusWriter)
                    .collect(Collectors.toList());

            if (busWriters.size() > 1) {
                throw new RuntimeException("Got multiple buswriters");
            }
            return busWriters.size() == 0 ? 0 : busWriters.get(0).getBusOutput();
        }

        protected boolean isActive(Signal signal) {
            return c.instreg.getVMPart().isActive(signal);
        }
    }
}