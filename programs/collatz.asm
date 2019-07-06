
START:
LDX #01
STX COUNTER

COUNTLOOP:
LDX #00
STX CURRH
LDX COUNTER
STX CURRL
OUT0 X
OUT1 X


COLLATZLOOP:
LDX CURRL
ANDX #01
BNE ODD

EVEN:
CLC
ROR CURRH
ROR CURRL
JMP COLLDONE

ODD:
LDX CURRL
LDY CURRH
CLC
ADDX CURRL
ADDY CURRH
SEC
ADDX CURRL
ADDY CURRH
STX CURRL
STY CURRH

COLLDONE:
LDX CURRL
OUT1 X
LDX CURRH
OUT2 X

LDX CURRH
CMPX #00
BNE COLLATZLOOP
LDX CURRL
CMPX #01
BNE COLLATZLOOP

INC COUNTER
BNE COUNTLOOP
JMP START

COUNTER:
B

CURRL:
B

CURRH:
B


