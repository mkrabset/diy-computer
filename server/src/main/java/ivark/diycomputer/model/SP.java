package ivark.diycomputer.model;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 24.06.17.
 */
public class SP extends Part {
    public final Signal.ActiveLowSignal resetSignal=new Signal.ActiveLowSignal("RESET");
    public final Signal.ActiveLowSignal cntSignal = new Signal.ActiveLowSignal("CNT");
    public final Signal.ActiveLowSignal dirDownSignal = new Signal.ActiveLowSignal("DIRDOWN");
    private final ExtendedVMPart vmPart;

    public SP(Computer c, String name) {
        super(c, name);
        this.vmPart=createVMPart();
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(cntSignal, dirDownSignal, resetSignal);
    }

    @Override
    public ExtendedVMPart getVMPart() {
        return vmPart;
    }

    private ExtendedVMPart createVMPart() {
        return new ExtendedVMPart() {
            private byte val_h;
            private byte val_l;

            private byte newval_h;
            private byte newval_l;

            public void onCLKRising() {
                if (isActive(c.sp.resetSignal)) {
                    newval_h = 0;
                    newval_l = 0;
                } else if (isActive(c.sp.cntSignal)) {
                    if (isActive(c.sp.dirDownSignal)) {
                        newval_l++;
                        if (newval_l == 0) {
                            newval_h++;
                        }
                    } else {
                        if (newval_l == 0) {
                            newval_h--;
                        }
                        newval_l--;
                    }
                }
            }

            public void onCLKRisingDone() {
                val_h = newval_h;
                val_l = newval_l;
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
                return val_h;
            }

            @Override
            public byte getLowValue() {
                return val_l;
            }
        };
    }

    abstract class ExtendedVMPart extends VMPart {
        public abstract byte getHighValue();
        public abstract byte getLowValue();
    }
}
