package ivark.diycomputer.model;

import ivark.diycomputer.instructionset.InstructionSet;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ivark on 13.05.17.
 */
public class Computer {
    public final PC pc=new PC("PC");
    public final MAR mar=new MAR("MAR");
    public final RAM ram=new RAM("RAM");
    public final INSTREG instreg=new INSTREG("INSTREG");
    public final ALU alu=new ALU("ALU");
    public final Register xreg=new Register("X", BUS.BusReader.X_IN, BUS.BusWriter.X_OUT);
    public final Register yreg=new Register("Y", BUS.BusReader.Y_IN, BUS.BusWriter.Y_OUT);
    public final Register zreg=new Register("Z", BUS.BusReader.Z_IN, BUS.BusWriter.Z_OUT);
    public final Register tmp=new Register("TMP", BUS.BusReader.TMP_IN, BUS.BusWriter.TMP_OUT);
    public final SP sp=new SP("SP");
    public final CLK clock=new CLK("CLK");
    public final List<Module> modules= Arrays.asList(pc,mar,ram,instreg,alu,xreg,yreg,zreg, tmp, sp, clock);


    public Computer() {
        for (Module m:modules) {
            for (Signal s:m.signals()) {
                s.owner=m;
            }
        }
    }

    public static void main(String...args) {
        Computer c = new Computer();

        System.out.println("NON-BUS-IO signals:");
        System.out.println("--------------------");
        c.printNonBusIOSignals();
        System.out.println();


        InstructionSet instructionSet = new InstructionSet(c);
        System.out.println("Instruction set:");
        System.out.println("-----------------");
        System.out.println(instructionSet.toString());
        System.out.println("\n\n");
        System.out.println("Instruction set summary:");
        System.out.println("-------------------------");
        System.out.println(instructionSet.summary());
    }

    private void printNonBusIOSignals() {
        for (Module m:modules) {
            for (Signal s:m.signals()) {
                System.out.println(s.descr());
            }
        }
    }


}
