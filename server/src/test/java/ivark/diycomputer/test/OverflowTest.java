package ivark.diycomputer.test;

/**
 * Created by ivark on 14.05.17.
 */
public class OverflowTest {

    public static void main(String...args) {
        boolean[] vals={false,true};

        System.out.println("A7\t B7\tS7\tOF");
        System.out.println("------------------------------------------------------------");
        for (boolean a7:vals) {
            for (boolean b7:vals) {
                for (boolean s7:vals) {

                    //boolean overflow=(a7 && b7 && !s7) | (!a7 & !b7 & s7);
                    boolean overflow=!(a7 ^ b7) & (a7 ^ s7);
                    System.out.println(a7+"\t"+b7+"\t"+s7+"\t"+overflow);
                }
            }
        }
    }
}
