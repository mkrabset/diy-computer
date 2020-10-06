NOP
NOP
NOP
andtest1:
LDX #55
ANDX #23
trap1:
INC checksum
CMPX #01
BNE trap1
LDY #55
ANDY #23
trap2:
INC checksum
CMPY #01
BNE trap2
LDZ #55
ANDZ #23
trap3:
INC checksum
CMPZ #01
BNE trap3

ortest:



done:
LDX checksum
OUT0 X
JMP done



checksum:
B 0x 00
