NOP
NOP


start:
JSR blankVga
LDX diag
STX vgaX
STX vgaY
JSR setVgaX
JSR setVgaY
JSR writeMessage
JSR flipvga
INC diag
LDX diag
CMPX #20
BNE cont
LDX #00
STX diag

cont:
JMP start



writeMessage:
  PUSH X
  PUSH Y
  LDX #00
writeMessage_loop:
  LDY message,X
  CMPY #00
  BEQ writeMessage_done
  SUBY #40
  STY vgaData
  JSR setVgaData
  JSR setVgaX
  JSR writeVga
  INC vgaX
  INC X
  JMP writeMessage_loop
writeMessage_done:
  POP Y
  POP X
  RTS







blankVga:
PUSH X
PUSH Y
LDX #20
STX vgaData
JSR setVgaData
LDY #00
blankVga_yloop:
STY vgaY
JSR setVgaY
LDX #00
blankVga_xloop:
STX vgaX
JSR setVgaX
JSR writeVga
INC X
CMPX #2E
BNE blankVga_xloop
INC Y
CMPY #20
BNE blankVga_yloop
POP Y
POP X
RTS


setVgaX:
PUSH X
LDX vgaX
OUT1 X
POP X
RTS

setVgaY:
PUSH X
LDX vgaY
OUT2 X
POP X
RTS

setVgaData:
PUSH X
LDX vgaData
OUT0 X
POP X
RTS




writeVga:
PUSH X
LDX vgactrl
ORX #80
OUT3 X
ANDX #7F
OUT3 X
POP X
RTS

flipvga:
LDX vgactrl
XORX #40
STX vgactrl
OUT3 X
RTS


vgaX:
B 0x00

vgaY:
B 0x00

vgaData:
B 0x00

vgactrl:
B 0x00

diag:
B 0x00

message:
S 'DO YOU WANNA PLAY A GAME?\0'