LDX #00
LDY #00
LDZ #00

L0:
PUSH X
PUSH Z
POP X
OUT0 X
POP X
L1:
OUT1 Y
L2:
OUT2 X
INC X
BNE L2
INC Y
BNE L1
INC Z
JMP L0