package ivark.diycomputer.model;

import ivark.diycomputer.instructionset.Instruction;
import ivark.diycomputer.instructionset.Microcode;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 13.05.17.
 */
public class INSTREG extends Module {
    public final Signal.ActiveLowSignal contSignal = new Signal.ActiveLowSignal("CONT");

    public INSTREG(Computer c, String name) {
        super(c, name);
    }

    @Override
    public List<Signal> signals() {
        return Arrays.asList(contSignal);
    }

    @Override
    public SignalProvidingVMPart getVMPart() {
        return new SignalProvidingVMPart() {
            private byte instr = 0;
            private byte step = 0;
            private byte newInst = 0;

            @Override
            public void onCLKRising() {
                newInst = getCurrentBusReader() == BUS.BusReader.INSTREG_IN ? getValueFromBus() : instr;
            }

            @Override
            public void onCLKRisingDone() {
                instr = newInst;

            }

            @Override
            public void onCLKFallingDone() {
                if (isActive(c.instReg.contSignal)) {
                    step = 0;
                } else {
                    step++;
                    step &= 0x0f;
                }
            }

            @Override
            BUS.BusWriter getWriter() {
                return null;
            }

            @Override
            byte getBusOutput() {
                throw new RuntimeException("Why ask for this!");
            }

            @Override
            public final void reset() {
                instr = 0;
                step = 0;
            }

            @Override
            public final Instruction getCurrentInstruction() {
                return c.is.instructions.get(instr);
            }

            @Override
            public byte getCurrentStep() {
                return step;
            }
        };
    }

    public abstract class SignalProvidingVMPart extends VMPart {
        public abstract void reset();

        public abstract Instruction getCurrentInstruction();

        public abstract byte getCurrentStep();

        public final Microcode getMicrocode() {
            Instruction currentInstruction = getCurrentInstruction();
            return currentInstruction.steps.get(getCurrentStep());
        }

        @Override
        public final boolean isActive(Signal signal) {
            return getMicrocode().activeSignals.contains(signal);
        }

        @Override
        final public BUS.BusWriter getCurrentBusWriter() {
            return getMicrocode().from;
        }

        @Override
        final public BUS.BusReader getCurrentBusReader() {
            return getMicrocode().to;
        }
    }
}
