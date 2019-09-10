package ivark.diycomputer.test;

import org.junit.Test;

import java.util.Arrays;
import java.util.stream.Collectors;

import static junit.framework.TestCase.fail;

public class OverflowTest2 {

    @Test
    public void writeTest() {
        for (int i=-8;i<=7;i++) {
            System.out.println(new Word(i,4)+" = "+i);
        }
    }

    @Test
    public void addtest() {
        for (int ai = -8; ai <= 7; ai++) {
            Word a=new Word(ai,4);
            for (int bi = -8; bi <= 7; bi++) {
                Word b=new Word(bi,4);
                boolean shouldOverflow=ai+bi > 7 || ai+bi < -8;
                Word sum = Word.add(a, b, false);
                boolean correct=sum.value() == ai+bi;
                System.out.println(ai + " + "+ bi+" = "+ sum.value() +", shouldOverflow="+shouldOverflow+", correct="+correct);
                if (shouldOverflow==correct) {
                    fail("WHAT!");
                }
            }
        }
    }


    // Test to prove that overflow can be indicated by the expression !(a7 ^ b7) & (a7 ^ s7);
    // Running a-b for all possible signed byte-values of a and b
    @Test
    public void subtracttest() {
        for (int ai = -128; ai <= 127; ai++) {
            Word a=new Word(ai,8);
            for (int bi = -128; bi <= 127; bi++) {
                Word b=new Word(bi,8).invert();
                boolean shouldOverflow=ai-bi > 127 || ai-bi < -128;
                Word diff = Word.add(a, b, true);
                boolean correctAnswer=diff.value() == ai-bi;
                boolean overflowIndicator=!(a.bits[0] ^ b.bits[0]) & (a.bits[0] ^ diff.bits[0]);
                //System.out.println(ai + " - "+ bi+" = "+ diff.value() +",  \tshouldOverflow="+(shouldOverflow?"1":"0")+", owerflowIndicator="+(overflowIndicator?"1":"0")+", correct="+correct);

                if (shouldOverflow==correctAnswer || overflowIndicator!=shouldOverflow) {
                    fail("WHAT!");
                }
            }
        }
    }

    static class Word {
        private final Boolean[] bits;

        public Word(int v, int w) {
            bits = new Boolean[w];
            int bv = 1;
            for (int i = w - 1; i >= 0; i--) {
                bits[i] = (v & bv) == bv;
                bv *= 2;
            }
        }

        public Word(Boolean[] bits) {
            this.bits = bits;
        }

        public int value() {
            Integer absvalue = Arrays.stream(bits).map(b -> b ? 1 : 0).reduce(0, (a, b) -> a * 2 + b);
            return bits[0] ? -(int) Math.pow(2, bits.length) + absvalue : absvalue;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bits.length; i++) {
                sb.append(bits[i] == true ? "1" : "0");
            }
            return sb.toString();
        }

        static Word add(Word a, Word b, boolean c) {
            Boolean[] res = new Boolean[a.bits.length];
            for (int i = a.bits.length - 1; i >= 0; i--) {
                boolean aa = a.bits[i];
                boolean bb = b.bits[i];
                res[i] = aa ^ bb ^ c;
                c = (aa && bb) || (aa && c) || (bb && c);
            }
            return new Word(res);
        }

        static boolean carryOut(Word a, Word b, boolean c) {
            for (int i = a.bits.length - 1; i >= 0; i--) {
                boolean aa = a.bits[i];
                boolean bb = b.bits[i];
                c = (aa && bb) || (aa && c) || (bb && c);
            }
            return c;
        }

        public Word negate() {
            return new Word(-value(), bits.length);
        }

        public Word invert() {
            return new Word(Arrays.stream(bits).map(b->!b).toArray(Boolean[]::new));
        }
    }


}
