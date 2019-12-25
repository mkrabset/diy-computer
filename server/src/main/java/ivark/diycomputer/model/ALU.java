package ivark.diycomputer.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ALU extends Part {
    public final Signal.ActiveHighSignal invertBSignal = new Signal.ActiveHighSignal("INVB");
    public final Signal.ActiveLowSignal op0Signal = new Signal.ActiveLowSignal("OP0");
    public final Signal.ActiveLowSignal op1Signal = new Signal.ActiveLowSignal("OP1");
    public final Signal.ActiveLowSignal flrSignal = new Signal.ActiveLowSignal("FLR");
    public final Signal.ActiveHighSignal setCarrySignal = new Signal.ActiveHighSignal("CS");
    public final Signal.ActiveHighSignal clearCarrySignal = new Signal.ActiveHighSignal("CC");
    public final Signal.ActiveHighSignal updateFlagsSignal = new Signal.ActiveHighSignal("FLAGW");

    // Signals to be LOW for each ALU-operations
    public final Signal[] addOpSignals = opSignals(false, false, false);
    public final Signal[] andOpSignals = opSignals(true, false, false);
    public final Signal[] orOpSignals = opSignals(true, false, true);
    public final Signal[] xorOpSignals = opSignals(true, true, false);
    public final Signal[] rorOpSignals = opSignals(true, true, true);
    private final ExtendedVMPart vmPart;

    public ALU(Computer c, String name) {
        super(c, name);
        this.vmPart = createVMPart();
    }

    public List<Signal> signals() {
        return Arrays.asList(invertBSignal, op0Signal, op1Signal, flrSignal,
                setCarrySignal, clearCarrySignal, updateFlagsSignal);
    }

    private Signal[] opSignals(boolean flr, boolean op0, boolean op1) {
        List<Signal> resultList = new ArrayList<>();
        if (flr == flrSignal.activeValue) {
            resultList.add(flrSignal);
        }
        if (op1 == op1Signal.activeValue) {
            resultList.add(op1Signal);
        }
        if (op0 == op0Signal.activeValue) {
            resultList.add(op0Signal);
        }
        return resultList.stream().toArray(Signal[]::new);
    }

    @Override
    public ExtendedVMPart getVMPart() {
        return vmPart;
    }

    private ExtendedVMPart createVMPart() {
        return new ExtendedVMPart() {
            private byte a;
            private byte b;

            private byte newa;
            private byte newb;

            private boolean fz;  // all bits zero
            private boolean fn;  // bit7 one
            private boolean fc;  // carry
            private boolean fv;  // overflow


            private boolean signalMatch(Signal[] opSignals) {
                List<Signal> sigList = Arrays.asList(opSignals);
                if (isActive(flrSignal) != sigList.contains(flrSignal)) return false;
                if (isActive(op0Signal) != sigList.contains(op0Signal)) return false;
                if (isActive(op1Signal) != sigList.contains(op1Signal)) return false;
                return true;
            }


            @Override
            public void onCLKRising() {
                newa = getCurrentBusReader() == BUS.BusReader.ALU_A_IN ? getValueFromBus() : a;
                newb = getCurrentBusReader() == BUS.BusReader.ALU_B_IN ? getValueFromBus() : b;
            }

            @Override
            public void onCLKRisingDone() {
                a = newa;
                b = newb;
                if (isActive(c.alu.clearCarrySignal)) fc = false;
                if (isActive(c.alu.setCarrySignal)) fc = true;
                if (isActive(c.alu.updateFlagsSignal)) {
                    Result result = calcResult(a, b);
                    fz = result.fz;
                    fn = result.fn;
                    fc = result.fc;
                    fv = result.fv;
                }
            }

            @Override
            public void onCLKFalling() {
                super.onCLKFalling();
            }

            @Override
            public void onCLKFallingDone() {
                super.onCLKFallingDone();
            }

            Result calcResult(byte a, byte b) {
                if (isActive(c.alu.invertBSignal)) {
                    b = (byte) (~b);
                }

                if (signalMatch(c.alu.xorOpSignals)) {
                    // XOR
                    return new Result(a, b, (byte) (a ^ b), false);
                } else if (signalMatch(c.alu.rorOpSignals)) {
                    // ROR
                    byte outval = (byte) ((b & 0xff) >>> 1);
                    if (fc) {
                        outval |= 0x80;
                    }
                    return new Result(a, b, outval, (b & 0x01) == 0x01);
                } else if (signalMatch(c.alu.andOpSignals)) {
                    // AND
                    return new Result(a, b, (byte) (a & b), false);
                } else if (signalMatch(c.alu.orOpSignals)) {
                    // OR
                    return new Result(a, b, (byte) (a | b), false);
                } else if (signalMatch(c.alu.addOpSignals)) {
                    // ADD
                    int sum = (a & 0xff) + (b & 0xff) + (fc ? 1 : 0);
                    return new Result(a, b, (byte) (sum & 0xff), (sum & 0x100) == 0x100);
                } else {
                    throw new RuntimeException("No such op");
                }
            }

            @Override
            public boolean getZ() {
                return fz;
            }

            @Override
            public boolean getN() {
                return fn;
            }

            @Override
            public boolean getC() {
                return fc;
            }

            @Override
            public boolean getV() {
                return fv;
            }

            class Result {
                private byte outval;
                private boolean fc;
                private boolean fn;
                private boolean fz;
                private boolean fv;

                Result(byte a, byte b, byte outval, boolean carryout) {
                    this.outval = outval;
                    this.fc = carryout;
                    this.fn = bit7set(outval);
                    this.fz = outval == 0;
                    this.fv = (bit7set(a) && bit7set(b) && !bit7set(outval)) ||
                            (!bit7set(a) && !bit7set(b) && bit7set(outval));

                }

                private boolean bit7set(byte b) {
                    return (b & 0x80) == 0x80;
                }
            }

            @Override
            BUS.BusWriter getWriter() {
                return BUS.BusWriter.ALU_OUT;
            }

            @Override
            byte getBusOutput() {
                return calcResult(a, b).outval;
            }
        };
    }

    public abstract class ExtendedVMPart extends VMPart {
        public abstract boolean getZ();

        public abstract boolean getN();

        public abstract boolean getC();

        public abstract boolean getV();
    }
}