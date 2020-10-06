// Runs fib ut to 233, checks result, increases cnt, outputs cnt to out2, and repeates.
// Traps if wrong answer
NOP
NOP
CMPY #00
BNE trap
LDY #00
OUT0 Y
OUT1 Y
OUT2 Y

L1:
JSR WAIT
OUT0 Y
PUSH Y
JSR FIB
POP Y

PUSH Z
POP X
OUT1 X

INC Y

CMPY #0d
BNE L1
CMPX #E9
BNE trap
LDY #00
INC count
LDX count
OUT2 X
BNE L1
INC count2
LDX count2
OUT3 X
JMP L1

trap:
JMP trap

FIB:
CMPY #01
BGT FIB2
LDZ #01
RTS

FIB2:
DEC Y
PUSH Y
JSR FIB
POP Y
PUSH Z
DEC Y
JSR FIB
STZ FTEMP
POP Z
CLC
ADDZ FTEMP
RTS

FTEMP:
B 0x00


WAIT:
LDZ #80
WAIT2:
DEC Z
BNE WAIT2
RTS

count:
B 0x 00

count2:
B 0x 00
