package ivark.diycomputer.model;

/**
 * Created by ivark on 24.05.17.
 */
public class BUS {
    public enum BusWriter {
        ZEROS,
        FLOATING,
        UNUSED_2,
        UNUSED_3,
        INPUT_3_OUT,
        INPUT_2_OUT,
        INPUT_1_OUT,
        INPUT_0_OUT,

        UNUSED_4,
        ALU_OUT,
        RAM_OUT,
        PC_OUT,
        TMP_OUT,
        Z_OUT,
        Y_OUT,
        X_OUT;

        private int[] numToPattern={0x0,0x8,0x4,0xc,0x2,0x6,0xa,0xe,0xf,0xb,0x7,0x3,0xd,0x5,0x9,0x1};

        public int getPattern() {
            return numToPattern[ordinal()]*16;
        }
    }

    public enum BusReader {
        NO_INPUT,
        UNUSED_1,
        OUTPUT_2_IN,
        OUTPUT_1_IN,
        OUTPUT_0_IN,
        ALU_B_IN,
        ALU_A_IN,
        RAM_IN,
        MAR_OFFSET_IN,
        PC_JMP_L_IN,
        PC_JMP_H_IN,
        INSTREG_IN,
        TMP_IN,
        Z_IN,
        Y_IN,
        X_IN;

        private int[] numToPattern={0x8,0xa,0x9,0xb,0xc,0xd,0xe,0xf,0x7,0x6,0x5,0x4,0x3,0x1,0x2,0x0};

        public int getPattern() {
            return numToPattern[ordinal()];
        }

    }
}
