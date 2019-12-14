package ivark.diycomputer.model;

import ivark.diycomputer.instructionset.Instruction;
import ivark.diycomputer.instructionset.Microcode;
import ivark.diycomputer.vm.VirtualMachine;

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
            void onCLKRising() {
                newInst = getCurrentBusReader() == BUS.BusReader.INSTREG_IN ? getValueFromBus() : instr;
            }

            @Override
            void onCLKRisingDone() {
                instr = newInst;

            }

            @Override
            protected void onCLKFallingDone() {
                if (isActive(c.instreg.contSignal)) {
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

            private Instruction getCurrentInstruction() {
                return c.is.instructions.get(instr);
            }

            @Override
            Microcode getMicrocode() {
                Instruction currentInstruction = getCurrentInstruction();
                return currentInstruction.steps.get(step);
            }
        };
    }

    abstract class SignalProvidingVMPart extends VMPart {
        abstract Microcode getMicrocode();

        @Override
        protected final boolean isActive(Signal signal) {
            return getMicrocode().activeSignals.contains(signal);
        }

        final public BUS.BusWriter getCurrentBusWriter() {
            return getMicrocode().from;
        }

        final public BUS.BusReader getCurrentBusReader() {
            return getMicrocode().to;
        }
    }
}
