NOP
NOP
NOP
NOP
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

ORtest:
LDX #00
ORX #00
trap769:
INC checksum
CMPX #00
BNE trap769
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #00
trap770:
INC checksum
CMPY #00
BNE trap770
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #00
trap771:
INC checksum
CMPZ #00
BNE trap771
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #04
trap772:
INC checksum
CMPX #04
BNE trap772
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #04
trap773:
INC checksum
CMPY #04
BNE trap773
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #04
trap774:
INC checksum
CMPZ #04
BNE trap774
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #08
trap775:
INC checksum
CMPX #08
BNE trap775
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #08
trap776:
INC checksum
CMPY #08
BNE trap776
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #08
trap777:
INC checksum
CMPZ #08
BNE trap777
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #0c
trap778:
INC checksum
CMPX #0c
BNE trap778
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #0c
trap779:
INC checksum
CMPY #0c
BNE trap779
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #0c
trap780:
INC checksum
CMPZ #0c
BNE trap780
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #10
trap781:
INC checksum
CMPX #10
BNE trap781
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #10
trap782:
INC checksum
CMPY #10
BNE trap782
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #10
trap783:
INC checksum
CMPZ #10
BNE trap783
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #14
trap784:
INC checksum
CMPX #14
BNE trap784
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #14
trap785:
INC checksum
CMPY #14
BNE trap785
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #14
trap786:
INC checksum
CMPZ #14
BNE trap786
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #18
trap787:
INC checksum
CMPX #18
BNE trap787
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #18
trap788:
INC checksum
CMPY #18
BNE trap788
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #18
trap789:
INC checksum
CMPZ #18
BNE trap789
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #1c
trap790:
INC checksum
CMPX #1c
BNE trap790
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #1c
trap791:
INC checksum
CMPY #1c
BNE trap791
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #1c
trap792:
INC checksum
CMPZ #1c
BNE trap792
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #20
trap793:
INC checksum
CMPX #20
BNE trap793
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #20
trap794:
INC checksum
CMPY #20
BNE trap794
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #20
trap795:
INC checksum
CMPZ #20
BNE trap795
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #24
trap796:
INC checksum
CMPX #24
BNE trap796
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #24
trap797:
INC checksum
CMPY #24
BNE trap797
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #24
trap798:
INC checksum
CMPZ #24
BNE trap798
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #28
trap799:
INC checksum
CMPX #28
BNE trap799
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #28
trap800:
INC checksum
CMPY #28
BNE trap800
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #28
trap801:
INC checksum
CMPZ #28
BNE trap801
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #2c
trap802:
INC checksum
CMPX #2c
BNE trap802
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #2c
trap803:
INC checksum
CMPY #2c
BNE trap803
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #2c
trap804:
INC checksum
CMPZ #2c
BNE trap804
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #30
trap805:
INC checksum
CMPX #30
BNE trap805
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #30
trap806:
INC checksum
CMPY #30
BNE trap806
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #30
trap807:
INC checksum
CMPZ #30
BNE trap807
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #34
trap808:
INC checksum
CMPX #34
BNE trap808
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #34
trap809:
INC checksum
CMPY #34
BNE trap809
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #34
trap810:
INC checksum
CMPZ #34
BNE trap810
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #38
trap811:
INC checksum
CMPX #38
BNE trap811
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #38
trap812:
INC checksum
CMPY #38
BNE trap812
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #38
trap813:
INC checksum
CMPZ #38
BNE trap813
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #3c
trap814:
INC checksum
CMPX #3c
BNE trap814
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #3c
trap815:
INC checksum
CMPY #3c
BNE trap815
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #3c
trap816:
INC checksum
CMPZ #3c
BNE trap816
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #00
trap817:
INC checksum
CMPX #04
BNE trap817
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #00
trap818:
INC checksum
CMPY #04
BNE trap818
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #00
trap819:
INC checksum
CMPZ #04
BNE trap819
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #04
trap820:
INC checksum
CMPX #04
BNE trap820
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #04
trap821:
INC checksum
CMPY #04
BNE trap821
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #04
trap822:
INC checksum
CMPZ #04
BNE trap822
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #08
trap823:
INC checksum
CMPX #0c
BNE trap823
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #08
trap824:
INC checksum
CMPY #0c
BNE trap824
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #08
trap825:
INC checksum
CMPZ #0c
BNE trap825
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #0c
trap826:
INC checksum
CMPX #0c
BNE trap826
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #0c
trap827:
INC checksum
CMPY #0c
BNE trap827
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #0c
trap828:
INC checksum
CMPZ #0c
BNE trap828
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #10
trap829:
INC checksum
CMPX #14
BNE trap829
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #10
trap830:
INC checksum
CMPY #14
BNE trap830
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #10
trap831:
INC checksum
CMPZ #14
BNE trap831
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #14
trap832:
INC checksum
CMPX #14
BNE trap832
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #14
trap833:
INC checksum
CMPY #14
BNE trap833
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #14
trap834:
INC checksum
CMPZ #14
BNE trap834
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #18
trap835:
INC checksum
CMPX #1c
BNE trap835
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #18
trap836:
INC checksum
CMPY #1c
BNE trap836
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #18
trap837:
INC checksum
CMPZ #1c
BNE trap837
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #1c
trap838:
INC checksum
CMPX #1c
BNE trap838
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #1c
trap839:
INC checksum
CMPY #1c
BNE trap839
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #1c
trap840:
INC checksum
CMPZ #1c
BNE trap840
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #20
trap841:
INC checksum
CMPX #24
BNE trap841
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #20
trap842:
INC checksum
CMPY #24
BNE trap842
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #20
trap843:
INC checksum
CMPZ #24
BNE trap843
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #24
trap844:
INC checksum
CMPX #24
BNE trap844
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #24
trap845:
INC checksum
CMPY #24
BNE trap845
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #24
trap846:
INC checksum
CMPZ #24
BNE trap846
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #28
trap847:
INC checksum
CMPX #2c
BNE trap847
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #28
trap848:
INC checksum
CMPY #2c
BNE trap848
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #28
trap849:
INC checksum
CMPZ #2c
BNE trap849
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #2c
trap850:
INC checksum
CMPX #2c
BNE trap850
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #2c
trap851:
INC checksum
CMPY #2c
BNE trap851
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #2c
trap852:
INC checksum
CMPZ #2c
BNE trap852
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #30
trap853:
INC checksum
CMPX #34
BNE trap853
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #30
trap854:
INC checksum
CMPY #34
BNE trap854
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #30
trap855:
INC checksum
CMPZ #34
BNE trap855
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #34
trap856:
INC checksum
CMPX #34
BNE trap856
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #34
trap857:
INC checksum
CMPY #34
BNE trap857
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #34
trap858:
INC checksum
CMPZ #34
BNE trap858
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #38
trap859:
INC checksum
CMPX #3c
BNE trap859
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #38
trap860:
INC checksum
CMPY #3c
BNE trap860
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #38
trap861:
INC checksum
CMPZ #3c
BNE trap861
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #3c
trap862:
INC checksum
CMPX #3c
BNE trap862
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #3c
trap863:
INC checksum
CMPY #3c
BNE trap863
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #3c
trap864:
INC checksum
CMPZ #3c
BNE trap864
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #00
trap865:
INC checksum
CMPX #08
BNE trap865
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #00
trap866:
INC checksum
CMPY #08
BNE trap866
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #00
trap867:
INC checksum
CMPZ #08
BNE trap867
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #04
trap868:
INC checksum
CMPX #0c
BNE trap868
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #04
trap869:
INC checksum
CMPY #0c
BNE trap869
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #04
trap870:
INC checksum
CMPZ #0c
BNE trap870
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #08
trap871:
INC checksum
CMPX #08
BNE trap871
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #08
trap872:
INC checksum
CMPY #08
BNE trap872
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #08
trap873:
INC checksum
CMPZ #08
BNE trap873
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #0c
trap874:
INC checksum
CMPX #0c
BNE trap874
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #0c
trap875:
INC checksum
CMPY #0c
BNE trap875
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #0c
trap876:
INC checksum
CMPZ #0c
BNE trap876
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #10
trap877:
INC checksum
CMPX #18
BNE trap877
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #10
trap878:
INC checksum
CMPY #18
BNE trap878
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #10
trap879:
INC checksum
CMPZ #18
BNE trap879
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #14
trap880:
INC checksum
CMPX #1c
BNE trap880
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #14
trap881:
INC checksum
CMPY #1c
BNE trap881
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #14
trap882:
INC checksum
CMPZ #1c
BNE trap882
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #18
trap883:
INC checksum
CMPX #18
BNE trap883
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #18
trap884:
INC checksum
CMPY #18
BNE trap884
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #18
trap885:
INC checksum
CMPZ #18
BNE trap885
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #1c
trap886:
INC checksum
CMPX #1c
BNE trap886
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #1c
trap887:
INC checksum
CMPY #1c
BNE trap887
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #1c
trap888:
INC checksum
CMPZ #1c
BNE trap888
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #20
trap889:
INC checksum
CMPX #28
BNE trap889
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #20
trap890:
INC checksum
CMPY #28
BNE trap890
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #20
trap891:
INC checksum
CMPZ #28
BNE trap891
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #24
trap892:
INC checksum
CMPX #2c
BNE trap892
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #24
trap893:
INC checksum
CMPY #2c
BNE trap893
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #24
trap894:
INC checksum
CMPZ #2c
BNE trap894
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #28
trap895:
INC checksum
CMPX #28
BNE trap895
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #28
trap896:
INC checksum
CMPY #28
BNE trap896
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #28
trap897:
INC checksum
CMPZ #28
BNE trap897
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #2c
trap898:
INC checksum
CMPX #2c
BNE trap898
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #2c
trap899:
INC checksum
CMPY #2c
BNE trap899
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #2c
trap900:
INC checksum
CMPZ #2c
BNE trap900
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #30
trap901:
INC checksum
CMPX #38
BNE trap901
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #30
trap902:
INC checksum
CMPY #38
BNE trap902
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #30
trap903:
INC checksum
CMPZ #38
BNE trap903
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #34
trap904:
INC checksum
CMPX #3c
BNE trap904
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #34
trap905:
INC checksum
CMPY #3c
BNE trap905
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #34
trap906:
INC checksum
CMPZ #3c
BNE trap906
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #38
trap907:
INC checksum
CMPX #38
BNE trap907
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #38
trap908:
INC checksum
CMPY #38
BNE trap908
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #38
trap909:
INC checksum
CMPZ #38
BNE trap909
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #3c
trap910:
INC checksum
CMPX #3c
BNE trap910
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #3c
trap911:
INC checksum
CMPY #3c
BNE trap911
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #3c
trap912:
INC checksum
CMPZ #3c
BNE trap912
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #00
trap913:
INC checksum
CMPX #0c
BNE trap913
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #00
trap914:
INC checksum
CMPY #0c
BNE trap914
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #00
trap915:
INC checksum
CMPZ #0c
BNE trap915
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #04
trap916:
INC checksum
CMPX #0c
BNE trap916
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #04
trap917:
INC checksum
CMPY #0c
BNE trap917
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #04
trap918:
INC checksum
CMPZ #0c
BNE trap918
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #08
trap919:
INC checksum
CMPX #0c
BNE trap919
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #08
trap920:
INC checksum
CMPY #0c
BNE trap920
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #08
trap921:
INC checksum
CMPZ #0c
BNE trap921
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #0c
trap922:
INC checksum
CMPX #0c
BNE trap922
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #0c
trap923:
INC checksum
CMPY #0c
BNE trap923
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #0c
trap924:
INC checksum
CMPZ #0c
BNE trap924
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #10
trap925:
INC checksum
CMPX #1c
BNE trap925
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #10
trap926:
INC checksum
CMPY #1c
BNE trap926
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #10
trap927:
INC checksum
CMPZ #1c
BNE trap927
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #14
trap928:
INC checksum
CMPX #1c
BNE trap928
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #14
trap929:
INC checksum
CMPY #1c
BNE trap929
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #14
trap930:
INC checksum
CMPZ #1c
BNE trap930
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #18
trap931:
INC checksum
CMPX #1c
BNE trap931
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #18
trap932:
INC checksum
CMPY #1c
BNE trap932
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #18
trap933:
INC checksum
CMPZ #1c
BNE trap933
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #1c
trap934:
INC checksum
CMPX #1c
BNE trap934
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #1c
trap935:
INC checksum
CMPY #1c
BNE trap935
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #1c
trap936:
INC checksum
CMPZ #1c
BNE trap936
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #20
trap937:
INC checksum
CMPX #2c
BNE trap937
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #20
trap938:
INC checksum
CMPY #2c
BNE trap938
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #20
trap939:
INC checksum
CMPZ #2c
BNE trap939
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #24
trap940:
INC checksum
CMPX #2c
BNE trap940
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #24
trap941:
INC checksum
CMPY #2c
BNE trap941
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #24
trap942:
INC checksum
CMPZ #2c
BNE trap942
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #28
trap943:
INC checksum
CMPX #2c
BNE trap943
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #28
trap944:
INC checksum
CMPY #2c
BNE trap944
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #28
trap945:
INC checksum
CMPZ #2c
BNE trap945
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #2c
trap946:
INC checksum
CMPX #2c
BNE trap946
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #2c
trap947:
INC checksum
CMPY #2c
BNE trap947
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #2c
trap948:
INC checksum
CMPZ #2c
BNE trap948
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #30
trap949:
INC checksum
CMPX #3c
BNE trap949
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #30
trap950:
INC checksum
CMPY #3c
BNE trap950
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #30
trap951:
INC checksum
CMPZ #3c
BNE trap951
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #34
trap952:
INC checksum
CMPX #3c
BNE trap952
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #34
trap953:
INC checksum
CMPY #3c
BNE trap953
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #34
trap954:
INC checksum
CMPZ #3c
BNE trap954
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #38
trap955:
INC checksum
CMPX #3c
BNE trap955
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #38
trap956:
INC checksum
CMPY #3c
BNE trap956
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #38
trap957:
INC checksum
CMPZ #3c
BNE trap957
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #3c
trap958:
INC checksum
CMPX #3c
BNE trap958
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #3c
trap959:
INC checksum
CMPY #3c
BNE trap959
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #3c
trap960:
INC checksum
CMPZ #3c
BNE trap960
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #00
trap961:
INC checksum
CMPX #10
BNE trap961
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #00
trap962:
INC checksum
CMPY #10
BNE trap962
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #00
trap963:
INC checksum
CMPZ #10
BNE trap963
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #04
trap964:
INC checksum
CMPX #14
BNE trap964
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #04
trap965:
INC checksum
CMPY #14
BNE trap965
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #04
trap966:
INC checksum
CMPZ #14
BNE trap966
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #08
trap967:
INC checksum
CMPX #18
BNE trap967
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #08
trap968:
INC checksum
CMPY #18
BNE trap968
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #08
trap969:
INC checksum
CMPZ #18
BNE trap969
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #0c
trap970:
INC checksum
CMPX #1c
BNE trap970
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #0c
trap971:
INC checksum
CMPY #1c
BNE trap971
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #0c
trap972:
INC checksum
CMPZ #1c
BNE trap972
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #10
trap973:
INC checksum
CMPX #10
BNE trap973
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #10
trap974:
INC checksum
CMPY #10
BNE trap974
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #10
trap975:
INC checksum
CMPZ #10
BNE trap975
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #14
trap976:
INC checksum
CMPX #14
BNE trap976
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #14
trap977:
INC checksum
CMPY #14
BNE trap977
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #14
trap978:
INC checksum
CMPZ #14
BNE trap978
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #18
trap979:
INC checksum
CMPX #18
BNE trap979
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #18
trap980:
INC checksum
CMPY #18
BNE trap980
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #18
trap981:
INC checksum
CMPZ #18
BNE trap981
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #1c
trap982:
INC checksum
CMPX #1c
BNE trap982
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #1c
trap983:
INC checksum
CMPY #1c
BNE trap983
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #1c
trap984:
INC checksum
CMPZ #1c
BNE trap984
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #20
trap985:
INC checksum
CMPX #30
BNE trap985
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #20
trap986:
INC checksum
CMPY #30
BNE trap986
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #20
trap987:
INC checksum
CMPZ #30
BNE trap987
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #24
trap988:
INC checksum
CMPX #34
BNE trap988
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #24
trap989:
INC checksum
CMPY #34
BNE trap989
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #24
trap990:
INC checksum
CMPZ #34
BNE trap990
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #28
trap991:
INC checksum
CMPX #38
BNE trap991
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #28
trap992:
INC checksum
CMPY #38
BNE trap992
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #28
trap993:
INC checksum
CMPZ #38
BNE trap993
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #2c
trap994:
INC checksum
CMPX #3c
BNE trap994
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #2c
trap995:
INC checksum
CMPY #3c
BNE trap995
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #2c
trap996:
INC checksum
CMPZ #3c
BNE trap996
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #30
trap997:
INC checksum
CMPX #30
BNE trap997
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #30
trap998:
INC checksum
CMPY #30
BNE trap998
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #30
trap999:
INC checksum
CMPZ #30
BNE trap999
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #34
trap1000:
INC checksum
CMPX #34
BNE trap1000
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #34
trap1001:
INC checksum
CMPY #34
BNE trap1001
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #34
trap1002:
INC checksum
CMPZ #34
BNE trap1002
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #38
trap1003:
INC checksum
CMPX #38
BNE trap1003
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #38
trap1004:
INC checksum
CMPY #38
BNE trap1004
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #38
trap1005:
INC checksum
CMPZ #38
BNE trap1005
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #3c
trap1006:
INC checksum
CMPX #3c
BNE trap1006
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #3c
trap1007:
INC checksum
CMPY #3c
BNE trap1007
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #3c
trap1008:
INC checksum
CMPZ #3c
BNE trap1008
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #00
trap1009:
INC checksum
CMPX #14
BNE trap1009
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #00
trap1010:
INC checksum
CMPY #14
BNE trap1010
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #00
trap1011:
INC checksum
CMPZ #14
BNE trap1011
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #04
trap1012:
INC checksum
CMPX #14
BNE trap1012
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #04
trap1013:
INC checksum
CMPY #14
BNE trap1013
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #04
trap1014:
INC checksum
CMPZ #14
BNE trap1014
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #08
trap1015:
INC checksum
CMPX #1c
BNE trap1015
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #08
trap1016:
INC checksum
CMPY #1c
BNE trap1016
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #08
trap1017:
INC checksum
CMPZ #1c
BNE trap1017
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #0c
trap1018:
INC checksum
CMPX #1c
BNE trap1018
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #0c
trap1019:
INC checksum
CMPY #1c
BNE trap1019
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #0c
trap1020:
INC checksum
CMPZ #1c
BNE trap1020
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #10
trap1021:
INC checksum
CMPX #14
BNE trap1021
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #10
trap1022:
INC checksum
CMPY #14
BNE trap1022
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #10
trap1023:
INC checksum
CMPZ #14
BNE trap1023
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #14
trap1024:
INC checksum
CMPX #14
BNE trap1024
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #14
trap1025:
INC checksum
CMPY #14
BNE trap1025
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #14
trap1026:
INC checksum
CMPZ #14
BNE trap1026
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #18
trap1027:
INC checksum
CMPX #1c
BNE trap1027
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #18
trap1028:
INC checksum
CMPY #1c
BNE trap1028
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #18
trap1029:
INC checksum
CMPZ #1c
BNE trap1029
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #1c
trap1030:
INC checksum
CMPX #1c
BNE trap1030
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #1c
trap1031:
INC checksum
CMPY #1c
BNE trap1031
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #1c
trap1032:
INC checksum
CMPZ #1c
BNE trap1032
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #20
trap1033:
INC checksum
CMPX #34
BNE trap1033
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #20
trap1034:
INC checksum
CMPY #34
BNE trap1034
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #20
trap1035:
INC checksum
CMPZ #34
BNE trap1035
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #24
trap1036:
INC checksum
CMPX #34
BNE trap1036
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #24
trap1037:
INC checksum
CMPY #34
BNE trap1037
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #24
trap1038:
INC checksum
CMPZ #34
BNE trap1038
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #28
trap1039:
INC checksum
CMPX #3c
BNE trap1039
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #28
trap1040:
INC checksum
CMPY #3c
BNE trap1040
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #28
trap1041:
INC checksum
CMPZ #3c
BNE trap1041
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #2c
trap1042:
INC checksum
CMPX #3c
BNE trap1042
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #2c
trap1043:
INC checksum
CMPY #3c
BNE trap1043
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #2c
trap1044:
INC checksum
CMPZ #3c
BNE trap1044
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #30
trap1045:
INC checksum
CMPX #34
BNE trap1045
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #30
trap1046:
INC checksum
CMPY #34
BNE trap1046
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #30
trap1047:
INC checksum
CMPZ #34
BNE trap1047
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #34
trap1048:
INC checksum
CMPX #34
BNE trap1048
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #34
trap1049:
INC checksum
CMPY #34
BNE trap1049
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #34
trap1050:
INC checksum
CMPZ #34
BNE trap1050
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #38
trap1051:
INC checksum
CMPX #3c
BNE trap1051
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #38
trap1052:
INC checksum
CMPY #3c
BNE trap1052
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #38
trap1053:
INC checksum
CMPZ #3c
BNE trap1053
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #3c
trap1054:
INC checksum
CMPX #3c
BNE trap1054
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #3c
trap1055:
INC checksum
CMPY #3c
BNE trap1055
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #3c
trap1056:
INC checksum
CMPZ #3c
BNE trap1056
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #00
trap1057:
INC checksum
CMPX #18
BNE trap1057
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #00
trap1058:
INC checksum
CMPY #18
BNE trap1058
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #00
trap1059:
INC checksum
CMPZ #18
BNE trap1059
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #04
trap1060:
INC checksum
CMPX #1c
BNE trap1060
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #04
trap1061:
INC checksum
CMPY #1c
BNE trap1061
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #04
trap1062:
INC checksum
CMPZ #1c
BNE trap1062
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #08
trap1063:
INC checksum
CMPX #18
BNE trap1063
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #08
trap1064:
INC checksum
CMPY #18
BNE trap1064
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #08
trap1065:
INC checksum
CMPZ #18
BNE trap1065
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #0c
trap1066:
INC checksum
CMPX #1c
BNE trap1066
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #0c
trap1067:
INC checksum
CMPY #1c
BNE trap1067
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #0c
trap1068:
INC checksum
CMPZ #1c
BNE trap1068
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #10
trap1069:
INC checksum
CMPX #18
BNE trap1069
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #10
trap1070:
INC checksum
CMPY #18
BNE trap1070
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #10
trap1071:
INC checksum
CMPZ #18
BNE trap1071
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #14
trap1072:
INC checksum
CMPX #1c
BNE trap1072
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #14
trap1073:
INC checksum
CMPY #1c
BNE trap1073
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #14
trap1074:
INC checksum
CMPZ #1c
BNE trap1074
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #18
trap1075:
INC checksum
CMPX #18
BNE trap1075
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #18
trap1076:
INC checksum
CMPY #18
BNE trap1076
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #18
trap1077:
INC checksum
CMPZ #18
BNE trap1077
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #1c
trap1078:
INC checksum
CMPX #1c
BNE trap1078
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #1c
trap1079:
INC checksum
CMPY #1c
BNE trap1079
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #1c
trap1080:
INC checksum
CMPZ #1c
BNE trap1080
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #20
trap1081:
INC checksum
CMPX #38
BNE trap1081
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #20
trap1082:
INC checksum
CMPY #38
BNE trap1082
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #20
trap1083:
INC checksum
CMPZ #38
BNE trap1083
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #24
trap1084:
INC checksum
CMPX #3c
BNE trap1084
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #24
trap1085:
INC checksum
CMPY #3c
BNE trap1085
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #24
trap1086:
INC checksum
CMPZ #3c
BNE trap1086
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #28
trap1087:
INC checksum
CMPX #38
BNE trap1087
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #28
trap1088:
INC checksum
CMPY #38
BNE trap1088
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #28
trap1089:
INC checksum
CMPZ #38
BNE trap1089
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #2c
trap1090:
INC checksum
CMPX #3c
BNE trap1090
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #2c
trap1091:
INC checksum
CMPY #3c
BNE trap1091
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #2c
trap1092:
INC checksum
CMPZ #3c
BNE trap1092
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #30
trap1093:
INC checksum
CMPX #38
BNE trap1093
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #30
trap1094:
INC checksum
CMPY #38
BNE trap1094
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #30
trap1095:
INC checksum
CMPZ #38
BNE trap1095
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #34
trap1096:
INC checksum
CMPX #3c
BNE trap1096
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #34
trap1097:
INC checksum
CMPY #3c
BNE trap1097
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #34
trap1098:
INC checksum
CMPZ #3c
BNE trap1098
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #38
trap1099:
INC checksum
CMPX #38
BNE trap1099
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #38
trap1100:
INC checksum
CMPY #38
BNE trap1100
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #38
trap1101:
INC checksum
CMPZ #38
BNE trap1101
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #3c
trap1102:
INC checksum
CMPX #3c
BNE trap1102
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #3c
trap1103:
INC checksum
CMPY #3c
BNE trap1103
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #3c
trap1104:
INC checksum
CMPZ #3c
BNE trap1104
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #00
trap1105:
INC checksum
CMPX #1c
BNE trap1105
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #00
trap1106:
INC checksum
CMPY #1c
BNE trap1106
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #00
trap1107:
INC checksum
CMPZ #1c
BNE trap1107
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #04
trap1108:
INC checksum
CMPX #1c
BNE trap1108
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #04
trap1109:
INC checksum
CMPY #1c
BNE trap1109
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #04
trap1110:
INC checksum
CMPZ #1c
BNE trap1110
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #08
trap1111:
INC checksum
CMPX #1c
BNE trap1111
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #08
trap1112:
INC checksum
CMPY #1c
BNE trap1112
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #08
trap1113:
INC checksum
CMPZ #1c
BNE trap1113
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #0c
trap1114:
INC checksum
CMPX #1c
BNE trap1114
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #0c
trap1115:
INC checksum
CMPY #1c
BNE trap1115
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #0c
trap1116:
INC checksum
CMPZ #1c
BNE trap1116
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #10
trap1117:
INC checksum
CMPX #1c
BNE trap1117
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #10
trap1118:
INC checksum
CMPY #1c
BNE trap1118
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #10
trap1119:
INC checksum
CMPZ #1c
BNE trap1119
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #14
trap1120:
INC checksum
CMPX #1c
BNE trap1120
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #14
trap1121:
INC checksum
CMPY #1c
BNE trap1121
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #14
trap1122:
INC checksum
CMPZ #1c
BNE trap1122
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #18
trap1123:
INC checksum
CMPX #1c
BNE trap1123
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #18
trap1124:
INC checksum
CMPY #1c
BNE trap1124
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #18
trap1125:
INC checksum
CMPZ #1c
BNE trap1125
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #1c
trap1126:
INC checksum
CMPX #1c
BNE trap1126
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #1c
trap1127:
INC checksum
CMPY #1c
BNE trap1127
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #1c
trap1128:
INC checksum
CMPZ #1c
BNE trap1128
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #20
trap1129:
INC checksum
CMPX #3c
BNE trap1129
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #20
trap1130:
INC checksum
CMPY #3c
BNE trap1130
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #20
trap1131:
INC checksum
CMPZ #3c
BNE trap1131
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #24
trap1132:
INC checksum
CMPX #3c
BNE trap1132
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #24
trap1133:
INC checksum
CMPY #3c
BNE trap1133
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #24
trap1134:
INC checksum
CMPZ #3c
BNE trap1134
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #28
trap1135:
INC checksum
CMPX #3c
BNE trap1135
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #28
trap1136:
INC checksum
CMPY #3c
BNE trap1136
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #28
trap1137:
INC checksum
CMPZ #3c
BNE trap1137
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #2c
trap1138:
INC checksum
CMPX #3c
BNE trap1138
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #2c
trap1139:
INC checksum
CMPY #3c
BNE trap1139
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #2c
trap1140:
INC checksum
CMPZ #3c
BNE trap1140
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #30
trap1141:
INC checksum
CMPX #3c
BNE trap1141
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #30
trap1142:
INC checksum
CMPY #3c
BNE trap1142
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #30
trap1143:
INC checksum
CMPZ #3c
BNE trap1143
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #34
trap1144:
INC checksum
CMPX #3c
BNE trap1144
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #34
trap1145:
INC checksum
CMPY #3c
BNE trap1145
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #34
trap1146:
INC checksum
CMPZ #3c
BNE trap1146
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #38
trap1147:
INC checksum
CMPX #3c
BNE trap1147
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #38
trap1148:
INC checksum
CMPY #3c
BNE trap1148
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #38
trap1149:
INC checksum
CMPZ #3c
BNE trap1149
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #3c
trap1150:
INC checksum
CMPX #3c
BNE trap1150
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #3c
trap1151:
INC checksum
CMPY #3c
BNE trap1151
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #3c
trap1152:
INC checksum
CMPZ #3c
BNE trap1152
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #00
trap1153:
INC checksum
CMPX #20
BNE trap1153
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #00
trap1154:
INC checksum
CMPY #20
BNE trap1154
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #00
trap1155:
INC checksum
CMPZ #20
BNE trap1155
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #04
trap1156:
INC checksum
CMPX #24
BNE trap1156
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #04
trap1157:
INC checksum
CMPY #24
BNE trap1157
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #04
trap1158:
INC checksum
CMPZ #24
BNE trap1158
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #08
trap1159:
INC checksum
CMPX #28
BNE trap1159
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #08
trap1160:
INC checksum
CMPY #28
BNE trap1160
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #08
trap1161:
INC checksum
CMPZ #28
BNE trap1161
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #0c
trap1162:
INC checksum
CMPX #2c
BNE trap1162
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #0c
trap1163:
INC checksum
CMPY #2c
BNE trap1163
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #0c
trap1164:
INC checksum
CMPZ #2c
BNE trap1164
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #10
trap1165:
INC checksum
CMPX #30
BNE trap1165
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #10
trap1166:
INC checksum
CMPY #30
BNE trap1166
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #10
trap1167:
INC checksum
CMPZ #30
BNE trap1167
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #14
trap1168:
INC checksum
CMPX #34
BNE trap1168
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #14
trap1169:
INC checksum
CMPY #34
BNE trap1169
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #14
trap1170:
INC checksum
CMPZ #34
BNE trap1170
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #18
trap1171:
INC checksum
CMPX #38
BNE trap1171
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #18
trap1172:
INC checksum
CMPY #38
BNE trap1172
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #18
trap1173:
INC checksum
CMPZ #38
BNE trap1173
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #1c
trap1174:
INC checksum
CMPX #3c
BNE trap1174
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #1c
trap1175:
INC checksum
CMPY #3c
BNE trap1175
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #1c
trap1176:
INC checksum
CMPZ #3c
BNE trap1176
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #20
trap1177:
INC checksum
CMPX #20
BNE trap1177
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #20
trap1178:
INC checksum
CMPY #20
BNE trap1178
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #20
trap1179:
INC checksum
CMPZ #20
BNE trap1179
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #24
trap1180:
INC checksum
CMPX #24
BNE trap1180
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #24
trap1181:
INC checksum
CMPY #24
BNE trap1181
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #24
trap1182:
INC checksum
CMPZ #24
BNE trap1182
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #28
trap1183:
INC checksum
CMPX #28
BNE trap1183
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #28
trap1184:
INC checksum
CMPY #28
BNE trap1184
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #28
trap1185:
INC checksum
CMPZ #28
BNE trap1185
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #2c
trap1186:
INC checksum
CMPX #2c
BNE trap1186
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #2c
trap1187:
INC checksum
CMPY #2c
BNE trap1187
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #2c
trap1188:
INC checksum
CMPZ #2c
BNE trap1188
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #30
trap1189:
INC checksum
CMPX #30
BNE trap1189
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #30
trap1190:
INC checksum
CMPY #30
BNE trap1190
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #30
trap1191:
INC checksum
CMPZ #30
BNE trap1191
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #34
trap1192:
INC checksum
CMPX #34
BNE trap1192
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #34
trap1193:
INC checksum
CMPY #34
BNE trap1193
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #34
trap1194:
INC checksum
CMPZ #34
BNE trap1194
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #38
trap1195:
INC checksum
CMPX #38
BNE trap1195
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #38
trap1196:
INC checksum
CMPY #38
BNE trap1196
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #38
trap1197:
INC checksum
CMPZ #38
BNE trap1197
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #3c
trap1198:
INC checksum
CMPX #3c
BNE trap1198
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #3c
trap1199:
INC checksum
CMPY #3c
BNE trap1199
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #3c
trap1200:
INC checksum
CMPZ #3c
BNE trap1200
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #00
trap1201:
INC checksum
CMPX #24
BNE trap1201
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #00
trap1202:
INC checksum
CMPY #24
BNE trap1202
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #00
trap1203:
INC checksum
CMPZ #24
BNE trap1203
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #04
trap1204:
INC checksum
CMPX #24
BNE trap1204
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #04
trap1205:
INC checksum
CMPY #24
BNE trap1205
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #04
trap1206:
INC checksum
CMPZ #24
BNE trap1206
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #08
trap1207:
INC checksum
CMPX #2c
BNE trap1207
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #08
trap1208:
INC checksum
CMPY #2c
BNE trap1208
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #08
trap1209:
INC checksum
CMPZ #2c
BNE trap1209
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #0c
trap1210:
INC checksum
CMPX #2c
BNE trap1210
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #0c
trap1211:
INC checksum
CMPY #2c
BNE trap1211
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #0c
trap1212:
INC checksum
CMPZ #2c
BNE trap1212
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #10
trap1213:
INC checksum
CMPX #34
BNE trap1213
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #10
trap1214:
INC checksum
CMPY #34
BNE trap1214
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #10
trap1215:
INC checksum
CMPZ #34
BNE trap1215
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #14
trap1216:
INC checksum
CMPX #34
BNE trap1216
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #14
trap1217:
INC checksum
CMPY #34
BNE trap1217
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #14
trap1218:
INC checksum
CMPZ #34
BNE trap1218
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #18
trap1219:
INC checksum
CMPX #3c
BNE trap1219
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #18
trap1220:
INC checksum
CMPY #3c
BNE trap1220
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #18
trap1221:
INC checksum
CMPZ #3c
BNE trap1221
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #1c
trap1222:
INC checksum
CMPX #3c
BNE trap1222
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #1c
trap1223:
INC checksum
CMPY #3c
BNE trap1223
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #1c
trap1224:
INC checksum
CMPZ #3c
BNE trap1224
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #20
trap1225:
INC checksum
CMPX #24
BNE trap1225
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #20
trap1226:
INC checksum
CMPY #24
BNE trap1226
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #20
trap1227:
INC checksum
CMPZ #24
BNE trap1227
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #24
trap1228:
INC checksum
CMPX #24
BNE trap1228
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #24
trap1229:
INC checksum
CMPY #24
BNE trap1229
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #24
trap1230:
INC checksum
CMPZ #24
BNE trap1230
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #28
trap1231:
INC checksum
CMPX #2c
BNE trap1231
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #28
trap1232:
INC checksum
CMPY #2c
BNE trap1232
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #28
trap1233:
INC checksum
CMPZ #2c
BNE trap1233
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #2c
trap1234:
INC checksum
CMPX #2c
BNE trap1234
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #2c
trap1235:
INC checksum
CMPY #2c
BNE trap1235
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #2c
trap1236:
INC checksum
CMPZ #2c
BNE trap1236
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #30
trap1237:
INC checksum
CMPX #34
BNE trap1237
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #30
trap1238:
INC checksum
CMPY #34
BNE trap1238
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #30
trap1239:
INC checksum
CMPZ #34
BNE trap1239
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #34
trap1240:
INC checksum
CMPX #34
BNE trap1240
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #34
trap1241:
INC checksum
CMPY #34
BNE trap1241
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #34
trap1242:
INC checksum
CMPZ #34
BNE trap1242
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #38
trap1243:
INC checksum
CMPX #3c
BNE trap1243
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #38
trap1244:
INC checksum
CMPY #3c
BNE trap1244
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #38
trap1245:
INC checksum
CMPZ #3c
BNE trap1245
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #3c
trap1246:
INC checksum
CMPX #3c
BNE trap1246
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #3c
trap1247:
INC checksum
CMPY #3c
BNE trap1247
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #3c
trap1248:
INC checksum
CMPZ #3c
BNE trap1248
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #00
trap1249:
INC checksum
CMPX #28
BNE trap1249
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #00
trap1250:
INC checksum
CMPY #28
BNE trap1250
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #00
trap1251:
INC checksum
CMPZ #28
BNE trap1251
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #04
trap1252:
INC checksum
CMPX #2c
BNE trap1252
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #04
trap1253:
INC checksum
CMPY #2c
BNE trap1253
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #04
trap1254:
INC checksum
CMPZ #2c
BNE trap1254
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #08
trap1255:
INC checksum
CMPX #28
BNE trap1255
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #08
trap1256:
INC checksum
CMPY #28
BNE trap1256
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #08
trap1257:
INC checksum
CMPZ #28
BNE trap1257
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #0c
trap1258:
INC checksum
CMPX #2c
BNE trap1258
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #0c
trap1259:
INC checksum
CMPY #2c
BNE trap1259
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #0c
trap1260:
INC checksum
CMPZ #2c
BNE trap1260
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #10
trap1261:
INC checksum
CMPX #38
BNE trap1261
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #10
trap1262:
INC checksum
CMPY #38
BNE trap1262
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #10
trap1263:
INC checksum
CMPZ #38
BNE trap1263
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #14
trap1264:
INC checksum
CMPX #3c
BNE trap1264
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #14
trap1265:
INC checksum
CMPY #3c
BNE trap1265
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #14
trap1266:
INC checksum
CMPZ #3c
BNE trap1266
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #18
trap1267:
INC checksum
CMPX #38
BNE trap1267
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #18
trap1268:
INC checksum
CMPY #38
BNE trap1268
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #18
trap1269:
INC checksum
CMPZ #38
BNE trap1269
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #1c
trap1270:
INC checksum
CMPX #3c
BNE trap1270
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #1c
trap1271:
INC checksum
CMPY #3c
BNE trap1271
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #1c
trap1272:
INC checksum
CMPZ #3c
BNE trap1272
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #20
trap1273:
INC checksum
CMPX #28
BNE trap1273
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #20
trap1274:
INC checksum
CMPY #28
BNE trap1274
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #20
trap1275:
INC checksum
CMPZ #28
BNE trap1275
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #24
trap1276:
INC checksum
CMPX #2c
BNE trap1276
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #24
trap1277:
INC checksum
CMPY #2c
BNE trap1277
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #24
trap1278:
INC checksum
CMPZ #2c
BNE trap1278
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #28
trap1279:
INC checksum
CMPX #28
BNE trap1279
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #28
trap1280:
INC checksum
CMPY #28
BNE trap1280
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #28
trap1281:
INC checksum
CMPZ #28
BNE trap1281
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #2c
trap1282:
INC checksum
CMPX #2c
BNE trap1282
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #2c
trap1283:
INC checksum
CMPY #2c
BNE trap1283
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #2c
trap1284:
INC checksum
CMPZ #2c
BNE trap1284
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #30
trap1285:
INC checksum
CMPX #38
BNE trap1285
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #30
trap1286:
INC checksum
CMPY #38
BNE trap1286
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #30
trap1287:
INC checksum
CMPZ #38
BNE trap1287
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #34
trap1288:
INC checksum
CMPX #3c
BNE trap1288
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #34
trap1289:
INC checksum
CMPY #3c
BNE trap1289
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #34
trap1290:
INC checksum
CMPZ #3c
BNE trap1290
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #38
trap1291:
INC checksum
CMPX #38
BNE trap1291
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #38
trap1292:
INC checksum
CMPY #38
BNE trap1292
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #38
trap1293:
INC checksum
CMPZ #38
BNE trap1293
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #3c
trap1294:
INC checksum
CMPX #3c
BNE trap1294
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #3c
trap1295:
INC checksum
CMPY #3c
BNE trap1295
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #3c
trap1296:
INC checksum
CMPZ #3c
BNE trap1296
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #00
trap1297:
INC checksum
CMPX #2c
BNE trap1297
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #00
trap1298:
INC checksum
CMPY #2c
BNE trap1298
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #00
trap1299:
INC checksum
CMPZ #2c
BNE trap1299
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #04
trap1300:
INC checksum
CMPX #2c
BNE trap1300
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #04
trap1301:
INC checksum
CMPY #2c
BNE trap1301
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #04
trap1302:
INC checksum
CMPZ #2c
BNE trap1302
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #08
trap1303:
INC checksum
CMPX #2c
BNE trap1303
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #08
trap1304:
INC checksum
CMPY #2c
BNE trap1304
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #08
trap1305:
INC checksum
CMPZ #2c
BNE trap1305
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #0c
trap1306:
INC checksum
CMPX #2c
BNE trap1306
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #0c
trap1307:
INC checksum
CMPY #2c
BNE trap1307
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #0c
trap1308:
INC checksum
CMPZ #2c
BNE trap1308
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #10
trap1309:
INC checksum
CMPX #3c
BNE trap1309
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #10
trap1310:
INC checksum
CMPY #3c
BNE trap1310
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #10
trap1311:
INC checksum
CMPZ #3c
BNE trap1311
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #14
trap1312:
INC checksum
CMPX #3c
BNE trap1312
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #14
trap1313:
INC checksum
CMPY #3c
BNE trap1313
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #14
trap1314:
INC checksum
CMPZ #3c
BNE trap1314
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #18
trap1315:
INC checksum
CMPX #3c
BNE trap1315
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #18
trap1316:
INC checksum
CMPY #3c
BNE trap1316
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #18
trap1317:
INC checksum
CMPZ #3c
BNE trap1317
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #1c
trap1318:
INC checksum
CMPX #3c
BNE trap1318
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #1c
trap1319:
INC checksum
CMPY #3c
BNE trap1319
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #1c
trap1320:
INC checksum
CMPZ #3c
BNE trap1320
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #20
trap1321:
INC checksum
CMPX #2c
BNE trap1321
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #20
trap1322:
INC checksum
CMPY #2c
BNE trap1322
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #20
trap1323:
INC checksum
CMPZ #2c
BNE trap1323
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #24
trap1324:
INC checksum
CMPX #2c
BNE trap1324
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #24
trap1325:
INC checksum
CMPY #2c
BNE trap1325
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #24
trap1326:
INC checksum
CMPZ #2c
BNE trap1326
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #28
trap1327:
INC checksum
CMPX #2c
BNE trap1327
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #28
trap1328:
INC checksum
CMPY #2c
BNE trap1328
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #28
trap1329:
INC checksum
CMPZ #2c
BNE trap1329
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #2c
trap1330:
INC checksum
CMPX #2c
BNE trap1330
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #2c
trap1331:
INC checksum
CMPY #2c
BNE trap1331
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #2c
trap1332:
INC checksum
CMPZ #2c
BNE trap1332
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #30
trap1333:
INC checksum
CMPX #3c
BNE trap1333
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #30
trap1334:
INC checksum
CMPY #3c
BNE trap1334
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #30
trap1335:
INC checksum
CMPZ #3c
BNE trap1335
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #34
trap1336:
INC checksum
CMPX #3c
BNE trap1336
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #34
trap1337:
INC checksum
CMPY #3c
BNE trap1337
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #34
trap1338:
INC checksum
CMPZ #3c
BNE trap1338
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #38
trap1339:
INC checksum
CMPX #3c
BNE trap1339
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #38
trap1340:
INC checksum
CMPY #3c
BNE trap1340
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #38
trap1341:
INC checksum
CMPZ #3c
BNE trap1341
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #3c
trap1342:
INC checksum
CMPX #3c
BNE trap1342
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #3c
trap1343:
INC checksum
CMPY #3c
BNE trap1343
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #3c
trap1344:
INC checksum
CMPZ #3c
BNE trap1344
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #00
trap1345:
INC checksum
CMPX #30
BNE trap1345
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #00
trap1346:
INC checksum
CMPY #30
BNE trap1346
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #00
trap1347:
INC checksum
CMPZ #30
BNE trap1347
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #04
trap1348:
INC checksum
CMPX #34
BNE trap1348
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #04
trap1349:
INC checksum
CMPY #34
BNE trap1349
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #04
trap1350:
INC checksum
CMPZ #34
BNE trap1350
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #08
trap1351:
INC checksum
CMPX #38
BNE trap1351
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #08
trap1352:
INC checksum
CMPY #38
BNE trap1352
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #08
trap1353:
INC checksum
CMPZ #38
BNE trap1353
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #0c
trap1354:
INC checksum
CMPX #3c
BNE trap1354
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #0c
trap1355:
INC checksum
CMPY #3c
BNE trap1355
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #0c
trap1356:
INC checksum
CMPZ #3c
BNE trap1356
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #10
trap1357:
INC checksum
CMPX #30
BNE trap1357
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #10
trap1358:
INC checksum
CMPY #30
BNE trap1358
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #10
trap1359:
INC checksum
CMPZ #30
BNE trap1359
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #14
trap1360:
INC checksum
CMPX #34
BNE trap1360
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #14
trap1361:
INC checksum
CMPY #34
BNE trap1361
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #14
trap1362:
INC checksum
CMPZ #34
BNE trap1362
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #18
trap1363:
INC checksum
CMPX #38
BNE trap1363
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #18
trap1364:
INC checksum
CMPY #38
BNE trap1364
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #18
trap1365:
INC checksum
CMPZ #38
BNE trap1365
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #1c
trap1366:
INC checksum
CMPX #3c
BNE trap1366
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #1c
trap1367:
INC checksum
CMPY #3c
BNE trap1367
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #1c
trap1368:
INC checksum
CMPZ #3c
BNE trap1368
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #20
trap1369:
INC checksum
CMPX #30
BNE trap1369
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #20
trap1370:
INC checksum
CMPY #30
BNE trap1370
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #20
trap1371:
INC checksum
CMPZ #30
BNE trap1371
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #24
trap1372:
INC checksum
CMPX #34
BNE trap1372
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #24
trap1373:
INC checksum
CMPY #34
BNE trap1373
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #24
trap1374:
INC checksum
CMPZ #34
BNE trap1374
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #28
trap1375:
INC checksum
CMPX #38
BNE trap1375
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #28
trap1376:
INC checksum
CMPY #38
BNE trap1376
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #28
trap1377:
INC checksum
CMPZ #38
BNE trap1377
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #2c
trap1378:
INC checksum
CMPX #3c
BNE trap1378
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #2c
trap1379:
INC checksum
CMPY #3c
BNE trap1379
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #2c
trap1380:
INC checksum
CMPZ #3c
BNE trap1380
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #30
trap1381:
INC checksum
CMPX #30
BNE trap1381
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #30
trap1382:
INC checksum
CMPY #30
BNE trap1382
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #30
trap1383:
INC checksum
CMPZ #30
BNE trap1383
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #34
trap1384:
INC checksum
CMPX #34
BNE trap1384
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #34
trap1385:
INC checksum
CMPY #34
BNE trap1385
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #34
trap1386:
INC checksum
CMPZ #34
BNE trap1386
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #38
trap1387:
INC checksum
CMPX #38
BNE trap1387
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #38
trap1388:
INC checksum
CMPY #38
BNE trap1388
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #38
trap1389:
INC checksum
CMPZ #38
BNE trap1389
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #3c
trap1390:
INC checksum
CMPX #3c
BNE trap1390
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #3c
trap1391:
INC checksum
CMPY #3c
BNE trap1391
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #3c
trap1392:
INC checksum
CMPZ #3c
BNE trap1392
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #00
trap1393:
INC checksum
CMPX #34
BNE trap1393
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #00
trap1394:
INC checksum
CMPY #34
BNE trap1394
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #00
trap1395:
INC checksum
CMPZ #34
BNE trap1395
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #04
trap1396:
INC checksum
CMPX #34
BNE trap1396
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #04
trap1397:
INC checksum
CMPY #34
BNE trap1397
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #04
trap1398:
INC checksum
CMPZ #34
BNE trap1398
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #08
trap1399:
INC checksum
CMPX #3c
BNE trap1399
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #08
trap1400:
INC checksum
CMPY #3c
BNE trap1400
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #08
trap1401:
INC checksum
CMPZ #3c
BNE trap1401
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #0c
trap1402:
INC checksum
CMPX #3c
BNE trap1402
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #0c
trap1403:
INC checksum
CMPY #3c
BNE trap1403
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #0c
trap1404:
INC checksum
CMPZ #3c
BNE trap1404
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #10
trap1405:
INC checksum
CMPX #34
BNE trap1405
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #10
trap1406:
INC checksum
CMPY #34
BNE trap1406
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #10
trap1407:
INC checksum
CMPZ #34
BNE trap1407
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #14
trap1408:
INC checksum
CMPX #34
BNE trap1408
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #14
trap1409:
INC checksum
CMPY #34
BNE trap1409
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #14
trap1410:
INC checksum
CMPZ #34
BNE trap1410
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #18
trap1411:
INC checksum
CMPX #3c
BNE trap1411
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #18
trap1412:
INC checksum
CMPY #3c
BNE trap1412
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #18
trap1413:
INC checksum
CMPZ #3c
BNE trap1413
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #1c
trap1414:
INC checksum
CMPX #3c
BNE trap1414
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #1c
trap1415:
INC checksum
CMPY #3c
BNE trap1415
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #1c
trap1416:
INC checksum
CMPZ #3c
BNE trap1416
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #20
trap1417:
INC checksum
CMPX #34
BNE trap1417
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #20
trap1418:
INC checksum
CMPY #34
BNE trap1418
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #20
trap1419:
INC checksum
CMPZ #34
BNE trap1419
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #24
trap1420:
INC checksum
CMPX #34
BNE trap1420
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #24
trap1421:
INC checksum
CMPY #34
BNE trap1421
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #24
trap1422:
INC checksum
CMPZ #34
BNE trap1422
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #28
trap1423:
INC checksum
CMPX #3c
BNE trap1423
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #28
trap1424:
INC checksum
CMPY #3c
BNE trap1424
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #28
trap1425:
INC checksum
CMPZ #3c
BNE trap1425
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #2c
trap1426:
INC checksum
CMPX #3c
BNE trap1426
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #2c
trap1427:
INC checksum
CMPY #3c
BNE trap1427
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #2c
trap1428:
INC checksum
CMPZ #3c
BNE trap1428
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #30
trap1429:
INC checksum
CMPX #34
BNE trap1429
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #30
trap1430:
INC checksum
CMPY #34
BNE trap1430
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #30
trap1431:
INC checksum
CMPZ #34
BNE trap1431
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #34
trap1432:
INC checksum
CMPX #34
BNE trap1432
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #34
trap1433:
INC checksum
CMPY #34
BNE trap1433
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #34
trap1434:
INC checksum
CMPZ #34
BNE trap1434
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #38
trap1435:
INC checksum
CMPX #3c
BNE trap1435
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #38
trap1436:
INC checksum
CMPY #3c
BNE trap1436
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #38
trap1437:
INC checksum
CMPZ #3c
BNE trap1437
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #3c
trap1438:
INC checksum
CMPX #3c
BNE trap1438
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #3c
trap1439:
INC checksum
CMPY #3c
BNE trap1439
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #3c
trap1440:
INC checksum
CMPZ #3c
BNE trap1440
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #00
trap1441:
INC checksum
CMPX #38
BNE trap1441
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #00
trap1442:
INC checksum
CMPY #38
BNE trap1442
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #00
trap1443:
INC checksum
CMPZ #38
BNE trap1443
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #04
trap1444:
INC checksum
CMPX #3c
BNE trap1444
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #04
trap1445:
INC checksum
CMPY #3c
BNE trap1445
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #04
trap1446:
INC checksum
CMPZ #3c
BNE trap1446
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #08
trap1447:
INC checksum
CMPX #38
BNE trap1447
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #08
trap1448:
INC checksum
CMPY #38
BNE trap1448
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #08
trap1449:
INC checksum
CMPZ #38
BNE trap1449
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #0c
trap1450:
INC checksum
CMPX #3c
BNE trap1450
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #0c
trap1451:
INC checksum
CMPY #3c
BNE trap1451
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #0c
trap1452:
INC checksum
CMPZ #3c
BNE trap1452
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #10
trap1453:
INC checksum
CMPX #38
BNE trap1453
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #10
trap1454:
INC checksum
CMPY #38
BNE trap1454
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #10
trap1455:
INC checksum
CMPZ #38
BNE trap1455
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #14
trap1456:
INC checksum
CMPX #3c
BNE trap1456
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #14
trap1457:
INC checksum
CMPY #3c
BNE trap1457
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #14
trap1458:
INC checksum
CMPZ #3c
BNE trap1458
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #18
trap1459:
INC checksum
CMPX #38
BNE trap1459
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #18
trap1460:
INC checksum
CMPY #38
BNE trap1460
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #18
trap1461:
INC checksum
CMPZ #38
BNE trap1461
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #1c
trap1462:
INC checksum
CMPX #3c
BNE trap1462
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #1c
trap1463:
INC checksum
CMPY #3c
BNE trap1463
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #1c
trap1464:
INC checksum
CMPZ #3c
BNE trap1464
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #20
trap1465:
INC checksum
CMPX #38
BNE trap1465
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #20
trap1466:
INC checksum
CMPY #38
BNE trap1466
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #20
trap1467:
INC checksum
CMPZ #38
BNE trap1467
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #24
trap1468:
INC checksum
CMPX #3c
BNE trap1468
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #24
trap1469:
INC checksum
CMPY #3c
BNE trap1469
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #24
trap1470:
INC checksum
CMPZ #3c
BNE trap1470
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #28
trap1471:
INC checksum
CMPX #38
BNE trap1471
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #28
trap1472:
INC checksum
CMPY #38
BNE trap1472
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #28
trap1473:
INC checksum
CMPZ #38
BNE trap1473
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #2c
trap1474:
INC checksum
CMPX #3c
BNE trap1474
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #2c
trap1475:
INC checksum
CMPY #3c
BNE trap1475
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #2c
trap1476:
INC checksum
CMPZ #3c
BNE trap1476
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #30
trap1477:
INC checksum
CMPX #38
BNE trap1477
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #30
trap1478:
INC checksum
CMPY #38
BNE trap1478
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #30
trap1479:
INC checksum
CMPZ #38
BNE trap1479
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #34
trap1480:
INC checksum
CMPX #3c
BNE trap1480
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #34
trap1481:
INC checksum
CMPY #3c
BNE trap1481
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #34
trap1482:
INC checksum
CMPZ #3c
BNE trap1482
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #38
trap1483:
INC checksum
CMPX #38
BNE trap1483
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #38
trap1484:
INC checksum
CMPY #38
BNE trap1484
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #38
trap1485:
INC checksum
CMPZ #38
BNE trap1485
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #3c
trap1486:
INC checksum
CMPX #3c
BNE trap1486
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #3c
trap1487:
INC checksum
CMPY #3c
BNE trap1487
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #3c
trap1488:
INC checksum
CMPZ #3c
BNE trap1488
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #00
trap1489:
INC checksum
CMPX #3c
BNE trap1489
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #00
trap1490:
INC checksum
CMPY #3c
BNE trap1490
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #00
trap1491:
INC checksum
CMPZ #3c
BNE trap1491
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #04
trap1492:
INC checksum
CMPX #3c
BNE trap1492
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #04
trap1493:
INC checksum
CMPY #3c
BNE trap1493
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #04
trap1494:
INC checksum
CMPZ #3c
BNE trap1494
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #08
trap1495:
INC checksum
CMPX #3c
BNE trap1495
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #08
trap1496:
INC checksum
CMPY #3c
BNE trap1496
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #08
trap1497:
INC checksum
CMPZ #3c
BNE trap1497
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #0c
trap1498:
INC checksum
CMPX #3c
BNE trap1498
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #0c
trap1499:
INC checksum
CMPY #3c
BNE trap1499
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #0c
trap1500:
INC checksum
CMPZ #3c
BNE trap1500
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #10
trap1501:
INC checksum
CMPX #3c
BNE trap1501
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #10
trap1502:
INC checksum
CMPY #3c
BNE trap1502
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #10
trap1503:
INC checksum
CMPZ #3c
BNE trap1503
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #14
trap1504:
INC checksum
CMPX #3c
BNE trap1504
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #14
trap1505:
INC checksum
CMPY #3c
BNE trap1505
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #14
trap1506:
INC checksum
CMPZ #3c
BNE trap1506
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #18
trap1507:
INC checksum
CMPX #3c
BNE trap1507
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #18
trap1508:
INC checksum
CMPY #3c
BNE trap1508
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #18
trap1509:
INC checksum
CMPZ #3c
BNE trap1509
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #1c
trap1510:
INC checksum
CMPX #3c
BNE trap1510
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #1c
trap1511:
INC checksum
CMPY #3c
BNE trap1511
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #1c
trap1512:
INC checksum
CMPZ #3c
BNE trap1512
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #20
trap1513:
INC checksum
CMPX #3c
BNE trap1513
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #20
trap1514:
INC checksum
CMPY #3c
BNE trap1514
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #20
trap1515:
INC checksum
CMPZ #3c
BNE trap1515
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #24
trap1516:
INC checksum
CMPX #3c
BNE trap1516
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #24
trap1517:
INC checksum
CMPY #3c
BNE trap1517
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #24
trap1518:
INC checksum
CMPZ #3c
BNE trap1518
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #28
trap1519:
INC checksum
CMPX #3c
BNE trap1519
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #28
trap1520:
INC checksum
CMPY #3c
BNE trap1520
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #28
trap1521:
INC checksum
CMPZ #3c
BNE trap1521
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #2c
trap1522:
INC checksum
CMPX #3c
BNE trap1522
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #2c
trap1523:
INC checksum
CMPY #3c
BNE trap1523
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #2c
trap1524:
INC checksum
CMPZ #3c
BNE trap1524
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #30
trap1525:
INC checksum
CMPX #3c
BNE trap1525
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #30
trap1526:
INC checksum
CMPY #3c
BNE trap1526
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #30
trap1527:
INC checksum
CMPZ #3c
BNE trap1527
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #34
trap1528:
INC checksum
CMPX #3c
BNE trap1528
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #34
trap1529:
INC checksum
CMPY #3c
BNE trap1529
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #34
trap1530:
INC checksum
CMPZ #3c
BNE trap1530
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #38
trap1531:
INC checksum
CMPX #3c
BNE trap1531
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #38
trap1532:
INC checksum
CMPY #3c
BNE trap1532
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #38
trap1533:
INC checksum
CMPZ #3c
BNE trap1533
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #3c
trap1534:
INC checksum
CMPX #3c
BNE trap1534
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #3c
trap1535:
INC checksum
CMPY #3c
BNE trap1535
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #3c
trap1536:
INC checksum
CMPZ #3c
BNE trap1536
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

sub:
RTS
done:
LDX checksum
OUT0 X
JMP done

checksum:
B 0x 00
