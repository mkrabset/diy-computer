LDY #00
LDX #00
LDZ #00

L1:
OUT0 X
OUT1 Y
OUT2 Z
INC X
BNE L1
INC Y
BNE L1
INC Z
JMP L1
