NOP
NOP
NOP
start:
  //JSR scramble3
  JSR scramble2
  //JSR scramble1


  JSR lcdreset
  JSR lcdclear
  JSR lcdhome

  LDX #06
  JSR lcdinstr

  JSR writemessage
  JMP start

scramble1:
  LDX #00
  LDY #57
scramble1_loop:
  JSR swapletters
  INC X
  INC Y
  CMPX #56
  BLS scramble1_loop
  RTS

scramble2:
  LDX #00
  LDY #01
scramble2_loop:
  JSR swapletters
  INC X
  INC X
  INC Y
  INC Y
  CMPX #AE
  BLS scramble2_loop
  RTS

scramble3:
  LDX #00
  LDY #AB
scramble3_loop:
  JSR swapletters
  INC X
  INC Y
  JSR swapletters
  INC X
  INC Y
  JSR swapletters
  SEC
  SUBY #05
  CMPX #56
  BLS scramble3_loop
  RTS



swapletters:
  PUSH Z
  LDZ message,X
  STZ tmp
  LDZ message,Y
  STZ message,X
  LDZ tmp
  STZ message,Y
  POP Z
  RTS


// LCD Printout subroutines
lcdreset:
  PUSH X
  LDX #0f
  JSR lcdinstr
  POP X
  RTS

lcdclear:
  PUSH X
  LDX #01
  JSR lcdinstr
  POP X
  RTS

lcdhome:
  PUSH X
  LDX #02
  JSR lcdinstr
  POP X
  RTS


lcdinstr:
  OUT0 X
  LDX #02
  OUT1 X
  LDX #00
  OUT1 X
  RTS

lcdwrite:
  OUT0 X
  LDX #03
  OUT1 X
  LDX #01
  OUT1 X
  RTS

writemessage:
  LDX #00
  STX idxl // Reset index counter
  STX idxh
loop:
  LDX idxl
  CLC
  ADDX messageptr+2
  STX getChar+2
  LDX idxh
  ADDX messageptr+1
  STX getChar+1
  JSR getChar
  CMPX #00
  BNE notdone
  RTS
notdone:
  JSR lcdwrite
  INC idxl
  BNE notoverflow
  INC idxh
notoverflow:
  LDX idxl
  ANDX #0f
  BNE screennotfull
  JSR lcdclear
  JSR lcdhome
screennotfull:
  LDY idxl
  LDZ idxh
  JMP loop

getChar:
  LDX $0000
  RTS

idxl:
B 0x 00
idxh:

messageptr:
LDX message

// Luke5 input
message:
//S 'tMlsioaplnKlflgiruKanliaebeLlkslikkpnerikTasatamkDpsdakeraBeIdaegptnuaKtmteorpuTaTtbtse'
//S 'sOHXxonibmksekaaoaKtrssegnveinRedlkkkroeekVtkekymmlooLnanoKtlstoepHrpeutdynfSneloietbol          \0'
S '123456789------------------------------------------------------------------------------'
S 'ABCDEFGHIJ.............................................................................          \0'
tmp:
B 0x00

