NOP
NOP
NOP

start:
LDX #00
STX xrel
STX yrel

rewrite:
JSR blank
JSR blank
LDX #00
STX xpos
STX ypos
JSR writetext

INC xrel
LDX xrel
CMPX #2E
BNE rewrite
INC yrel
LDX #00
STX xrel
LDX yrel
CMPX #28
BNE rewrite

nonext:
JMP start


writetext:
LDX #00
textloop:
LDY text,X
CMPY #00
BEQ done
SUBY #40
STY char

PUSH X
PUSH Y
LDX xpos
ADDX xrel
LDY ypos
ADDY yrel
JSR setpos
POP Y
POP X
JSR write
JSR flip

PUSH X
LDX xpos
LDY ypos
JSR setpos
POP X
JSR write
JSR flip
INC xpos
LDY xpos
CMPY #28
BNE contline
LDY #00
STY xpos
INC ypos

contline:
INC X
JMP textloop

done:
RTS




blank:
LDX #20
STX char
LDX #00
xloop:
LDY #00
yloop:
JSR setpos
JSR write
INC Y
CMPY #1E
BNE yloop
INC X
CMPX #28
BNE xloop
JSR flip
RTS


flip:
PUSH X
LDX #00
OUT3 X
LDX flr
ADDX #40
ANDX #C0
STX flr
OUT3 X
POP X
RTS

write:
PUSH X
LDX char
OUT0 X
LDX flr
ORX #80
OUT3 X
NOP
LDX flr
OUT3 X
POP X
RTS

setpos:
OUT1 X
OUT2 Y
RTS

flr:
B 0x00

char:
B 0x00

xpos:
B 0x00

ypos:
B 0x00

xrel:
B 0x00

yrel:
B 0x00

text:
S 'DO YOU WANT TO PLAY A GAME?\0'

