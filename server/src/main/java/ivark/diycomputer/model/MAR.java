package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

public class MAR extends Module {
    public final Signal.ActiveHighSignal incSignal = new Signal.ActiveHighSignal("INC");
    public final Signal.ActiveLowSignal loadHighSignal = new Signal.ActiveLowSignal("LOADHIGH");
    public final Signal.ActiveLowSignal loadLowSignal = new Signal.ActiveLowSignal("LOADLOW");

    public MAR(Computer c, String name) {
        super(c, name);
    }

    public List<Signal> signals() {
        return Arrays.asList(incSignal, loadHighSignal, loadLowSignal);
    }

    @Override
    public VMPart getVMPart() {
        return new VMPart() {
            private byte addr_h;
            private byte addr_l;

            private byte newAddr_h;
            private byte newAddr_l;

            @Override
            void onCLKRising() {
                if (isActive(loadHighSignal) && isActive(loadLowSignal)) {
                    if (isActive(c.mux.selectStackPointerSignal)) {
                        newAddr_h=c.sp.getVMPart().val_h;
                        newAddr_l=c.sp.getVMPart().val_l;
                    } else {
                        newAddr_h=c.pc.getVMPart().pc_h;
                        newAddr_l=c.pc.getVMPart().pc_l;
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
            void onCLKRisingDone() {
                addr_h = newAddr_h;
                addr_l = newAddr_l;
            }

            @Override
            void onCLKFalling() {
                super.onCLKFalling();
            }

            @Override
            void onCLKFallingDone() {
                super.onCLKFallingDone();
            }

            int getAddress() {
                return (int)(addr_h & 0xff) * 256 + (int)(addr_l & 0xff);
            }

            @Override
            BUS.BusWriter getWriter() {
                return null;
            }

            @Override
            byte getBusOutput() {
                return 0;
            }
        };
    }
}
