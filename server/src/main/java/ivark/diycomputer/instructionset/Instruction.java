package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.BUS;
import ivark.diycomputer.model.Computer;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import static ivark.diycomputer.model.BUS.BusReader.*;
import static ivark.diycomputer.model.BUS.BusWriter.*;
import static java.util.stream.Collectors.*;

/**
 * Created by ivark on 13.05.17.
 */
public final class Instruction {
    private Computer c;
    public int num;
    public final String opcode;
    public Pattern pattern;
    public String description;
    public final String addressMode;
    public final List<Microcode> steps = new ArrayList<Microcode>();

    public Instruction(Computer c, String opcode, String pattern, String description, String addressMode) {
        try {
            this.c=c;
            this.opcode = opcode;
            this.pattern = Pattern.compile(pattern);
            this.description = description;
            this.addressMode=addressMode;

            // Load new instruction cycle:
            // Load both high and low from pc to mar, and set mar offset to zero
            addStep(new Microcode()
                    .bus(BUS.BusWriter.ZEROS, MAR_OFFSET_IN)
                    .withActive(c.mar.loadHighSignal, c.mar.loadLowSignal));

            // Put ram-value into instruction register, and increase pc and mar by 1
            addStep(new Microcode().bus(RAM_OUT, INSTREG_IN).withActive(c.pc.incSignal));

            // Must wait with marinc to next step because instructions are loaded on clk falling edge
            addStep(new Microcode().bus(ZEROS, NO_INPUT).withActive(c.mar.incSignal));

            // Instruction is loaded, offset is zero, and pc and mar points to first operand or next instruction.
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public void addStep(Microcode microcode) {
        steps.add(microcode);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Instruction: " + opcode + " (" + description + ")\n");
        sb.append("Pattern    : " + pattern + "\n");
        sb.append("Microcode steps: \n");
        for (int i = 0; i < steps.size(); i++) {
            Microcode step = steps.get(i);
            sb.append(i + "\t");
            if ((step.from == null) != (step.to == null)) {
                sb.append("### BUS ERROR ###");
            } else {
                if (step.from != null) {
                    sb.append("BUS[" + step.from.name() + " --> " + step.to.name() + "]\t");
                }
            }
            sb.append(step.activeSignals.stream().map(s -> s.fullName()).collect(joining(", ")) + "\n");
            if (step.activeSignals.size()==1 && step.activeSignals.get(0).equals(c.instReg.contSignal)) {
                break;
            }
        }
        return sb.toString();
    }

    public void addContinueAfterCompletion() {
        if (steps.size()>16) {
            throw new RuntimeException("Too many steps for instruction: +n"+toString());
        }
        for (int i=steps.size();i<16;i++) {
            steps.add(new Microcode().withActive(c.instReg.contSignal));
        }
    }

    public void checkRamWrite() {
        boolean lastRamIn=false;
        for (Microcode s:steps) {
            if (s.to==RAM_IN) {
                if (s.activeSignals.stream().anyMatch(sig -> sig == c.mar.incSignal)) {
                    throw new RuntimeException("Ram write in combination with mar.inc");
                }
                if (lastRamIn) {
                    throw new RuntimeException("Multiple ram writes");
                }
                lastRamIn = true;
            } else if (lastRamIn) {
                if (s.activeSignals.stream().anyMatch(sig -> sig == c.mar.incSignal)) {
                    fail("MAR change in step after RAM write, step "+steps.indexOf(s));
                }
                if (s.activeSignals.stream().anyMatch(sig -> sig == c.mar.loadHighSignal)) {
                    fail("MAR change in step after RAM write, step "+steps.indexOf(s));
                }
                if (s.activeSignals.stream().anyMatch(sig -> sig == c.mar.loadLowSignal)) {
                    fail("MAR change in step after RAM write, step "+steps.indexOf(s));
                }
                if (s.to==BUS.BusReader.MAR_OFFSET_IN) {
                    fail("MAR change in step after RAM write, step "+steps.indexOf(s));
                }
                lastRamIn = false;
            }
        }
    }

    void fail(String message) {
        throw new RuntimeException(message+" : \n"+this);
    }

    public void checkFlagWrite() {
        for (Microcode s:steps) {
            if (s.activeSignals.contains(c.alu.updateFlagsSignal)) {
                if (s.from!= ALU_OUT) {
                    throw new RuntimeException("Flag write without alu out enabled");
                }
            }
        }
    }

    public boolean isDummy() {
        return "dummy".equals(opcode);
    }

    public int numSteps() {
        for (int s=0;s<steps.size();s++) {
            if (steps.get(s).activeSignals.contains(c.instReg.contSignal)) {
                return s+1;
            }
        }
        return steps.size();
    }
}
