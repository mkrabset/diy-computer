package ivark.diycomputer.model;

import ivark.diycomputer.instructionset.DIYInstructionSet;
import ivark.diycomputer.instructionset.InstructionSet;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ivark on 13.05.17.
 */
public class Computer {
    public final PC pc;;
    public final MUXHAT muxhat;
    public final MUX mux;
    public final MAR mar;
    public final RAM ram;
    public final INSTREG instReg;
    public final ALU alu;
    public final Register xreg;
    public final Register yreg;
    public final Register zreg;
    public final Register tmp;
    public final SP sp;
    public final OutReg out0;
    public final OutReg out1;
    public final OutReg out2;
    public final OutReg out3;
    public final CLK clock;
    public final List<Part> parts = new ArrayList<>();
    public final InstructionSet is;

    public Computer() {
        this.pc=new PC(this,"PC");
        this.muxhat = new MUXHAT(this,"MUXHAT");
        this.mux = new MUX(this,"MUX");
        this.mar = new MAR(this,"MAR");
        this.ram = new RAM(this,"RAM");
        this.instReg = new INSTREG(this,"INSTREG");
        this.alu = new ALU(this,"ALU");
        this.xreg = new Register(this,"X", BUS.BusReader.X_IN, BUS.BusWriter.X_OUT);
        this.yreg = new Register(this,"Y", BUS.BusReader.Y_IN, BUS.BusWriter.Y_OUT);
        this.zreg = new Register(this,"Z", BUS.BusReader.Z_IN, BUS.BusWriter.Z_OUT);
        this.tmp = new Register(this,"TMP", BUS.BusReader.TMP_IN, BUS.BusWriter.TMP_OUT);
        this.sp = new SP(this,"SP");
        this.out0= new OutReg(this,"OUT0", BUS.BusReader.OUTPUT_0_IN);
        this.out1= new OutReg(this,"OUT1", BUS.BusReader.OUTPUT_1_IN);
        this.out2= new OutReg(this,"OUT2", BUS.BusReader.OUTPUT_2_IN);
        this.out3= new OutReg(this,"OUT3", BUS.BusReader.OUTPUT_3_IN);
        this.clock = new CLK(this,"CLK");

        parts.forEach(part-> {
            part.signals().forEach(signal->{
                signal.owner=part;
            });
        });

        this.is = new DIYInstructionSet(this);
    }

    public void registerModule(Part module) {
        parts.add(module);
    }


    public static void main(String... args) {
        Computer c = new Computer();

        System.out.println("NON-BUS-IO signals:");
        System.out.println("--------------------");
        c.printNonBusIOSignals();
        System.out.println();

        System.out.println("Instruction set:");
        System.out.println("-----------------");
        System.out.println(c.is.toString());
        System.out.println("\n\n");
        System.out.println("Instruction set summary:");
        System.out.println("-------------------------");
        System.out.println(c.is.summary());
    }

    private void printNonBusIOSignals() {
        System.out.println("Active LOW:");
        System.out.println("===========");
        parts.forEach(m->{
            m.signals().stream().filter(s->s.activeValue==false).forEach(s->{
                System.out.println(s.descr());
            });
        });
        System.out.println();

        System.out.println("Active HIGH:");
        System.out.println("===========");
        parts.forEach(m->{
            m.signals().stream().filter(s->s.activeValue==true).forEach(s->{
                System.out.println(s.descr());
            });
        });
        System.out.println();
    }
}
