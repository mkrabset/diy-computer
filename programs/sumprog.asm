start:
 LDX #00
 STX cnt
 STX cnt+1
 STX sum
 STX sum+1
 JSR loop
 LDX sum
 OUT0 X
 LDX sum+1
 OUT1 X
 HLT
haltloop:
 JMP haltloop

loop:
 CLC
 LDX sum+1
 ADDX cnt+1
 STX sum+1
 LDX sum
 ADDX cnt
 STX sum
 LDX cnt
 CMPX max
 BNE cont
 LDX cnt+1
 CMPX max+1
 BNE cont
 RTS
cont:
 LDX cnt+1
 OUT2 X
 INC cnt+1
 LDX cnt+1
 CMPX #00
 BNE loop
 INC cnt
 JMP loop

sum:
B 0x 00 00

cnt:
B 0x 00 00

max:
B 0x 01 2C