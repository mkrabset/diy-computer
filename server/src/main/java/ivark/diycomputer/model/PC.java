package ivark.diycomputer.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PC extends Module {
    public final Signal.ActiveHighSignal incSignal = new Signal.ActiveHighSignal("CNT");
    public final Signal.ActiveLowSignal jumpCond0Signal = new Signal.ActiveLowSignal("JMP.COND.0");
    public final Signal.ActiveLowSignal jumpCond1Signal = new Signal.ActiveLowSignal("JMP.COND.1");
    public final Signal.ActiveLowSignal jumpCond2Signal = new Signal.ActiveLowSignal("JMP.COND.2");
    public final Signal.ActiveLowSignal jumpCond3Signal = new Signal.ActiveLowSignal("JMP.COND.3");
    public final Signal.ActiveLowSignal resetSignal=new Signal.ActiveLowSignal("RESET"); // Note: this as async on 74ls161

    public PC(String name) {
        super(name);
    }

    public List<Signal> signals() {
        return Arrays.asList(incSignal, jumpCond0Signal, jumpCond1Signal, jumpCond2Signal, jumpCond3Signal, resetSignal);
    }

    public enum JumpCondition {
        NOJUMP("false"), // false (no jump)
        EQ("z==1"), // Equal (Z=1)
        NE("z==0"), // Not Equal (Z=0)
        CS("c==1"), // Carry set (or unsigned >=) (C=1)
        CC("c==0"), // Carry clear (or unsigned <) (C=0)
        MI("n==1"), // Negative (minus)  (N=1)
        PL("n==0"), // Positive or zero (N=0)
        VS("v==1"), // Signed overflow (V=1)    v=overflow
        VC("v==0"), // No signed overflow
        HI("c==1 && z==0"), // Unsigned higher (C=1 & Z=0)
        LS("c==0 | z==1"), // Unsigned lower or same (C=0 | Z=1)
        GE("n==v"), // Signed greater than or equal (N=V)
        LT("n!=v"), // Signed less than (N!=V)
        GT("z==0 && n==v"), // Signed greater than (Z=0 & N=V)
        LE("z==1 | n!=v"), // Signed less than or equal (Z=1 | N!=V)
        UNCOND("true"); // true (unconditional)

        public final String descr;

        JumpCondition(String descr) {
            this.descr=descr;
        }

        public List<Signal> getConditionSignals(PC pc) {
            List<Signal> result=new ArrayList<>();
            byte o=(byte)ordinal();
            if ((o & 0x01) == 0x01) {
                result.add(pc.jumpCond0Signal);
            }
            if ((o & 0x02) == 0x02) {
                result.add(pc.jumpCond1Signal);
            }
            if ((o & 0x04) == 0x04) {
                result.add(pc.jumpCond2Signal);
            }
            if ((o & 0x08) == 0x08) {
                result.add(pc.jumpCond3Signal);
            }
            return result;
        }

        public boolean eval(boolean z, boolean n, boolean c, boolean v) {
            switch (this) {
                case NOJUMP:
                    return false;
                case EQ:
                    return z;
                case NE:
                    return !z;
                case CS:
                    return c;
                case CC:
                    return !c;
                case MI:
                    return n;
                case PL:
                    return !n;
                case VS:
                    return v;
                case VC:
                    return !v;
                case HI:
                    return c && !z;
                case LS:
                    return !c || z;
                case GE:
                    return n==v;
                case LT:
                    return n!=v;
                case GT:
                    return !z && n==v;
                case LE:
                    return z | n!=v;
                case UNCOND:
                    return true;
                default:
                    throw new RuntimeException("No such element");
            }
        }
    }
}
