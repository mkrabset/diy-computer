package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MAR extends Module {
    public final Signal.ActiveHighSignal incSignal = new Signal.ActiveHighSignal("INC");
    public final Signal.ActiveLowSignal loadHighSignal = new Signal.ActiveLowSignal("LOADHIGH");
    public final Signal.ActiveLowSignal loadLowSignal = new Signal.ActiveLowSignal("LOADLOW");
    private final ExtendedVMPart vmPart;

    public MAR(Computer c, String name) {
        super(c, name);
        this.vmPart=createVMPart();
    }

    public List<Signal> signals() {
        return Arrays.asList(incSignal, loadHighSignal, loadLowSignal);
    }

    @Override
    public ExtendedVMPart getVMPart() {
        return vmPart;
    }

    private ExtendedVMPart createVMPart() {
        return new ExtendedVMPart() {
            private byte addr_h;
            private byte addr_l;

            private byte newAddr_h;
            private byte newAddr_l;

            @Override
            public void onCLKRising() {
                if (isActive(loadHighSignal) && isActive(loadLowSignal)) {
                    if (isActive(c.mux.selectStackPointerSignal)) {
                        newAddr_h=c.sp.getVMPart().getHighValue();
                        newAddr_l=c.sp.getVMPart().getLowValue();
                    } else {
                        newAddr_h=c.pc.getVMPart().getHighValue();
                        newAddr_l=c.pc.getVMPart().getLowValue();
                    }
                } else if (isActive(c.mar.loadLowSignal)) {
                    newAddr_h=addr_h;
                    newAddr_l=getValueFromBus();
                } else if (isActive(c.mar.loadHighSignal)) {
                    newAddr_h=getValueFromBus();
                    newAddr_l=addr_l;
                } else if (isActive(c.mar.incSignal)){
                    newAddr_l++;
                    if (newAddr_l == 0) {
                        newAddr_h++;
                    }
                } else {
                    newAddr_l=addr_l;
                    newAddr_h=addr_h;
                }
            }

            @Override
            public void onCLKRisingDone() {
                addr_h = newAddr_h;
                addr_l = newAddr_l;
            }

            @Override
            public void onCLKFalling() {
                super.onCLKFalling();
            }

            @Override
            public void onCLKFallingDone() {
                super.onCLKFallingDone();
            }

            @Override
            BUS.BusWriter getWriter() {
                return null;
            }

            @Override
            byte getBusOutput() {
                return 0;
            }

            @Override
            public byte getHighValue() {
                return addr_h;
            }

            @Override
            public byte getLowValue() {
                return addr_l;
            }
        };
    }

    abstract class ExtendedVMPart extends VMPart {
        public abstract byte getHighValue();
        public abstract byte getLowValue();
    }
}
