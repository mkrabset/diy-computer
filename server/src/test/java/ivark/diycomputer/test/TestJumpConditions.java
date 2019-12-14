package ivark.diycomputer.test;

import ivark.diycomputer.model.Computer;
import ivark.diycomputer.model.PC;
import org.junit.Test;

/**
 * Created by ivark on 20.05.17.
 */
public class TestJumpConditions {

    @Test
    public void testSignals() {
        PC pc = new Computer().pc;
        for (PC.JumpCondition jmpCond:PC.JumpCondition.values()) {
            System.out.println(jmpCond.name()+" "+jmpCond.getConditionSignals(pc));
        }
    }

    @Test
    public void testPrintEEPROMDescr() {
        for (int i=0;i<256;i++) {
            PC.JumpCondition cond=PC.JumpCondition.values()[i & 0x0f];
            boolean z= (i & 0x10)==0x10;
            boolean n= (i & 0x20)==0x20;
            boolean c= (i & 0x40)==0x40;
            boolean v= (i & 0x80)==0x80;
            System.out.println(cond.name()+"\tz="+z+", n="+n+", c="+c+",v="+v+"\tresult="+(cond.eval(z,n,c,v) ? 1 : 0)+", expr="+cond.descr);
        }
    }


    @Test
    public void testPrintEEPROMContent() {
        for (int i=0;i<256;i++) {
            PC.JumpCondition cond=PC.JumpCondition.values()[i & 0x0f];
            boolean z= (i & 0x10)==0x10;
            boolean n= (i & 0x20)==0x20;
            boolean c= (i & 0x40)==0x40;
            boolean v= (i & 0x80)==0x80;
            System.out.print(", "+(cond.eval(z,n,c,v) ? 1 : 0));
        }
    }
}
