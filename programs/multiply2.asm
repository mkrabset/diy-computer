START:
LDX #01
STX C1

LP1:
LDX #01
STX C2

LP2:
LDX C1
LDY #80
W1:
DEC Y
BNE W1
LDY C1

LDX C2
LDZ #40
W2:
DEC Z
BNE W2
LDZ C2

JMP MUL
RET:
LDX SL
LDY #80
W3:
DEC Y
BNE W3


INC C2
LDY C2
CMPY #0A
BLE LP2
INC C1
LDY C1
CMPY #0A
BLE LP1
JMP START


MUL:
 STY AL
 STZ BL

 LDY #00
 STY AH
 STY SL
 STY SH

 LDZ #08
L1:
 LDY BL
 CLC
 ANDY #01
 BEQ L2
 LDY AL
 CLC
 ADDY SL
 STY SL
 LDY AH
 ADDY SH
 STY SH

L2:
 CLC
 ROR BL
 CLC
 ROL AL
 ROL AH
 DEC Z
 BNE L1
 JMP RET

BL:
B

AH:
B
AL:
B

SH:
B
SL:
B

C1:
B
C2:
B
