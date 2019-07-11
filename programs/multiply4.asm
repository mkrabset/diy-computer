
START:
LDX #00

LOOP1:
LDY #00

LOOP2:
STX AL
STY BL

JSR MUL

# Display result
OUT0 X
OUT1 Y

PUSH X
LDX SL
OUT2 X
POP X

INC Y
CMPY #0F
BLE LOOP2
INC X
CMPX #0F
BLE LOOP1
JMP START


WAIT:
DEC W
BNE WAIT
RTS

W:
B 0x 00


MUL: 
 PUSH X
 PUSH Y

 LDY #00
 STY AH
 STY SL
 STY SH

 LDZ #08
MUL1:
 LDY BL
 CLC
 ANDY #01
 BEQ MUL2
 LDY AL
 CLC
 ADDY SL
 STY SL
 LDY AH
 ADDY SH
 STY SH

MUL2:
 CLC
 ROR BL
 CLC
 ROL AL
 ROL AH
 DEC Z
 BNE MUL1
 POP Y
 POP X
 RTS
BL:
B 0x 00
AH:
B 0x 00
AL:
B 0x 00
SH:
B 0x 00
SL:
B 0x 00

