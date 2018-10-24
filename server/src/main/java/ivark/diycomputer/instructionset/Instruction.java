package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.Computer;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import static ivark.diycomputer.model.BUS.BusReader.*;
import static ivark.diycomputer.model.BUS.BusWriter.PC_OUT;
import static ivark.diycomputer.model.BUS.BusWriter.RAM_OUT;
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
    public final List<Microcode> steps = new ArrayList<Microcode>();

    public Instruction(Computer c, String opcode, String pattern, String description) {
        try {
            this.c=c;
            this.opcode = opcode;
            this.pattern = Pattern.compile(pattern);
            this.description = description;
            addStep(new Microcode().bus(PC_OUT, MAR_H_IN));
            addStep(new Microcode().withActive(c.pc.lowOutSignal, c.pc.incSignal).bus(PC_OUT, MAR_L_IN));      // PC_l to MAR_l, pc++
            addStep(new Microcode().bus(RAM_OUT, INSTREG_IN));                              // RAM to INSTREG
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
        }
        return sb.toString();
    }

    public void addContinueAfterCompletion() {
        if (steps.size() < 16) {
            steps.add(new Microcode().withActive(c.instreg.contSignal));
        }
    }

    public void checkRamWrite() {
        boolean lastRamIn=false;
        for (Microcode s:steps) {
            if (s.to==RAM_IN) {
                if (lastRamIn) {
                    System.out.println("Multiple ram writes: "+opcode+"@"+num);
                }
                lastRamIn=true;
            } else {
                lastRamIn = false;
            }
        }
    }
}
