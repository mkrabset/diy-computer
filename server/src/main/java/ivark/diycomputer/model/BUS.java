package ivark.diycomputer.model;

/**
 * Created by ivark on 24.05.17.
 */
public class BUS {
    public enum BusWriter {
        ALU_OUT,
        PC_OUT,
        RAM_OUT,
        X_OUT,

        Y_OUT,
        Z_OUT,
        TMP_OUT,
        INPUT_0_OUT,

        INPUT_1_OUT,
        UNUSED_6,
        UNUSED_5,
        UNUSED_4,

        UNUSED_3,
        UNUSED_2,
        UNUSED_1,
        NO_OUTPUT;

        private int[] numToPattern={0x0,0x8,0x4,0xc,0x2,0x6,0xa,0xe,0xf,0xb,0x7,0x3,0xd,0x5,0x9,0x1};

        public int getPattern() {
            return numToPattern[ordinal()]*16;
        }
    }

    public enum BusReader {
        X_IN,
        Y_IN,
        Z_IN,
        TMP_IN,

        ALU_A_IN,
        ALU_B_IN,
        PC_JMP_H_IN,
        PC_JMP_L_IN,

        MAR_H_IN,
        MAR_L_IN,
        RAM_IN,
        INSTREG_IN,

        OUTPUT_0_IN,
        OUTPUT_1_IN,
        OUTPUT_2_IN,
        NO_INPUT;

        private int[] numToPattern={0x8,0xa,0x9,0xb,0xc,0xd,0xe,0xf,0x7,0x6,0x5,0x4,0x3,0x1,0x2,0x0};

        public int getPattern() {
            return numToPattern[ordinal()];
        }

    }
}
