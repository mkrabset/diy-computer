NOP
NOP
NOP
start:
ANDtest:
LDX #00
ANDX #00
trap1:
INC checksum
CMPX #00
BNE trap1
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #00
trap2:
INC checksum
CMPY #00
BNE trap2
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #00
trap3:
INC checksum
CMPZ #00
BNE trap3
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #04
trap4:
INC checksum
CMPX #00
BNE trap4
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #04
trap5:
INC checksum
CMPY #00
BNE trap5
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #04
trap6:
INC checksum
CMPZ #00
BNE trap6
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #08
trap7:
INC checksum
CMPX #00
BNE trap7
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #08
trap8:
INC checksum
CMPY #00
BNE trap8
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #08
trap9:
INC checksum
CMPZ #00
BNE trap9
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #0c
trap10:
INC checksum
CMPX #00
BNE trap10
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #0c
trap11:
INC checksum
CMPY #00
BNE trap11
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #0c
trap12:
INC checksum
CMPZ #00
BNE trap12
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #10
trap13:
INC checksum
CMPX #00
BNE trap13
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #10
trap14:
INC checksum
CMPY #00
BNE trap14
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #10
trap15:
INC checksum
CMPZ #00
BNE trap15
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #14
trap16:
INC checksum
CMPX #00
BNE trap16
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #14
trap17:
INC checksum
CMPY #00
BNE trap17
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #14
trap18:
INC checksum
CMPZ #00
BNE trap18
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #18
trap19:
INC checksum
CMPX #00
BNE trap19
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #18
trap20:
INC checksum
CMPY #00
BNE trap20
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #18
trap21:
INC checksum
CMPZ #00
BNE trap21
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #1c
trap22:
INC checksum
CMPX #00
BNE trap22
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #1c
trap23:
INC checksum
CMPY #00
BNE trap23
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #1c
trap24:
INC checksum
CMPZ #00
BNE trap24
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #20
trap25:
INC checksum
CMPX #00
BNE trap25
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #20
trap26:
INC checksum
CMPY #00
BNE trap26
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #20
trap27:
INC checksum
CMPZ #00
BNE trap27
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #24
trap28:
INC checksum
CMPX #00
BNE trap28
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #24
trap29:
INC checksum
CMPY #00
BNE trap29
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #24
trap30:
INC checksum
CMPZ #00
BNE trap30
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #28
trap31:
INC checksum
CMPX #00
BNE trap31
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #28
trap32:
INC checksum
CMPY #00
BNE trap32
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #28
trap33:
INC checksum
CMPZ #00
BNE trap33
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #2c
trap34:
INC checksum
CMPX #00
BNE trap34
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #2c
trap35:
INC checksum
CMPY #00
BNE trap35
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #2c
trap36:
INC checksum
CMPZ #00
BNE trap36
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #30
trap37:
INC checksum
CMPX #00
BNE trap37
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #30
trap38:
INC checksum
CMPY #00
BNE trap38
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #30
trap39:
INC checksum
CMPZ #00
BNE trap39
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #34
trap40:
INC checksum
CMPX #00
BNE trap40
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #34
trap41:
INC checksum
CMPY #00
BNE trap41
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #34
trap42:
INC checksum
CMPZ #00
BNE trap42
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #38
trap43:
INC checksum
CMPX #00
BNE trap43
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #38
trap44:
INC checksum
CMPY #00
BNE trap44
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #38
trap45:
INC checksum
CMPZ #00
BNE trap45
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ANDX #3c
trap46:
INC checksum
CMPX #00
BNE trap46
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ANDY #3c
trap47:
INC checksum
CMPY #00
BNE trap47
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ANDZ #3c
trap48:
INC checksum
CMPZ #00
BNE trap48
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #00
trap49:
INC checksum
CMPX #00
BNE trap49
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #00
trap50:
INC checksum
CMPY #00
BNE trap50
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #00
trap51:
INC checksum
CMPZ #00
BNE trap51
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #04
trap52:
INC checksum
CMPX #04
BNE trap52
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #04
trap53:
INC checksum
CMPY #04
BNE trap53
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #04
trap54:
INC checksum
CMPZ #04
BNE trap54
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #08
trap55:
INC checksum
CMPX #00
BNE trap55
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #08
trap56:
INC checksum
CMPY #00
BNE trap56
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #08
trap57:
INC checksum
CMPZ #00
BNE trap57
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #0c
trap58:
INC checksum
CMPX #04
BNE trap58
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #0c
trap59:
INC checksum
CMPY #04
BNE trap59
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #0c
trap60:
INC checksum
CMPZ #04
BNE trap60
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #10
trap61:
INC checksum
CMPX #00
BNE trap61
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #10
trap62:
INC checksum
CMPY #00
BNE trap62
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #10
trap63:
INC checksum
CMPZ #00
BNE trap63
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #14
trap64:
INC checksum
CMPX #04
BNE trap64
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #14
trap65:
INC checksum
CMPY #04
BNE trap65
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #14
trap66:
INC checksum
CMPZ #04
BNE trap66
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #18
trap67:
INC checksum
CMPX #00
BNE trap67
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #18
trap68:
INC checksum
CMPY #00
BNE trap68
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #18
trap69:
INC checksum
CMPZ #00
BNE trap69
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #1c
trap70:
INC checksum
CMPX #04
BNE trap70
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #1c
trap71:
INC checksum
CMPY #04
BNE trap71
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #1c
trap72:
INC checksum
CMPZ #04
BNE trap72
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #20
trap73:
INC checksum
CMPX #00
BNE trap73
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #20
trap74:
INC checksum
CMPY #00
BNE trap74
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #20
trap75:
INC checksum
CMPZ #00
BNE trap75
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #24
trap76:
INC checksum
CMPX #04
BNE trap76
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #24
trap77:
INC checksum
CMPY #04
BNE trap77
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #24
trap78:
INC checksum
CMPZ #04
BNE trap78
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #28
trap79:
INC checksum
CMPX #00
BNE trap79
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #28
trap80:
INC checksum
CMPY #00
BNE trap80
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #28
trap81:
INC checksum
CMPZ #00
BNE trap81
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #2c
trap82:
INC checksum
CMPX #04
BNE trap82
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #2c
trap83:
INC checksum
CMPY #04
BNE trap83
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #2c
trap84:
INC checksum
CMPZ #04
BNE trap84
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #30
trap85:
INC checksum
CMPX #00
BNE trap85
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #30
trap86:
INC checksum
CMPY #00
BNE trap86
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #30
trap87:
INC checksum
CMPZ #00
BNE trap87
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #34
trap88:
INC checksum
CMPX #04
BNE trap88
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #34
trap89:
INC checksum
CMPY #04
BNE trap89
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #34
trap90:
INC checksum
CMPZ #04
BNE trap90
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #38
trap91:
INC checksum
CMPX #00
BNE trap91
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #38
trap92:
INC checksum
CMPY #00
BNE trap92
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #38
trap93:
INC checksum
CMPZ #00
BNE trap93
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ANDX #3c
trap94:
INC checksum
CMPX #04
BNE trap94
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ANDY #3c
trap95:
INC checksum
CMPY #04
BNE trap95
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ANDZ #3c
trap96:
INC checksum
CMPZ #04
BNE trap96
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #00
trap97:
INC checksum
CMPX #00
BNE trap97
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #00
trap98:
INC checksum
CMPY #00
BNE trap98
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #00
trap99:
INC checksum
CMPZ #00
BNE trap99
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #04
trap100:
INC checksum
CMPX #00
BNE trap100
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #04
trap101:
INC checksum
CMPY #00
BNE trap101
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #04
trap102:
INC checksum
CMPZ #00
BNE trap102
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #08
trap103:
INC checksum
CMPX #08
BNE trap103
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #08
trap104:
INC checksum
CMPY #08
BNE trap104
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #08
trap105:
INC checksum
CMPZ #08
BNE trap105
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #0c
trap106:
INC checksum
CMPX #08
BNE trap106
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #0c
trap107:
INC checksum
CMPY #08
BNE trap107
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #0c
trap108:
INC checksum
CMPZ #08
BNE trap108
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #10
trap109:
INC checksum
CMPX #00
BNE trap109
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #10
trap110:
INC checksum
CMPY #00
BNE trap110
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #10
trap111:
INC checksum
CMPZ #00
BNE trap111
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #14
trap112:
INC checksum
CMPX #00
BNE trap112
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #14
trap113:
INC checksum
CMPY #00
BNE trap113
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #14
trap114:
INC checksum
CMPZ #00
BNE trap114
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #18
trap115:
INC checksum
CMPX #08
BNE trap115
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #18
trap116:
INC checksum
CMPY #08
BNE trap116
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #18
trap117:
INC checksum
CMPZ #08
BNE trap117
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #1c
trap118:
INC checksum
CMPX #08
BNE trap118
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #1c
trap119:
INC checksum
CMPY #08
BNE trap119
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #1c
trap120:
INC checksum
CMPZ #08
BNE trap120
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #20
trap121:
INC checksum
CMPX #00
BNE trap121
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #20
trap122:
INC checksum
CMPY #00
BNE trap122
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #20
trap123:
INC checksum
CMPZ #00
BNE trap123
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #24
trap124:
INC checksum
CMPX #00
BNE trap124
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #24
trap125:
INC checksum
CMPY #00
BNE trap125
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #24
trap126:
INC checksum
CMPZ #00
BNE trap126
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #28
trap127:
INC checksum
CMPX #08
BNE trap127
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #28
trap128:
INC checksum
CMPY #08
BNE trap128
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #28
trap129:
INC checksum
CMPZ #08
BNE trap129
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #2c
trap130:
INC checksum
CMPX #08
BNE trap130
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #2c
trap131:
INC checksum
CMPY #08
BNE trap131
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #2c
trap132:
INC checksum
CMPZ #08
BNE trap132
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #30
trap133:
INC checksum
CMPX #00
BNE trap133
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #30
trap134:
INC checksum
CMPY #00
BNE trap134
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #30
trap135:
INC checksum
CMPZ #00
BNE trap135
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #34
trap136:
INC checksum
CMPX #00
BNE trap136
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #34
trap137:
INC checksum
CMPY #00
BNE trap137
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #34
trap138:
INC checksum
CMPZ #00
BNE trap138
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #38
trap139:
INC checksum
CMPX #08
BNE trap139
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #38
trap140:
INC checksum
CMPY #08
BNE trap140
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #38
trap141:
INC checksum
CMPZ #08
BNE trap141
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ANDX #3c
trap142:
INC checksum
CMPX #08
BNE trap142
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ANDY #3c
trap143:
INC checksum
CMPY #08
BNE trap143
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ANDZ #3c
trap144:
INC checksum
CMPZ #08
BNE trap144
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #00
trap145:
INC checksum
CMPX #00
BNE trap145
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #00
trap146:
INC checksum
CMPY #00
BNE trap146
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #00
trap147:
INC checksum
CMPZ #00
BNE trap147
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #04
trap148:
INC checksum
CMPX #04
BNE trap148
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #04
trap149:
INC checksum
CMPY #04
BNE trap149
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #04
trap150:
INC checksum
CMPZ #04
BNE trap150
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #08
trap151:
INC checksum
CMPX #08
BNE trap151
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #08
trap152:
INC checksum
CMPY #08
BNE trap152
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #08
trap153:
INC checksum
CMPZ #08
BNE trap153
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #0c
trap154:
INC checksum
CMPX #0c
BNE trap154
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #0c
trap155:
INC checksum
CMPY #0c
BNE trap155
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #0c
trap156:
INC checksum
CMPZ #0c
BNE trap156
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #10
trap157:
INC checksum
CMPX #00
BNE trap157
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #10
trap158:
INC checksum
CMPY #00
BNE trap158
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #10
trap159:
INC checksum
CMPZ #00
BNE trap159
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #14
trap160:
INC checksum
CMPX #04
BNE trap160
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #14
trap161:
INC checksum
CMPY #04
BNE trap161
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #14
trap162:
INC checksum
CMPZ #04
BNE trap162
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #18
trap163:
INC checksum
CMPX #08
BNE trap163
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #18
trap164:
INC checksum
CMPY #08
BNE trap164
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #18
trap165:
INC checksum
CMPZ #08
BNE trap165
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #1c
trap166:
INC checksum
CMPX #0c
BNE trap166
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #1c
trap167:
INC checksum
CMPY #0c
BNE trap167
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #1c
trap168:
INC checksum
CMPZ #0c
BNE trap168
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #20
trap169:
INC checksum
CMPX #00
BNE trap169
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #20
trap170:
INC checksum
CMPY #00
BNE trap170
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #20
trap171:
INC checksum
CMPZ #00
BNE trap171
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #24
trap172:
INC checksum
CMPX #04
BNE trap172
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #24
trap173:
INC checksum
CMPY #04
BNE trap173
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #24
trap174:
INC checksum
CMPZ #04
BNE trap174
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #28
trap175:
INC checksum
CMPX #08
BNE trap175
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #28
trap176:
INC checksum
CMPY #08
BNE trap176
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #28
trap177:
INC checksum
CMPZ #08
BNE trap177
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #2c
trap178:
INC checksum
CMPX #0c
BNE trap178
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #2c
trap179:
INC checksum
CMPY #0c
BNE trap179
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #2c
trap180:
INC checksum
CMPZ #0c
BNE trap180
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #30
trap181:
INC checksum
CMPX #00
BNE trap181
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #30
trap182:
INC checksum
CMPY #00
BNE trap182
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #30
trap183:
INC checksum
CMPZ #00
BNE trap183
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #34
trap184:
INC checksum
CMPX #04
BNE trap184
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #34
trap185:
INC checksum
CMPY #04
BNE trap185
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #34
trap186:
INC checksum
CMPZ #04
BNE trap186
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #38
trap187:
INC checksum
CMPX #08
BNE trap187
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #38
trap188:
INC checksum
CMPY #08
BNE trap188
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #38
trap189:
INC checksum
CMPZ #08
BNE trap189
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ANDX #3c
trap190:
INC checksum
CMPX #0c
BNE trap190
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ANDY #3c
trap191:
INC checksum
CMPY #0c
BNE trap191
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ANDZ #3c
trap192:
INC checksum
CMPZ #0c
BNE trap192
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #00
trap193:
INC checksum
CMPX #00
BNE trap193
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #00
trap194:
INC checksum
CMPY #00
BNE trap194
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #00
trap195:
INC checksum
CMPZ #00
BNE trap195
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #04
trap196:
INC checksum
CMPX #00
BNE trap196
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #04
trap197:
INC checksum
CMPY #00
BNE trap197
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #04
trap198:
INC checksum
CMPZ #00
BNE trap198
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #08
trap199:
INC checksum
CMPX #00
BNE trap199
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #08
trap200:
INC checksum
CMPY #00
BNE trap200
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #08
trap201:
INC checksum
CMPZ #00
BNE trap201
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #0c
trap202:
INC checksum
CMPX #00
BNE trap202
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #0c
trap203:
INC checksum
CMPY #00
BNE trap203
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #0c
trap204:
INC checksum
CMPZ #00
BNE trap204
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #10
trap205:
INC checksum
CMPX #10
BNE trap205
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #10
trap206:
INC checksum
CMPY #10
BNE trap206
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #10
trap207:
INC checksum
CMPZ #10
BNE trap207
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #14
trap208:
INC checksum
CMPX #10
BNE trap208
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #14
trap209:
INC checksum
CMPY #10
BNE trap209
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #14
trap210:
INC checksum
CMPZ #10
BNE trap210
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #18
trap211:
INC checksum
CMPX #10
BNE trap211
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #18
trap212:
INC checksum
CMPY #10
BNE trap212
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #18
trap213:
INC checksum
CMPZ #10
BNE trap213
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #1c
trap214:
INC checksum
CMPX #10
BNE trap214
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #1c
trap215:
INC checksum
CMPY #10
BNE trap215
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #1c
trap216:
INC checksum
CMPZ #10
BNE trap216
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #20
trap217:
INC checksum
CMPX #00
BNE trap217
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #20
trap218:
INC checksum
CMPY #00
BNE trap218
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #20
trap219:
INC checksum
CMPZ #00
BNE trap219
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #24
trap220:
INC checksum
CMPX #00
BNE trap220
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #24
trap221:
INC checksum
CMPY #00
BNE trap221
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #24
trap222:
INC checksum
CMPZ #00
BNE trap222
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #28
trap223:
INC checksum
CMPX #00
BNE trap223
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #28
trap224:
INC checksum
CMPY #00
BNE trap224
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #28
trap225:
INC checksum
CMPZ #00
BNE trap225
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #2c
trap226:
INC checksum
CMPX #00
BNE trap226
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #2c
trap227:
INC checksum
CMPY #00
BNE trap227
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #2c
trap228:
INC checksum
CMPZ #00
BNE trap228
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #30
trap229:
INC checksum
CMPX #10
BNE trap229
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #30
trap230:
INC checksum
CMPY #10
BNE trap230
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #30
trap231:
INC checksum
CMPZ #10
BNE trap231
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #34
trap232:
INC checksum
CMPX #10
BNE trap232
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #34
trap233:
INC checksum
CMPY #10
BNE trap233
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #34
trap234:
INC checksum
CMPZ #10
BNE trap234
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #38
trap235:
INC checksum
CMPX #10
BNE trap235
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #38
trap236:
INC checksum
CMPY #10
BNE trap236
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #38
trap237:
INC checksum
CMPZ #10
BNE trap237
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ANDX #3c
trap238:
INC checksum
CMPX #10
BNE trap238
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ANDY #3c
trap239:
INC checksum
CMPY #10
BNE trap239
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ANDZ #3c
trap240:
INC checksum
CMPZ #10
BNE trap240
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #00
trap241:
INC checksum
CMPX #00
BNE trap241
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #00
trap242:
INC checksum
CMPY #00
BNE trap242
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #00
trap243:
INC checksum
CMPZ #00
BNE trap243
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #04
trap244:
INC checksum
CMPX #04
BNE trap244
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #04
trap245:
INC checksum
CMPY #04
BNE trap245
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #04
trap246:
INC checksum
CMPZ #04
BNE trap246
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #08
trap247:
INC checksum
CMPX #00
BNE trap247
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #08
trap248:
INC checksum
CMPY #00
BNE trap248
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #08
trap249:
INC checksum
CMPZ #00
BNE trap249
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #0c
trap250:
INC checksum
CMPX #04
BNE trap250
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #0c
trap251:
INC checksum
CMPY #04
BNE trap251
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #0c
trap252:
INC checksum
CMPZ #04
BNE trap252
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #10
trap253:
INC checksum
CMPX #10
BNE trap253
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #10
trap254:
INC checksum
CMPY #10
BNE trap254
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #10
trap255:
INC checksum
CMPZ #10
BNE trap255
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #14
trap256:
INC checksum
CMPX #14
BNE trap256
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #14
trap257:
INC checksum
CMPY #14
BNE trap257
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #14
trap258:
INC checksum
CMPZ #14
BNE trap258
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #18
trap259:
INC checksum
CMPX #10
BNE trap259
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #18
trap260:
INC checksum
CMPY #10
BNE trap260
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #18
trap261:
INC checksum
CMPZ #10
BNE trap261
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #1c
trap262:
INC checksum
CMPX #14
BNE trap262
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #1c
trap263:
INC checksum
CMPY #14
BNE trap263
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #1c
trap264:
INC checksum
CMPZ #14
BNE trap264
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #20
trap265:
INC checksum
CMPX #00
BNE trap265
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #20
trap266:
INC checksum
CMPY #00
BNE trap266
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #20
trap267:
INC checksum
CMPZ #00
BNE trap267
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #24
trap268:
INC checksum
CMPX #04
BNE trap268
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #24
trap269:
INC checksum
CMPY #04
BNE trap269
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #24
trap270:
INC checksum
CMPZ #04
BNE trap270
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #28
trap271:
INC checksum
CMPX #00
BNE trap271
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #28
trap272:
INC checksum
CMPY #00
BNE trap272
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #28
trap273:
INC checksum
CMPZ #00
BNE trap273
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #2c
trap274:
INC checksum
CMPX #04
BNE trap274
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #2c
trap275:
INC checksum
CMPY #04
BNE trap275
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #2c
trap276:
INC checksum
CMPZ #04
BNE trap276
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #30
trap277:
INC checksum
CMPX #10
BNE trap277
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #30
trap278:
INC checksum
CMPY #10
BNE trap278
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #30
trap279:
INC checksum
CMPZ #10
BNE trap279
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #34
trap280:
INC checksum
CMPX #14
BNE trap280
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #34
trap281:
INC checksum
CMPY #14
BNE trap281
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #34
trap282:
INC checksum
CMPZ #14
BNE trap282
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #38
trap283:
INC checksum
CMPX #10
BNE trap283
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #38
trap284:
INC checksum
CMPY #10
BNE trap284
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #38
trap285:
INC checksum
CMPZ #10
BNE trap285
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ANDX #3c
trap286:
INC checksum
CMPX #14
BNE trap286
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ANDY #3c
trap287:
INC checksum
CMPY #14
BNE trap287
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ANDZ #3c
trap288:
INC checksum
CMPZ #14
BNE trap288
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #00
trap289:
INC checksum
CMPX #00
BNE trap289
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #00
trap290:
INC checksum
CMPY #00
BNE trap290
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #00
trap291:
INC checksum
CMPZ #00
BNE trap291
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #04
trap292:
INC checksum
CMPX #00
BNE trap292
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #04
trap293:
INC checksum
CMPY #00
BNE trap293
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #04
trap294:
INC checksum
CMPZ #00
BNE trap294
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #08
trap295:
INC checksum
CMPX #08
BNE trap295
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #08
trap296:
INC checksum
CMPY #08
BNE trap296
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #08
trap297:
INC checksum
CMPZ #08
BNE trap297
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #0c
trap298:
INC checksum
CMPX #08
BNE trap298
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #0c
trap299:
INC checksum
CMPY #08
BNE trap299
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #0c
trap300:
INC checksum
CMPZ #08
BNE trap300
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #10
trap301:
INC checksum
CMPX #10
BNE trap301
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #10
trap302:
INC checksum
CMPY #10
BNE trap302
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #10
trap303:
INC checksum
CMPZ #10
BNE trap303
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #14
trap304:
INC checksum
CMPX #10
BNE trap304
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #14
trap305:
INC checksum
CMPY #10
BNE trap305
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #14
trap306:
INC checksum
CMPZ #10
BNE trap306
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #18
trap307:
INC checksum
CMPX #18
BNE trap307
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #18
trap308:
INC checksum
CMPY #18
BNE trap308
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #18
trap309:
INC checksum
CMPZ #18
BNE trap309
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #1c
trap310:
INC checksum
CMPX #18
BNE trap310
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #1c
trap311:
INC checksum
CMPY #18
BNE trap311
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #1c
trap312:
INC checksum
CMPZ #18
BNE trap312
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #20
trap313:
INC checksum
CMPX #00
BNE trap313
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #20
trap314:
INC checksum
CMPY #00
BNE trap314
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #20
trap315:
INC checksum
CMPZ #00
BNE trap315
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #24
trap316:
INC checksum
CMPX #00
BNE trap316
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #24
trap317:
INC checksum
CMPY #00
BNE trap317
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #24
trap318:
INC checksum
CMPZ #00
BNE trap318
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #28
trap319:
INC checksum
CMPX #08
BNE trap319
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #28
trap320:
INC checksum
CMPY #08
BNE trap320
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #28
trap321:
INC checksum
CMPZ #08
BNE trap321
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #2c
trap322:
INC checksum
CMPX #08
BNE trap322
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #2c
trap323:
INC checksum
CMPY #08
BNE trap323
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #2c
trap324:
INC checksum
CMPZ #08
BNE trap324
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #30
trap325:
INC checksum
CMPX #10
BNE trap325
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #30
trap326:
INC checksum
CMPY #10
BNE trap326
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #30
trap327:
INC checksum
CMPZ #10
BNE trap327
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #34
trap328:
INC checksum
CMPX #10
BNE trap328
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #34
trap329:
INC checksum
CMPY #10
BNE trap329
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #34
trap330:
INC checksum
CMPZ #10
BNE trap330
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #38
trap331:
INC checksum
CMPX #18
BNE trap331
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #38
trap332:
INC checksum
CMPY #18
BNE trap332
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #38
trap333:
INC checksum
CMPZ #18
BNE trap333
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ANDX #3c
trap334:
INC checksum
CMPX #18
BNE trap334
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ANDY #3c
trap335:
INC checksum
CMPY #18
BNE trap335
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ANDZ #3c
trap336:
INC checksum
CMPZ #18
BNE trap336
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #00
trap337:
INC checksum
CMPX #00
BNE trap337
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #00
trap338:
INC checksum
CMPY #00
BNE trap338
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #00
trap339:
INC checksum
CMPZ #00
BNE trap339
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #04
trap340:
INC checksum
CMPX #04
BNE trap340
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #04
trap341:
INC checksum
CMPY #04
BNE trap341
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #04
trap342:
INC checksum
CMPZ #04
BNE trap342
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #08
trap343:
INC checksum
CMPX #08
BNE trap343
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #08
trap344:
INC checksum
CMPY #08
BNE trap344
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #08
trap345:
INC checksum
CMPZ #08
BNE trap345
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #0c
trap346:
INC checksum
CMPX #0c
BNE trap346
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #0c
trap347:
INC checksum
CMPY #0c
BNE trap347
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #0c
trap348:
INC checksum
CMPZ #0c
BNE trap348
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #10
trap349:
INC checksum
CMPX #10
BNE trap349
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #10
trap350:
INC checksum
CMPY #10
BNE trap350
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #10
trap351:
INC checksum
CMPZ #10
BNE trap351
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #14
trap352:
INC checksum
CMPX #14
BNE trap352
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #14
trap353:
INC checksum
CMPY #14
BNE trap353
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #14
trap354:
INC checksum
CMPZ #14
BNE trap354
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #18
trap355:
INC checksum
CMPX #18
BNE trap355
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #18
trap356:
INC checksum
CMPY #18
BNE trap356
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #18
trap357:
INC checksum
CMPZ #18
BNE trap357
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #1c
trap358:
INC checksum
CMPX #1c
BNE trap358
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #1c
trap359:
INC checksum
CMPY #1c
BNE trap359
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #1c
trap360:
INC checksum
CMPZ #1c
BNE trap360
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #20
trap361:
INC checksum
CMPX #00
BNE trap361
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #20
trap362:
INC checksum
CMPY #00
BNE trap362
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #20
trap363:
INC checksum
CMPZ #00
BNE trap363
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #24
trap364:
INC checksum
CMPX #04
BNE trap364
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #24
trap365:
INC checksum
CMPY #04
BNE trap365
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #24
trap366:
INC checksum
CMPZ #04
BNE trap366
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #28
trap367:
INC checksum
CMPX #08
BNE trap367
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #28
trap368:
INC checksum
CMPY #08
BNE trap368
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #28
trap369:
INC checksum
CMPZ #08
BNE trap369
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #2c
trap370:
INC checksum
CMPX #0c
BNE trap370
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #2c
trap371:
INC checksum
CMPY #0c
BNE trap371
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #2c
trap372:
INC checksum
CMPZ #0c
BNE trap372
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #30
trap373:
INC checksum
CMPX #10
BNE trap373
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #30
trap374:
INC checksum
CMPY #10
BNE trap374
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #30
trap375:
INC checksum
CMPZ #10
BNE trap375
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #34
trap376:
INC checksum
CMPX #14
BNE trap376
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #34
trap377:
INC checksum
CMPY #14
BNE trap377
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #34
trap378:
INC checksum
CMPZ #14
BNE trap378
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #38
trap379:
INC checksum
CMPX #18
BNE trap379
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #38
trap380:
INC checksum
CMPY #18
BNE trap380
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #38
trap381:
INC checksum
CMPZ #18
BNE trap381
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ANDX #3c
trap382:
INC checksum
CMPX #1c
BNE trap382
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ANDY #3c
trap383:
INC checksum
CMPY #1c
BNE trap383
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ANDZ #3c
trap384:
INC checksum
CMPZ #1c
BNE trap384
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #00
trap385:
INC checksum
CMPX #00
BNE trap385
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #00
trap386:
INC checksum
CMPY #00
BNE trap386
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #00
trap387:
INC checksum
CMPZ #00
BNE trap387
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #04
trap388:
INC checksum
CMPX #00
BNE trap388
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #04
trap389:
INC checksum
CMPY #00
BNE trap389
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #04
trap390:
INC checksum
CMPZ #00
BNE trap390
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #08
trap391:
INC checksum
CMPX #00
BNE trap391
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #08
trap392:
INC checksum
CMPY #00
BNE trap392
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #08
trap393:
INC checksum
CMPZ #00
BNE trap393
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #0c
trap394:
INC checksum
CMPX #00
BNE trap394
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #0c
trap395:
INC checksum
CMPY #00
BNE trap395
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #0c
trap396:
INC checksum
CMPZ #00
BNE trap396
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #10
trap397:
INC checksum
CMPX #00
BNE trap397
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #10
trap398:
INC checksum
CMPY #00
BNE trap398
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #10
trap399:
INC checksum
CMPZ #00
BNE trap399
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #14
trap400:
INC checksum
CMPX #00
BNE trap400
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #14
trap401:
INC checksum
CMPY #00
BNE trap401
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #14
trap402:
INC checksum
CMPZ #00
BNE trap402
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #18
trap403:
INC checksum
CMPX #00
BNE trap403
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #18
trap404:
INC checksum
CMPY #00
BNE trap404
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #18
trap405:
INC checksum
CMPZ #00
BNE trap405
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #1c
trap406:
INC checksum
CMPX #00
BNE trap406
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #1c
trap407:
INC checksum
CMPY #00
BNE trap407
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #1c
trap408:
INC checksum
CMPZ #00
BNE trap408
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #20
trap409:
INC checksum
CMPX #20
BNE trap409
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #20
trap410:
INC checksum
CMPY #20
BNE trap410
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #20
trap411:
INC checksum
CMPZ #20
BNE trap411
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #24
trap412:
INC checksum
CMPX #20
BNE trap412
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #24
trap413:
INC checksum
CMPY #20
BNE trap413
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #24
trap414:
INC checksum
CMPZ #20
BNE trap414
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #28
trap415:
INC checksum
CMPX #20
BNE trap415
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #28
trap416:
INC checksum
CMPY #20
BNE trap416
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #28
trap417:
INC checksum
CMPZ #20
BNE trap417
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #2c
trap418:
INC checksum
CMPX #20
BNE trap418
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #2c
trap419:
INC checksum
CMPY #20
BNE trap419
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #2c
trap420:
INC checksum
CMPZ #20
BNE trap420
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #30
trap421:
INC checksum
CMPX #20
BNE trap421
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #30
trap422:
INC checksum
CMPY #20
BNE trap422
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #30
trap423:
INC checksum
CMPZ #20
BNE trap423
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #34
trap424:
INC checksum
CMPX #20
BNE trap424
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #34
trap425:
INC checksum
CMPY #20
BNE trap425
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #34
trap426:
INC checksum
CMPZ #20
BNE trap426
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #38
trap427:
INC checksum
CMPX #20
BNE trap427
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #38
trap428:
INC checksum
CMPY #20
BNE trap428
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #38
trap429:
INC checksum
CMPZ #20
BNE trap429
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ANDX #3c
trap430:
INC checksum
CMPX #20
BNE trap430
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ANDY #3c
trap431:
INC checksum
CMPY #20
BNE trap431
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ANDZ #3c
trap432:
INC checksum
CMPZ #20
BNE trap432
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #00
trap433:
INC checksum
CMPX #00
BNE trap433
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #00
trap434:
INC checksum
CMPY #00
BNE trap434
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #00
trap435:
INC checksum
CMPZ #00
BNE trap435
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #04
trap436:
INC checksum
CMPX #04
BNE trap436
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #04
trap437:
INC checksum
CMPY #04
BNE trap437
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #04
trap438:
INC checksum
CMPZ #04
BNE trap438
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #08
trap439:
INC checksum
CMPX #00
BNE trap439
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #08
trap440:
INC checksum
CMPY #00
BNE trap440
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #08
trap441:
INC checksum
CMPZ #00
BNE trap441
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #0c
trap442:
INC checksum
CMPX #04
BNE trap442
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #0c
trap443:
INC checksum
CMPY #04
BNE trap443
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #0c
trap444:
INC checksum
CMPZ #04
BNE trap444
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #10
trap445:
INC checksum
CMPX #00
BNE trap445
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #10
trap446:
INC checksum
CMPY #00
BNE trap446
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #10
trap447:
INC checksum
CMPZ #00
BNE trap447
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #14
trap448:
INC checksum
CMPX #04
BNE trap448
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #14
trap449:
INC checksum
CMPY #04
BNE trap449
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #14
trap450:
INC checksum
CMPZ #04
BNE trap450
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #18
trap451:
INC checksum
CMPX #00
BNE trap451
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #18
trap452:
INC checksum
CMPY #00
BNE trap452
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #18
trap453:
INC checksum
CMPZ #00
BNE trap453
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #1c
trap454:
INC checksum
CMPX #04
BNE trap454
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #1c
trap455:
INC checksum
CMPY #04
BNE trap455
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #1c
trap456:
INC checksum
CMPZ #04
BNE trap456
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #20
trap457:
INC checksum
CMPX #20
BNE trap457
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #20
trap458:
INC checksum
CMPY #20
BNE trap458
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #20
trap459:
INC checksum
CMPZ #20
BNE trap459
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #24
trap460:
INC checksum
CMPX #24
BNE trap460
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #24
trap461:
INC checksum
CMPY #24
BNE trap461
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #24
trap462:
INC checksum
CMPZ #24
BNE trap462
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #28
trap463:
INC checksum
CMPX #20
BNE trap463
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #28
trap464:
INC checksum
CMPY #20
BNE trap464
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #28
trap465:
INC checksum
CMPZ #20
BNE trap465
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #2c
trap466:
INC checksum
CMPX #24
BNE trap466
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #2c
trap467:
INC checksum
CMPY #24
BNE trap467
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #2c
trap468:
INC checksum
CMPZ #24
BNE trap468
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #30
trap469:
INC checksum
CMPX #20
BNE trap469
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #30
trap470:
INC checksum
CMPY #20
BNE trap470
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #30
trap471:
INC checksum
CMPZ #20
BNE trap471
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #34
trap472:
INC checksum
CMPX #24
BNE trap472
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #34
trap473:
INC checksum
CMPY #24
BNE trap473
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #34
trap474:
INC checksum
CMPZ #24
BNE trap474
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #38
trap475:
INC checksum
CMPX #20
BNE trap475
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #38
trap476:
INC checksum
CMPY #20
BNE trap476
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #38
trap477:
INC checksum
CMPZ #20
BNE trap477
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ANDX #3c
trap478:
INC checksum
CMPX #24
BNE trap478
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ANDY #3c
trap479:
INC checksum
CMPY #24
BNE trap479
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ANDZ #3c
trap480:
INC checksum
CMPZ #24
BNE trap480
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #00
trap481:
INC checksum
CMPX #00
BNE trap481
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #00
trap482:
INC checksum
CMPY #00
BNE trap482
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #00
trap483:
INC checksum
CMPZ #00
BNE trap483
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #04
trap484:
INC checksum
CMPX #00
BNE trap484
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #04
trap485:
INC checksum
CMPY #00
BNE trap485
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #04
trap486:
INC checksum
CMPZ #00
BNE trap486
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #08
trap487:
INC checksum
CMPX #08
BNE trap487
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #08
trap488:
INC checksum
CMPY #08
BNE trap488
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #08
trap489:
INC checksum
CMPZ #08
BNE trap489
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #0c
trap490:
INC checksum
CMPX #08
BNE trap490
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #0c
trap491:
INC checksum
CMPY #08
BNE trap491
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #0c
trap492:
INC checksum
CMPZ #08
BNE trap492
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #10
trap493:
INC checksum
CMPX #00
BNE trap493
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #10
trap494:
INC checksum
CMPY #00
BNE trap494
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #10
trap495:
INC checksum
CMPZ #00
BNE trap495
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #14
trap496:
INC checksum
CMPX #00
BNE trap496
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #14
trap497:
INC checksum
CMPY #00
BNE trap497
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #14
trap498:
INC checksum
CMPZ #00
BNE trap498
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #18
trap499:
INC checksum
CMPX #08
BNE trap499
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #18
trap500:
INC checksum
CMPY #08
BNE trap500
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #18
trap501:
INC checksum
CMPZ #08
BNE trap501
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #1c
trap502:
INC checksum
CMPX #08
BNE trap502
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #1c
trap503:
INC checksum
CMPY #08
BNE trap503
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #1c
trap504:
INC checksum
CMPZ #08
BNE trap504
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #20
trap505:
INC checksum
CMPX #20
BNE trap505
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #20
trap506:
INC checksum
CMPY #20
BNE trap506
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #20
trap507:
INC checksum
CMPZ #20
BNE trap507
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #24
trap508:
INC checksum
CMPX #20
BNE trap508
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #24
trap509:
INC checksum
CMPY #20
BNE trap509
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #24
trap510:
INC checksum
CMPZ #20
BNE trap510
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #28
trap511:
INC checksum
CMPX #28
BNE trap511
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #28
trap512:
INC checksum
CMPY #28
BNE trap512
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #28
trap513:
INC checksum
CMPZ #28
BNE trap513
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #2c
trap514:
INC checksum
CMPX #28
BNE trap514
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #2c
trap515:
INC checksum
CMPY #28
BNE trap515
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #2c
trap516:
INC checksum
CMPZ #28
BNE trap516
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #30
trap517:
INC checksum
CMPX #20
BNE trap517
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #30
trap518:
INC checksum
CMPY #20
BNE trap518
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #30
trap519:
INC checksum
CMPZ #20
BNE trap519
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #34
trap520:
INC checksum
CMPX #20
BNE trap520
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #34
trap521:
INC checksum
CMPY #20
BNE trap521
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #34
trap522:
INC checksum
CMPZ #20
BNE trap522
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #38
trap523:
INC checksum
CMPX #28
BNE trap523
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #38
trap524:
INC checksum
CMPY #28
BNE trap524
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #38
trap525:
INC checksum
CMPZ #28
BNE trap525
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ANDX #3c
trap526:
INC checksum
CMPX #28
BNE trap526
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ANDY #3c
trap527:
INC checksum
CMPY #28
BNE trap527
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ANDZ #3c
trap528:
INC checksum
CMPZ #28
BNE trap528
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #00
trap529:
INC checksum
CMPX #00
BNE trap529
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #00
trap530:
INC checksum
CMPY #00
BNE trap530
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #00
trap531:
INC checksum
CMPZ #00
BNE trap531
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #04
trap532:
INC checksum
CMPX #04
BNE trap532
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #04
trap533:
INC checksum
CMPY #04
BNE trap533
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #04
trap534:
INC checksum
CMPZ #04
BNE trap534
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #08
trap535:
INC checksum
CMPX #08
BNE trap535
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #08
trap536:
INC checksum
CMPY #08
BNE trap536
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #08
trap537:
INC checksum
CMPZ #08
BNE trap537
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #0c
trap538:
INC checksum
CMPX #0c
BNE trap538
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #0c
trap539:
INC checksum
CMPY #0c
BNE trap539
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #0c
trap540:
INC checksum
CMPZ #0c
BNE trap540
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #10
trap541:
INC checksum
CMPX #00
BNE trap541
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #10
trap542:
INC checksum
CMPY #00
BNE trap542
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #10
trap543:
INC checksum
CMPZ #00
BNE trap543
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #14
trap544:
INC checksum
CMPX #04
BNE trap544
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #14
trap545:
INC checksum
CMPY #04
BNE trap545
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #14
trap546:
INC checksum
CMPZ #04
BNE trap546
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #18
trap547:
INC checksum
CMPX #08
BNE trap547
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #18
trap548:
INC checksum
CMPY #08
BNE trap548
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #18
trap549:
INC checksum
CMPZ #08
BNE trap549
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #1c
trap550:
INC checksum
CMPX #0c
BNE trap550
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #1c
trap551:
INC checksum
CMPY #0c
BNE trap551
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #1c
trap552:
INC checksum
CMPZ #0c
BNE trap552
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #20
trap553:
INC checksum
CMPX #20
BNE trap553
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #20
trap554:
INC checksum
CMPY #20
BNE trap554
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #20
trap555:
INC checksum
CMPZ #20
BNE trap555
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #24
trap556:
INC checksum
CMPX #24
BNE trap556
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #24
trap557:
INC checksum
CMPY #24
BNE trap557
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #24
trap558:
INC checksum
CMPZ #24
BNE trap558
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #28
trap559:
INC checksum
CMPX #28
BNE trap559
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #28
trap560:
INC checksum
CMPY #28
BNE trap560
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #28
trap561:
INC checksum
CMPZ #28
BNE trap561
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #2c
trap562:
INC checksum
CMPX #2c
BNE trap562
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #2c
trap563:
INC checksum
CMPY #2c
BNE trap563
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #2c
trap564:
INC checksum
CMPZ #2c
BNE trap564
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #30
trap565:
INC checksum
CMPX #20
BNE trap565
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #30
trap566:
INC checksum
CMPY #20
BNE trap566
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #30
trap567:
INC checksum
CMPZ #20
BNE trap567
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #34
trap568:
INC checksum
CMPX #24
BNE trap568
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #34
trap569:
INC checksum
CMPY #24
BNE trap569
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #34
trap570:
INC checksum
CMPZ #24
BNE trap570
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #38
trap571:
INC checksum
CMPX #28
BNE trap571
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #38
trap572:
INC checksum
CMPY #28
BNE trap572
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #38
trap573:
INC checksum
CMPZ #28
BNE trap573
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ANDX #3c
trap574:
INC checksum
CMPX #2c
BNE trap574
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ANDY #3c
trap575:
INC checksum
CMPY #2c
BNE trap575
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ANDZ #3c
trap576:
INC checksum
CMPZ #2c
BNE trap576
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #00
trap577:
INC checksum
CMPX #00
BNE trap577
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #00
trap578:
INC checksum
CMPY #00
BNE trap578
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #00
trap579:
INC checksum
CMPZ #00
BNE trap579
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #04
trap580:
INC checksum
CMPX #00
BNE trap580
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #04
trap581:
INC checksum
CMPY #00
BNE trap581
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #04
trap582:
INC checksum
CMPZ #00
BNE trap582
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #08
trap583:
INC checksum
CMPX #00
BNE trap583
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #08
trap584:
INC checksum
CMPY #00
BNE trap584
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #08
trap585:
INC checksum
CMPZ #00
BNE trap585
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #0c
trap586:
INC checksum
CMPX #00
BNE trap586
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #0c
trap587:
INC checksum
CMPY #00
BNE trap587
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #0c
trap588:
INC checksum
CMPZ #00
BNE trap588
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #10
trap589:
INC checksum
CMPX #10
BNE trap589
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #10
trap590:
INC checksum
CMPY #10
BNE trap590
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #10
trap591:
INC checksum
CMPZ #10
BNE trap591
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #14
trap592:
INC checksum
CMPX #10
BNE trap592
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #14
trap593:
INC checksum
CMPY #10
BNE trap593
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #14
trap594:
INC checksum
CMPZ #10
BNE trap594
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #18
trap595:
INC checksum
CMPX #10
BNE trap595
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #18
trap596:
INC checksum
CMPY #10
BNE trap596
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #18
trap597:
INC checksum
CMPZ #10
BNE trap597
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #1c
trap598:
INC checksum
CMPX #10
BNE trap598
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #1c
trap599:
INC checksum
CMPY #10
BNE trap599
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #1c
trap600:
INC checksum
CMPZ #10
BNE trap600
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #20
trap601:
INC checksum
CMPX #20
BNE trap601
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #20
trap602:
INC checksum
CMPY #20
BNE trap602
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #20
trap603:
INC checksum
CMPZ #20
BNE trap603
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #24
trap604:
INC checksum
CMPX #20
BNE trap604
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #24
trap605:
INC checksum
CMPY #20
BNE trap605
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #24
trap606:
INC checksum
CMPZ #20
BNE trap606
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #28
trap607:
INC checksum
CMPX #20
BNE trap607
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #28
trap608:
INC checksum
CMPY #20
BNE trap608
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #28
trap609:
INC checksum
CMPZ #20
BNE trap609
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #2c
trap610:
INC checksum
CMPX #20
BNE trap610
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #2c
trap611:
INC checksum
CMPY #20
BNE trap611
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #2c
trap612:
INC checksum
CMPZ #20
BNE trap612
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #30
trap613:
INC checksum
CMPX #30
BNE trap613
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #30
trap614:
INC checksum
CMPY #30
BNE trap614
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #30
trap615:
INC checksum
CMPZ #30
BNE trap615
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #34
trap616:
INC checksum
CMPX #30
BNE trap616
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #34
trap617:
INC checksum
CMPY #30
BNE trap617
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #34
trap618:
INC checksum
CMPZ #30
BNE trap618
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #38
trap619:
INC checksum
CMPX #30
BNE trap619
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #38
trap620:
INC checksum
CMPY #30
BNE trap620
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #38
trap621:
INC checksum
CMPZ #30
BNE trap621
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ANDX #3c
trap622:
INC checksum
CMPX #30
BNE trap622
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ANDY #3c
trap623:
INC checksum
CMPY #30
BNE trap623
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ANDZ #3c
trap624:
INC checksum
CMPZ #30
BNE trap624
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #00
trap625:
INC checksum
CMPX #00
BNE trap625
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #00
trap626:
INC checksum
CMPY #00
BNE trap626
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #00
trap627:
INC checksum
CMPZ #00
BNE trap627
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #04
trap628:
INC checksum
CMPX #04
BNE trap628
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #04
trap629:
INC checksum
CMPY #04
BNE trap629
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #04
trap630:
INC checksum
CMPZ #04
BNE trap630
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #08
trap631:
INC checksum
CMPX #00
BNE trap631
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #08
trap632:
INC checksum
CMPY #00
BNE trap632
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #08
trap633:
INC checksum
CMPZ #00
BNE trap633
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #0c
trap634:
INC checksum
CMPX #04
BNE trap634
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #0c
trap635:
INC checksum
CMPY #04
BNE trap635
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #0c
trap636:
INC checksum
CMPZ #04
BNE trap636
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #10
trap637:
INC checksum
CMPX #10
BNE trap637
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #10
trap638:
INC checksum
CMPY #10
BNE trap638
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #10
trap639:
INC checksum
CMPZ #10
BNE trap639
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #14
trap640:
INC checksum
CMPX #14
BNE trap640
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #14
trap641:
INC checksum
CMPY #14
BNE trap641
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #14
trap642:
INC checksum
CMPZ #14
BNE trap642
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #18
trap643:
INC checksum
CMPX #10
BNE trap643
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #18
trap644:
INC checksum
CMPY #10
BNE trap644
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #18
trap645:
INC checksum
CMPZ #10
BNE trap645
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #1c
trap646:
INC checksum
CMPX #14
BNE trap646
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #1c
trap647:
INC checksum
CMPY #14
BNE trap647
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #1c
trap648:
INC checksum
CMPZ #14
BNE trap648
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #20
trap649:
INC checksum
CMPX #20
BNE trap649
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #20
trap650:
INC checksum
CMPY #20
BNE trap650
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #20
trap651:
INC checksum
CMPZ #20
BNE trap651
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #24
trap652:
INC checksum
CMPX #24
BNE trap652
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #24
trap653:
INC checksum
CMPY #24
BNE trap653
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #24
trap654:
INC checksum
CMPZ #24
BNE trap654
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #28
trap655:
INC checksum
CMPX #20
BNE trap655
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #28
trap656:
INC checksum
CMPY #20
BNE trap656
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #28
trap657:
INC checksum
CMPZ #20
BNE trap657
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #2c
trap658:
INC checksum
CMPX #24
BNE trap658
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #2c
trap659:
INC checksum
CMPY #24
BNE trap659
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #2c
trap660:
INC checksum
CMPZ #24
BNE trap660
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #30
trap661:
INC checksum
CMPX #30
BNE trap661
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #30
trap662:
INC checksum
CMPY #30
BNE trap662
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #30
trap663:
INC checksum
CMPZ #30
BNE trap663
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #34
trap664:
INC checksum
CMPX #34
BNE trap664
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #34
trap665:
INC checksum
CMPY #34
BNE trap665
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #34
trap666:
INC checksum
CMPZ #34
BNE trap666
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #38
trap667:
INC checksum
CMPX #30
BNE trap667
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #38
trap668:
INC checksum
CMPY #30
BNE trap668
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #38
trap669:
INC checksum
CMPZ #30
BNE trap669
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ANDX #3c
trap670:
INC checksum
CMPX #34
BNE trap670
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ANDY #3c
trap671:
INC checksum
CMPY #34
BNE trap671
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ANDZ #3c
trap672:
INC checksum
CMPZ #34
BNE trap672
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #00
trap673:
INC checksum
CMPX #00
BNE trap673
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #00
trap674:
INC checksum
CMPY #00
BNE trap674
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #00
trap675:
INC checksum
CMPZ #00
BNE trap675
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #04
trap676:
INC checksum
CMPX #00
BNE trap676
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #04
trap677:
INC checksum
CMPY #00
BNE trap677
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #04
trap678:
INC checksum
CMPZ #00
BNE trap678
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #08
trap679:
INC checksum
CMPX #08
BNE trap679
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #08
trap680:
INC checksum
CMPY #08
BNE trap680
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #08
trap681:
INC checksum
CMPZ #08
BNE trap681
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #0c
trap682:
INC checksum
CMPX #08
BNE trap682
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #0c
trap683:
INC checksum
CMPY #08
BNE trap683
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #0c
trap684:
INC checksum
CMPZ #08
BNE trap684
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #10
trap685:
INC checksum
CMPX #10
BNE trap685
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #10
trap686:
INC checksum
CMPY #10
BNE trap686
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #10
trap687:
INC checksum
CMPZ #10
BNE trap687
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #14
trap688:
INC checksum
CMPX #10
BNE trap688
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #14
trap689:
INC checksum
CMPY #10
BNE trap689
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #14
trap690:
INC checksum
CMPZ #10
BNE trap690
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #18
trap691:
INC checksum
CMPX #18
BNE trap691
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #18
trap692:
INC checksum
CMPY #18
BNE trap692
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #18
trap693:
INC checksum
CMPZ #18
BNE trap693
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #1c
trap694:
INC checksum
CMPX #18
BNE trap694
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #1c
trap695:
INC checksum
CMPY #18
BNE trap695
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #1c
trap696:
INC checksum
CMPZ #18
BNE trap696
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #20
trap697:
INC checksum
CMPX #20
BNE trap697
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #20
trap698:
INC checksum
CMPY #20
BNE trap698
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #20
trap699:
INC checksum
CMPZ #20
BNE trap699
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #24
trap700:
INC checksum
CMPX #20
BNE trap700
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #24
trap701:
INC checksum
CMPY #20
BNE trap701
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #24
trap702:
INC checksum
CMPZ #20
BNE trap702
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #28
trap703:
INC checksum
CMPX #28
BNE trap703
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #28
trap704:
INC checksum
CMPY #28
BNE trap704
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #28
trap705:
INC checksum
CMPZ #28
BNE trap705
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #2c
trap706:
INC checksum
CMPX #28
BNE trap706
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #2c
trap707:
INC checksum
CMPY #28
BNE trap707
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #2c
trap708:
INC checksum
CMPZ #28
BNE trap708
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #30
trap709:
INC checksum
CMPX #30
BNE trap709
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #30
trap710:
INC checksum
CMPY #30
BNE trap710
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #30
trap711:
INC checksum
CMPZ #30
BNE trap711
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #34
trap712:
INC checksum
CMPX #30
BNE trap712
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #34
trap713:
INC checksum
CMPY #30
BNE trap713
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #34
trap714:
INC checksum
CMPZ #30
BNE trap714
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #38
trap715:
INC checksum
CMPX #38
BNE trap715
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #38
trap716:
INC checksum
CMPY #38
BNE trap716
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #38
trap717:
INC checksum
CMPZ #38
BNE trap717
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ANDX #3c
trap718:
INC checksum
CMPX #38
BNE trap718
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ANDY #3c
trap719:
INC checksum
CMPY #38
BNE trap719
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ANDZ #3c
trap720:
INC checksum
CMPZ #38
BNE trap720
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #00
trap721:
INC checksum
CMPX #00
BNE trap721
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #00
trap722:
INC checksum
CMPY #00
BNE trap722
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #00
trap723:
INC checksum
CMPZ #00
BNE trap723
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #04
trap724:
INC checksum
CMPX #04
BNE trap724
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #04
trap725:
INC checksum
CMPY #04
BNE trap725
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #04
trap726:
INC checksum
CMPZ #04
BNE trap726
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #08
trap727:
INC checksum
CMPX #08
BNE trap727
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #08
trap728:
INC checksum
CMPY #08
BNE trap728
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #08
trap729:
INC checksum
CMPZ #08
BNE trap729
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #0c
trap730:
INC checksum
CMPX #0c
BNE trap730
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #0c
trap731:
INC checksum
CMPY #0c
BNE trap731
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #0c
trap732:
INC checksum
CMPZ #0c
BNE trap732
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #10
trap733:
INC checksum
CMPX #10
BNE trap733
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #10
trap734:
INC checksum
CMPY #10
BNE trap734
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #10
trap735:
INC checksum
CMPZ #10
BNE trap735
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #14
trap736:
INC checksum
CMPX #14
BNE trap736
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #14
trap737:
INC checksum
CMPY #14
BNE trap737
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #14
trap738:
INC checksum
CMPZ #14
BNE trap738
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #18
trap739:
INC checksum
CMPX #18
BNE trap739
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #18
trap740:
INC checksum
CMPY #18
BNE trap740
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #18
trap741:
INC checksum
CMPZ #18
BNE trap741
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #1c
trap742:
INC checksum
CMPX #1c
BNE trap742
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #1c
trap743:
INC checksum
CMPY #1c
BNE trap743
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #1c
trap744:
INC checksum
CMPZ #1c
BNE trap744
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #20
trap745:
INC checksum
CMPX #20
BNE trap745
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #20
trap746:
INC checksum
CMPY #20
BNE trap746
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #20
trap747:
INC checksum
CMPZ #20
BNE trap747
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #24
trap748:
INC checksum
CMPX #24
BNE trap748
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #24
trap749:
INC checksum
CMPY #24
BNE trap749
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #24
trap750:
INC checksum
CMPZ #24
BNE trap750
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #28
trap751:
INC checksum
CMPX #28
BNE trap751
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #28
trap752:
INC checksum
CMPY #28
BNE trap752
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #28
trap753:
INC checksum
CMPZ #28
BNE trap753
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #2c
trap754:
INC checksum
CMPX #2c
BNE trap754
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #2c
trap755:
INC checksum
CMPY #2c
BNE trap755
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #2c
trap756:
INC checksum
CMPZ #2c
BNE trap756
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #30
trap757:
INC checksum
CMPX #30
BNE trap757
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #30
trap758:
INC checksum
CMPY #30
BNE trap758
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #30
trap759:
INC checksum
CMPZ #30
BNE trap759
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #34
trap760:
INC checksum
CMPX #34
BNE trap760
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #34
trap761:
INC checksum
CMPY #34
BNE trap761
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #34
trap762:
INC checksum
CMPZ #34
BNE trap762
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #38
trap763:
INC checksum
CMPX #38
BNE trap763
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #38
trap764:
INC checksum
CMPY #38
BNE trap764
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #38
trap765:
INC checksum
CMPZ #38
BNE trap765
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ANDX #3c
trap766:
INC checksum
CMPX #3c
BNE trap766
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ANDY #3c
trap767:
INC checksum
CMPY #3c
BNE trap767
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ANDZ #3c
trap768:
INC checksum
CMPZ #3c
BNE trap768
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

done:
LDX checksum
OUT0 X
CMPX #00
BNE stop
OUT1 X
INC repetitions
BNE skiprep2
INC repetitions2
skiprep2:
LDX repetitions
OUT2 X
LDX repetitions2
OUT3 X
JMP start

sub:
RTS

stop:
JMP stop

repetitions:
B 0x 00
repetitions2:
B 0x 00
checksum:
B 0x 00
