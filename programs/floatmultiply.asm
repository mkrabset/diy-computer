
test:
 JSR floatmultiply


done:
 LDX floatmultiply_res
 OUT2 X
 LDX floatmultiply_res+1
 OUT2 X
 LDX floatmultiply_res+2
 OUT2 X
 LDX floatmultiply_res+3
 OUT2 X
 HLT
 JMP done


floatmultiply:
 PUSH X
 PUSH Y
 PUSH Z

 LDX floatmultiply_arg1
 STX floatmultiply_temp1
 LDX floatmultiply_arg1+1
 STX floatmultiply_temp1+1
 LDX floatmultiply_arg1+2
 STX floatmultiply_temp1+2
 LDX floatmultiply_arg1+3
 STX floatmultiply_temp1+3

 LDX floatmultiply_arg2
 STX floatmultiply_temp2
 LDX floatmultiply_arg2+1
 STX floatmultiply_temp2+1
 LDX floatmultiply_arg2+2
 STX floatmultiply_temp2+2
 LDX floatmultiply_arg2+3
 STX floatmultiply_temp2+3

 // Extract arg1 sign
 LDX floatmultiply_temp1
 ROLX
 LDX #00
 ADDX #00
 STX floatmultiply_res_sign

 // Extract arg2 sign
 LDX floatmultiply_temp2
 ROLX
 LDX #00
 ADDX #00
 XORX floatmultiply_res_sign
 STX floatmultiply_res_sign    // Result sign


 // Line up and normalize exponent 1
 LDX floatmultiply_temp1+1
 ROLX
 LDX floatmultiply_temp1
 ROLX
 SEC
 SUBX #7F
 STX floatmultiply_res

 // Line up and normalize exponent 2
 LDX floatmultiply_temp2+1
 ROLX
 LDX floatmultiply_temp2
 ROLX
 SEC
 SUBX #7F
 CLC
 ADDX floatmultiply_res
 CLC
 ADDX #7F
 STX floatmultiply_res


 LDX #00
 STX floatmultiply_res+1
 STX floatmultiply_res+2
 STX floatmultiply_res+3

 // Set MSB to 1 on both mantissas
 LDX floatmultiply_temp1+1
 ORX #80
 STX floatmultiply_temp1+1
 LDX floatmultiply_temp2+1
 ORX #80
 STX floatmultiply_temp2+1

 LDY #18
mul_loop:
 CLC
 ROL floatmultiply_temp1+3
 ROL floatmultiply_temp1+2
 ROL floatmultiply_temp1+1
 BCC mul_add_done  // If carry=1 pops out, do adding, otherwise skip
 CLC
 LDX floatmultiply_res+3
 ADDX floatmultiply_temp2+3
 STX floatmultiply_res+3
 LDX floatmultiply_res+2
 ADDX floatmultiply_temp2+2
 STX floatmultiply_res+2
 LDX floatmultiply_res+1
 ADDX floatmultiply_temp2+1
 STX floatmultiply_res+1
 BCC mul_add_done  // If adding resulted in carry, increase exp, otherwise skip
 INC floatmultiply_res // Increase exp
 SEC
 ROR floatmultiply_res+1
 ROR floatmultiply_res+2
 ROR floatmultiply_res+3
 CLC
 ROR floatmultiply_temp2+1
 ROR floatmultiply_temp2+2
 ROR floatmultiply_temp2+3
mul_add_done:
 CLC
 ROR floatmultiply_temp2+1
 ROR floatmultiply_temp2+2
 ROR floatmultiply_temp2+3
 DEC Y
 BNE mul_loop

 // zero out msb of mantissa (since it will be used for exp-lsb)
 LDX floatmultiply_res+1
 ANDX #7f
 STX floatmultiply_res+1

 // Put together sign and exponent
 LDX floatmultiply_res_sign
 RORX
 LDX floatmultiply_res
 RORX
 STX floatmultiply_res
 BCC mul_exp_lsb_clear
 LDX floatmultiply_res+1
 ORX #80
 STX floatmultiply_res+1
mul_exp_lsb_clear:

 POP Z
 POP Y
 POP X

 RTS


floatmultiply_arg1:
B 0x 40 49 0f db  // 01000000 01001001 00001111 11011011

floatmultiply_arg2:
B 0x 40 2d f8 54  // 01000000 00101101 11111000 01010100



floatmultiply_temp1:
B 0x 00 00 00 00

floatmultiply_temp2:
B 0x 00 00 00 00

floatmultiply_res_sign:
B 0x00

floatmultiply_res:
B 0x 00 00 00 00



floatmultiply_expected:
B 0x 41 08 a2 c0  // 01000001 00001000 10100010 11000000