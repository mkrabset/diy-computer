
# Output ports:
# out0, bit 0-7:  data
# out1, bit 0  :  instr / text (RS)
# out1, bit 1  :  enable        (E)

start:
  JSR lcdreset
  JSR lcdclear
  JSR lcdhome

  JSR writelcdtest
  JSR writelcdtest
  JMP start


lcdreset:
  PUSH X
  LDX #00
  OUT1 X
  LDX #0f
  OUT0 X
  LDX #02
  OUT1 X
  LDX #00
  OUT1 X
  POP X
  RTS

lcdclear:
  PUSH X
  LDX #00
  OUT1 X
  LDX #01
  OUT0 X
  LDX #02
  OUT1 X
  LDX #00
  OUT1 X
  POP X
  RTS

lcdhome:
  PUSH X
  LDX #00
  OUT1 X
  LDX #02
  OUT0 X
  LDX #02
  OUT1 X
  LDX #00
  OUT1 X
  POP X
  RTS

lcdwrite:
  OUT0 X
  LDX #03
  OUT1 X
  LDX #01
  OUT1 X
  RTS

writelcdtest:
  LDX #6c
  JSR lcdwrite
  LDX #63
  JSR lcdwrite
  LDX #64
  JSR lcdwrite
  LDX #74
  JSR lcdwrite
  LDX #65
  JSR lcdwrite
  LDX #73
  JSR lcdwrite
  LDX #74
  JSR lcdwrite
  LDX #20
  JSR lcdwrite
  RTS





