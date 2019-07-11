
# Output ports:
# out0, bit 0-7:  data
# out1, bit 0  :  instr / text (RS)
# out1, bit 1  :  enable        (E)

start:
  JSR lcdreset
  JSR lcdclear
  JSR lcdhome

  LDX #06
  JSR lcdinstr


  JSR writemessage
  JMP start


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
  STX idx // Reset index counter
loop:
  LDX idx
  CLC
  ADDX messageptr+2
  STX getChar+2
  LDX #00
  ADDX messageptr+1
  STX getChar+1
  JSR getChar
  CMPX #00
  BNE notdone
  RTS
notdone:
  JSR lcdwrite
  INC idx
  LDX idx
  ANDX #0f
  BNE screennotfull
  JSR lcdclear
  JSR lcdhome
screennotfull:
  JMP loop

getChar:
  LDX $0000
  RTS

idx:
B 0x 00

messageptr:
LDX message

message:
S ' Now the Lord had prepared a great fish to swallow up Jonah. Jonah. '
S ' There go the ships ; there is that Leviathan whom thou hast made to play therein. Psalms. '
S ' In that day, the Lord with his sore, and great, and strong sword, shall punish Leviathan the piercing serpent, even Leviathan that crooked serpent ; and he shall slay the dragon that is in the sea. Isaiah. '
S '* And what thing soever besides cometh within the chaos of this monster's mouth, be it beast, boat, or stone, down it goes all incontinently that foul great swallow of his, and perisheth in the bottomless gulf of his paunch.'
S 'HollancFs Plutarch's Morals.'
S 'The Indian Sea breedeth the most and the biggest fishes that are : among which the Whales and Whirlpooles called Balaene, take up as much in length as four acres or arpens of land. Holland's Pliny. \0'



