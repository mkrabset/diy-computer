NOP
NOP
NOP
start:
ORtest:
LDX #00
ORX #00
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
ORY #00
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
ORZ #00
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
ORX #04
trap4:
INC checksum
CMPX #04
BNE trap4
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #04
trap5:
INC checksum
CMPY #04
BNE trap5
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #04
trap6:
INC checksum
CMPZ #04
BNE trap6
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #08
trap7:
INC checksum
CMPX #08
BNE trap7
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #08
trap8:
INC checksum
CMPY #08
BNE trap8
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #08
trap9:
INC checksum
CMPZ #08
BNE trap9
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #0c
trap10:
INC checksum
CMPX #0c
BNE trap10
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #0c
trap11:
INC checksum
CMPY #0c
BNE trap11
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #0c
trap12:
INC checksum
CMPZ #0c
BNE trap12
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #10
trap13:
INC checksum
CMPX #10
BNE trap13
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #10
trap14:
INC checksum
CMPY #10
BNE trap14
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #10
trap15:
INC checksum
CMPZ #10
BNE trap15
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #14
trap16:
INC checksum
CMPX #14
BNE trap16
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #14
trap17:
INC checksum
CMPY #14
BNE trap17
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #14
trap18:
INC checksum
CMPZ #14
BNE trap18
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #18
trap19:
INC checksum
CMPX #18
BNE trap19
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #18
trap20:
INC checksum
CMPY #18
BNE trap20
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #18
trap21:
INC checksum
CMPZ #18
BNE trap21
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #1c
trap22:
INC checksum
CMPX #1c
BNE trap22
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #1c
trap23:
INC checksum
CMPY #1c
BNE trap23
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #1c
trap24:
INC checksum
CMPZ #1c
BNE trap24
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #20
trap25:
INC checksum
CMPX #20
BNE trap25
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #20
trap26:
INC checksum
CMPY #20
BNE trap26
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #20
trap27:
INC checksum
CMPZ #20
BNE trap27
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #24
trap28:
INC checksum
CMPX #24
BNE trap28
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #24
trap29:
INC checksum
CMPY #24
BNE trap29
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #24
trap30:
INC checksum
CMPZ #24
BNE trap30
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #28
trap31:
INC checksum
CMPX #28
BNE trap31
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #28
trap32:
INC checksum
CMPY #28
BNE trap32
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #28
trap33:
INC checksum
CMPZ #28
BNE trap33
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #2c
trap34:
INC checksum
CMPX #2c
BNE trap34
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #2c
trap35:
INC checksum
CMPY #2c
BNE trap35
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #2c
trap36:
INC checksum
CMPZ #2c
BNE trap36
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #30
trap37:
INC checksum
CMPX #30
BNE trap37
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #30
trap38:
INC checksum
CMPY #30
BNE trap38
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #30
trap39:
INC checksum
CMPZ #30
BNE trap39
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #34
trap40:
INC checksum
CMPX #34
BNE trap40
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #34
trap41:
INC checksum
CMPY #34
BNE trap41
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #34
trap42:
INC checksum
CMPZ #34
BNE trap42
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #38
trap43:
INC checksum
CMPX #38
BNE trap43
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #38
trap44:
INC checksum
CMPY #38
BNE trap44
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #38
trap45:
INC checksum
CMPZ #38
BNE trap45
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #00
ORX #3c
trap46:
INC checksum
CMPX #3c
BNE trap46
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
ORY #3c
trap47:
INC checksum
CMPY #3c
BNE trap47
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
ORZ #3c
trap48:
INC checksum
CMPZ #3c
BNE trap48
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #00
trap49:
INC checksum
CMPX #04
BNE trap49
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #00
trap50:
INC checksum
CMPY #04
BNE trap50
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #00
trap51:
INC checksum
CMPZ #04
BNE trap51
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #04
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
ORY #04
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
ORZ #04
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
ORX #08
trap55:
INC checksum
CMPX #0c
BNE trap55
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #08
trap56:
INC checksum
CMPY #0c
BNE trap56
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #08
trap57:
INC checksum
CMPZ #0c
BNE trap57
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #0c
trap58:
INC checksum
CMPX #0c
BNE trap58
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #0c
trap59:
INC checksum
CMPY #0c
BNE trap59
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #0c
trap60:
INC checksum
CMPZ #0c
BNE trap60
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #10
trap61:
INC checksum
CMPX #14
BNE trap61
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #10
trap62:
INC checksum
CMPY #14
BNE trap62
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #10
trap63:
INC checksum
CMPZ #14
BNE trap63
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #14
trap64:
INC checksum
CMPX #14
BNE trap64
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #14
trap65:
INC checksum
CMPY #14
BNE trap65
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #14
trap66:
INC checksum
CMPZ #14
BNE trap66
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #18
trap67:
INC checksum
CMPX #1c
BNE trap67
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #18
trap68:
INC checksum
CMPY #1c
BNE trap68
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #18
trap69:
INC checksum
CMPZ #1c
BNE trap69
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #1c
trap70:
INC checksum
CMPX #1c
BNE trap70
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #1c
trap71:
INC checksum
CMPY #1c
BNE trap71
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #1c
trap72:
INC checksum
CMPZ #1c
BNE trap72
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #20
trap73:
INC checksum
CMPX #24
BNE trap73
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #20
trap74:
INC checksum
CMPY #24
BNE trap74
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #20
trap75:
INC checksum
CMPZ #24
BNE trap75
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #24
trap76:
INC checksum
CMPX #24
BNE trap76
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #24
trap77:
INC checksum
CMPY #24
BNE trap77
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #24
trap78:
INC checksum
CMPZ #24
BNE trap78
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #28
trap79:
INC checksum
CMPX #2c
BNE trap79
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #28
trap80:
INC checksum
CMPY #2c
BNE trap80
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #28
trap81:
INC checksum
CMPZ #2c
BNE trap81
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #2c
trap82:
INC checksum
CMPX #2c
BNE trap82
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #2c
trap83:
INC checksum
CMPY #2c
BNE trap83
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #2c
trap84:
INC checksum
CMPZ #2c
BNE trap84
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #30
trap85:
INC checksum
CMPX #34
BNE trap85
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #30
trap86:
INC checksum
CMPY #34
BNE trap86
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #30
trap87:
INC checksum
CMPZ #34
BNE trap87
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #34
trap88:
INC checksum
CMPX #34
BNE trap88
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #34
trap89:
INC checksum
CMPY #34
BNE trap89
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #34
trap90:
INC checksum
CMPZ #34
BNE trap90
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #38
trap91:
INC checksum
CMPX #3c
BNE trap91
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #38
trap92:
INC checksum
CMPY #3c
BNE trap92
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #38
trap93:
INC checksum
CMPZ #3c
BNE trap93
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
ORX #3c
trap94:
INC checksum
CMPX #3c
BNE trap94
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
ORY #3c
trap95:
INC checksum
CMPY #3c
BNE trap95
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
ORZ #3c
trap96:
INC checksum
CMPZ #3c
BNE trap96
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #00
trap97:
INC checksum
CMPX #08
BNE trap97
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #00
trap98:
INC checksum
CMPY #08
BNE trap98
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #00
trap99:
INC checksum
CMPZ #08
BNE trap99
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #04
trap100:
INC checksum
CMPX #0c
BNE trap100
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #04
trap101:
INC checksum
CMPY #0c
BNE trap101
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #04
trap102:
INC checksum
CMPZ #0c
BNE trap102
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #08
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
ORY #08
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
ORZ #08
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
ORX #0c
trap106:
INC checksum
CMPX #0c
BNE trap106
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #0c
trap107:
INC checksum
CMPY #0c
BNE trap107
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #0c
trap108:
INC checksum
CMPZ #0c
BNE trap108
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #10
trap109:
INC checksum
CMPX #18
BNE trap109
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #10
trap110:
INC checksum
CMPY #18
BNE trap110
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #10
trap111:
INC checksum
CMPZ #18
BNE trap111
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #14
trap112:
INC checksum
CMPX #1c
BNE trap112
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #14
trap113:
INC checksum
CMPY #1c
BNE trap113
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #14
trap114:
INC checksum
CMPZ #1c
BNE trap114
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #18
trap115:
INC checksum
CMPX #18
BNE trap115
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #18
trap116:
INC checksum
CMPY #18
BNE trap116
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #18
trap117:
INC checksum
CMPZ #18
BNE trap117
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #1c
trap118:
INC checksum
CMPX #1c
BNE trap118
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #1c
trap119:
INC checksum
CMPY #1c
BNE trap119
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #1c
trap120:
INC checksum
CMPZ #1c
BNE trap120
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #20
trap121:
INC checksum
CMPX #28
BNE trap121
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #20
trap122:
INC checksum
CMPY #28
BNE trap122
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #20
trap123:
INC checksum
CMPZ #28
BNE trap123
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #24
trap124:
INC checksum
CMPX #2c
BNE trap124
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #24
trap125:
INC checksum
CMPY #2c
BNE trap125
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #24
trap126:
INC checksum
CMPZ #2c
BNE trap126
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #28
trap127:
INC checksum
CMPX #28
BNE trap127
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #28
trap128:
INC checksum
CMPY #28
BNE trap128
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #28
trap129:
INC checksum
CMPZ #28
BNE trap129
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #2c
trap130:
INC checksum
CMPX #2c
BNE trap130
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #2c
trap131:
INC checksum
CMPY #2c
BNE trap131
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #2c
trap132:
INC checksum
CMPZ #2c
BNE trap132
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #30
trap133:
INC checksum
CMPX #38
BNE trap133
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #30
trap134:
INC checksum
CMPY #38
BNE trap134
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #30
trap135:
INC checksum
CMPZ #38
BNE trap135
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #34
trap136:
INC checksum
CMPX #3c
BNE trap136
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #34
trap137:
INC checksum
CMPY #3c
BNE trap137
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #34
trap138:
INC checksum
CMPZ #3c
BNE trap138
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #38
trap139:
INC checksum
CMPX #38
BNE trap139
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #38
trap140:
INC checksum
CMPY #38
BNE trap140
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #38
trap141:
INC checksum
CMPZ #38
BNE trap141
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
ORX #3c
trap142:
INC checksum
CMPX #3c
BNE trap142
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
ORY #3c
trap143:
INC checksum
CMPY #3c
BNE trap143
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
ORZ #3c
trap144:
INC checksum
CMPZ #3c
BNE trap144
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #00
trap145:
INC checksum
CMPX #0c
BNE trap145
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #00
trap146:
INC checksum
CMPY #0c
BNE trap146
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #00
trap147:
INC checksum
CMPZ #0c
BNE trap147
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #04
trap148:
INC checksum
CMPX #0c
BNE trap148
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #04
trap149:
INC checksum
CMPY #0c
BNE trap149
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #04
trap150:
INC checksum
CMPZ #0c
BNE trap150
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #08
trap151:
INC checksum
CMPX #0c
BNE trap151
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #08
trap152:
INC checksum
CMPY #0c
BNE trap152
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #08
trap153:
INC checksum
CMPZ #0c
BNE trap153
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #0c
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
ORY #0c
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
ORZ #0c
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
ORX #10
trap157:
INC checksum
CMPX #1c
BNE trap157
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #10
trap158:
INC checksum
CMPY #1c
BNE trap158
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #10
trap159:
INC checksum
CMPZ #1c
BNE trap159
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #14
trap160:
INC checksum
CMPX #1c
BNE trap160
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #14
trap161:
INC checksum
CMPY #1c
BNE trap161
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #14
trap162:
INC checksum
CMPZ #1c
BNE trap162
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #18
trap163:
INC checksum
CMPX #1c
BNE trap163
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #18
trap164:
INC checksum
CMPY #1c
BNE trap164
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #18
trap165:
INC checksum
CMPZ #1c
BNE trap165
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #1c
trap166:
INC checksum
CMPX #1c
BNE trap166
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #1c
trap167:
INC checksum
CMPY #1c
BNE trap167
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #1c
trap168:
INC checksum
CMPZ #1c
BNE trap168
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #20
trap169:
INC checksum
CMPX #2c
BNE trap169
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #20
trap170:
INC checksum
CMPY #2c
BNE trap170
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #20
trap171:
INC checksum
CMPZ #2c
BNE trap171
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #24
trap172:
INC checksum
CMPX #2c
BNE trap172
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #24
trap173:
INC checksum
CMPY #2c
BNE trap173
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #24
trap174:
INC checksum
CMPZ #2c
BNE trap174
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #28
trap175:
INC checksum
CMPX #2c
BNE trap175
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #28
trap176:
INC checksum
CMPY #2c
BNE trap176
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #28
trap177:
INC checksum
CMPZ #2c
BNE trap177
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #2c
trap178:
INC checksum
CMPX #2c
BNE trap178
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #2c
trap179:
INC checksum
CMPY #2c
BNE trap179
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #2c
trap180:
INC checksum
CMPZ #2c
BNE trap180
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #30
trap181:
INC checksum
CMPX #3c
BNE trap181
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #30
trap182:
INC checksum
CMPY #3c
BNE trap182
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #30
trap183:
INC checksum
CMPZ #3c
BNE trap183
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #34
trap184:
INC checksum
CMPX #3c
BNE trap184
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #34
trap185:
INC checksum
CMPY #3c
BNE trap185
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #34
trap186:
INC checksum
CMPZ #3c
BNE trap186
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #38
trap187:
INC checksum
CMPX #3c
BNE trap187
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #38
trap188:
INC checksum
CMPY #3c
BNE trap188
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #38
trap189:
INC checksum
CMPZ #3c
BNE trap189
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
ORX #3c
trap190:
INC checksum
CMPX #3c
BNE trap190
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
ORY #3c
trap191:
INC checksum
CMPY #3c
BNE trap191
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
ORZ #3c
trap192:
INC checksum
CMPZ #3c
BNE trap192
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #00
trap193:
INC checksum
CMPX #10
BNE trap193
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #00
trap194:
INC checksum
CMPY #10
BNE trap194
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #00
trap195:
INC checksum
CMPZ #10
BNE trap195
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #04
trap196:
INC checksum
CMPX #14
BNE trap196
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #04
trap197:
INC checksum
CMPY #14
BNE trap197
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #04
trap198:
INC checksum
CMPZ #14
BNE trap198
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #08
trap199:
INC checksum
CMPX #18
BNE trap199
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #08
trap200:
INC checksum
CMPY #18
BNE trap200
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #08
trap201:
INC checksum
CMPZ #18
BNE trap201
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #0c
trap202:
INC checksum
CMPX #1c
BNE trap202
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #0c
trap203:
INC checksum
CMPY #1c
BNE trap203
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #0c
trap204:
INC checksum
CMPZ #1c
BNE trap204
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #10
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
ORY #10
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
ORZ #10
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
ORX #14
trap208:
INC checksum
CMPX #14
BNE trap208
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #14
trap209:
INC checksum
CMPY #14
BNE trap209
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #14
trap210:
INC checksum
CMPZ #14
BNE trap210
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #18
trap211:
INC checksum
CMPX #18
BNE trap211
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #18
trap212:
INC checksum
CMPY #18
BNE trap212
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #18
trap213:
INC checksum
CMPZ #18
BNE trap213
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #1c
trap214:
INC checksum
CMPX #1c
BNE trap214
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #1c
trap215:
INC checksum
CMPY #1c
BNE trap215
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #1c
trap216:
INC checksum
CMPZ #1c
BNE trap216
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #20
trap217:
INC checksum
CMPX #30
BNE trap217
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #20
trap218:
INC checksum
CMPY #30
BNE trap218
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #20
trap219:
INC checksum
CMPZ #30
BNE trap219
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #24
trap220:
INC checksum
CMPX #34
BNE trap220
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #24
trap221:
INC checksum
CMPY #34
BNE trap221
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #24
trap222:
INC checksum
CMPZ #34
BNE trap222
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #28
trap223:
INC checksum
CMPX #38
BNE trap223
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #28
trap224:
INC checksum
CMPY #38
BNE trap224
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #28
trap225:
INC checksum
CMPZ #38
BNE trap225
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #2c
trap226:
INC checksum
CMPX #3c
BNE trap226
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #2c
trap227:
INC checksum
CMPY #3c
BNE trap227
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #2c
trap228:
INC checksum
CMPZ #3c
BNE trap228
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #30
trap229:
INC checksum
CMPX #30
BNE trap229
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #30
trap230:
INC checksum
CMPY #30
BNE trap230
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #30
trap231:
INC checksum
CMPZ #30
BNE trap231
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #34
trap232:
INC checksum
CMPX #34
BNE trap232
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #34
trap233:
INC checksum
CMPY #34
BNE trap233
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #34
trap234:
INC checksum
CMPZ #34
BNE trap234
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #38
trap235:
INC checksum
CMPX #38
BNE trap235
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #38
trap236:
INC checksum
CMPY #38
BNE trap236
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #38
trap237:
INC checksum
CMPZ #38
BNE trap237
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
ORX #3c
trap238:
INC checksum
CMPX #3c
BNE trap238
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
ORY #3c
trap239:
INC checksum
CMPY #3c
BNE trap239
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
ORZ #3c
trap240:
INC checksum
CMPZ #3c
BNE trap240
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #00
trap241:
INC checksum
CMPX #14
BNE trap241
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #00
trap242:
INC checksum
CMPY #14
BNE trap242
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #00
trap243:
INC checksum
CMPZ #14
BNE trap243
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #04
trap244:
INC checksum
CMPX #14
BNE trap244
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #04
trap245:
INC checksum
CMPY #14
BNE trap245
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #04
trap246:
INC checksum
CMPZ #14
BNE trap246
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #08
trap247:
INC checksum
CMPX #1c
BNE trap247
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #08
trap248:
INC checksum
CMPY #1c
BNE trap248
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #08
trap249:
INC checksum
CMPZ #1c
BNE trap249
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #0c
trap250:
INC checksum
CMPX #1c
BNE trap250
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #0c
trap251:
INC checksum
CMPY #1c
BNE trap251
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #0c
trap252:
INC checksum
CMPZ #1c
BNE trap252
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #10
trap253:
INC checksum
CMPX #14
BNE trap253
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #10
trap254:
INC checksum
CMPY #14
BNE trap254
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #10
trap255:
INC checksum
CMPZ #14
BNE trap255
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #14
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
ORY #14
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
ORZ #14
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
ORX #18
trap259:
INC checksum
CMPX #1c
BNE trap259
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #18
trap260:
INC checksum
CMPY #1c
BNE trap260
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #18
trap261:
INC checksum
CMPZ #1c
BNE trap261
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #1c
trap262:
INC checksum
CMPX #1c
BNE trap262
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #1c
trap263:
INC checksum
CMPY #1c
BNE trap263
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #1c
trap264:
INC checksum
CMPZ #1c
BNE trap264
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #20
trap265:
INC checksum
CMPX #34
BNE trap265
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #20
trap266:
INC checksum
CMPY #34
BNE trap266
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #20
trap267:
INC checksum
CMPZ #34
BNE trap267
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #24
trap268:
INC checksum
CMPX #34
BNE trap268
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #24
trap269:
INC checksum
CMPY #34
BNE trap269
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #24
trap270:
INC checksum
CMPZ #34
BNE trap270
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #28
trap271:
INC checksum
CMPX #3c
BNE trap271
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #28
trap272:
INC checksum
CMPY #3c
BNE trap272
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #28
trap273:
INC checksum
CMPZ #3c
BNE trap273
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #2c
trap274:
INC checksum
CMPX #3c
BNE trap274
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #2c
trap275:
INC checksum
CMPY #3c
BNE trap275
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #2c
trap276:
INC checksum
CMPZ #3c
BNE trap276
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #30
trap277:
INC checksum
CMPX #34
BNE trap277
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #30
trap278:
INC checksum
CMPY #34
BNE trap278
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #30
trap279:
INC checksum
CMPZ #34
BNE trap279
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #34
trap280:
INC checksum
CMPX #34
BNE trap280
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #34
trap281:
INC checksum
CMPY #34
BNE trap281
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #34
trap282:
INC checksum
CMPZ #34
BNE trap282
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #38
trap283:
INC checksum
CMPX #3c
BNE trap283
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #38
trap284:
INC checksum
CMPY #3c
BNE trap284
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #38
trap285:
INC checksum
CMPZ #3c
BNE trap285
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
ORX #3c
trap286:
INC checksum
CMPX #3c
BNE trap286
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
ORY #3c
trap287:
INC checksum
CMPY #3c
BNE trap287
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
ORZ #3c
trap288:
INC checksum
CMPZ #3c
BNE trap288
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #00
trap289:
INC checksum
CMPX #18
BNE trap289
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #00
trap290:
INC checksum
CMPY #18
BNE trap290
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #00
trap291:
INC checksum
CMPZ #18
BNE trap291
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #04
trap292:
INC checksum
CMPX #1c
BNE trap292
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #04
trap293:
INC checksum
CMPY #1c
BNE trap293
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #04
trap294:
INC checksum
CMPZ #1c
BNE trap294
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #08
trap295:
INC checksum
CMPX #18
BNE trap295
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #08
trap296:
INC checksum
CMPY #18
BNE trap296
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #08
trap297:
INC checksum
CMPZ #18
BNE trap297
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #0c
trap298:
INC checksum
CMPX #1c
BNE trap298
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #0c
trap299:
INC checksum
CMPY #1c
BNE trap299
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #0c
trap300:
INC checksum
CMPZ #1c
BNE trap300
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #10
trap301:
INC checksum
CMPX #18
BNE trap301
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #10
trap302:
INC checksum
CMPY #18
BNE trap302
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #10
trap303:
INC checksum
CMPZ #18
BNE trap303
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #14
trap304:
INC checksum
CMPX #1c
BNE trap304
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #14
trap305:
INC checksum
CMPY #1c
BNE trap305
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #14
trap306:
INC checksum
CMPZ #1c
BNE trap306
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #18
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
ORY #18
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
ORZ #18
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
ORX #1c
trap310:
INC checksum
CMPX #1c
BNE trap310
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #1c
trap311:
INC checksum
CMPY #1c
BNE trap311
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #1c
trap312:
INC checksum
CMPZ #1c
BNE trap312
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #20
trap313:
INC checksum
CMPX #38
BNE trap313
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #20
trap314:
INC checksum
CMPY #38
BNE trap314
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #20
trap315:
INC checksum
CMPZ #38
BNE trap315
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #24
trap316:
INC checksum
CMPX #3c
BNE trap316
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #24
trap317:
INC checksum
CMPY #3c
BNE trap317
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #24
trap318:
INC checksum
CMPZ #3c
BNE trap318
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #28
trap319:
INC checksum
CMPX #38
BNE trap319
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #28
trap320:
INC checksum
CMPY #38
BNE trap320
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #28
trap321:
INC checksum
CMPZ #38
BNE trap321
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #2c
trap322:
INC checksum
CMPX #3c
BNE trap322
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #2c
trap323:
INC checksum
CMPY #3c
BNE trap323
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #2c
trap324:
INC checksum
CMPZ #3c
BNE trap324
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #30
trap325:
INC checksum
CMPX #38
BNE trap325
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #30
trap326:
INC checksum
CMPY #38
BNE trap326
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #30
trap327:
INC checksum
CMPZ #38
BNE trap327
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #34
trap328:
INC checksum
CMPX #3c
BNE trap328
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #34
trap329:
INC checksum
CMPY #3c
BNE trap329
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #34
trap330:
INC checksum
CMPZ #3c
BNE trap330
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #38
trap331:
INC checksum
CMPX #38
BNE trap331
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #38
trap332:
INC checksum
CMPY #38
BNE trap332
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #38
trap333:
INC checksum
CMPZ #38
BNE trap333
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
ORX #3c
trap334:
INC checksum
CMPX #3c
BNE trap334
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
ORY #3c
trap335:
INC checksum
CMPY #3c
BNE trap335
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
ORZ #3c
trap336:
INC checksum
CMPZ #3c
BNE trap336
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #00
trap337:
INC checksum
CMPX #1c
BNE trap337
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #00
trap338:
INC checksum
CMPY #1c
BNE trap338
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #00
trap339:
INC checksum
CMPZ #1c
BNE trap339
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #04
trap340:
INC checksum
CMPX #1c
BNE trap340
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #04
trap341:
INC checksum
CMPY #1c
BNE trap341
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #04
trap342:
INC checksum
CMPZ #1c
BNE trap342
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #08
trap343:
INC checksum
CMPX #1c
BNE trap343
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #08
trap344:
INC checksum
CMPY #1c
BNE trap344
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #08
trap345:
INC checksum
CMPZ #1c
BNE trap345
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #0c
trap346:
INC checksum
CMPX #1c
BNE trap346
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #0c
trap347:
INC checksum
CMPY #1c
BNE trap347
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #0c
trap348:
INC checksum
CMPZ #1c
BNE trap348
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #10
trap349:
INC checksum
CMPX #1c
BNE trap349
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #10
trap350:
INC checksum
CMPY #1c
BNE trap350
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #10
trap351:
INC checksum
CMPZ #1c
BNE trap351
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #14
trap352:
INC checksum
CMPX #1c
BNE trap352
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #14
trap353:
INC checksum
CMPY #1c
BNE trap353
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #14
trap354:
INC checksum
CMPZ #1c
BNE trap354
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #18
trap355:
INC checksum
CMPX #1c
BNE trap355
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #18
trap356:
INC checksum
CMPY #1c
BNE trap356
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #18
trap357:
INC checksum
CMPZ #1c
BNE trap357
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #1c
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
ORY #1c
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
ORZ #1c
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
ORX #20
trap361:
INC checksum
CMPX #3c
BNE trap361
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #20
trap362:
INC checksum
CMPY #3c
BNE trap362
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #20
trap363:
INC checksum
CMPZ #3c
BNE trap363
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #24
trap364:
INC checksum
CMPX #3c
BNE trap364
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #24
trap365:
INC checksum
CMPY #3c
BNE trap365
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #24
trap366:
INC checksum
CMPZ #3c
BNE trap366
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #28
trap367:
INC checksum
CMPX #3c
BNE trap367
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #28
trap368:
INC checksum
CMPY #3c
BNE trap368
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #28
trap369:
INC checksum
CMPZ #3c
BNE trap369
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #2c
trap370:
INC checksum
CMPX #3c
BNE trap370
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #2c
trap371:
INC checksum
CMPY #3c
BNE trap371
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #2c
trap372:
INC checksum
CMPZ #3c
BNE trap372
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #30
trap373:
INC checksum
CMPX #3c
BNE trap373
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #30
trap374:
INC checksum
CMPY #3c
BNE trap374
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #30
trap375:
INC checksum
CMPZ #3c
BNE trap375
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #34
trap376:
INC checksum
CMPX #3c
BNE trap376
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #34
trap377:
INC checksum
CMPY #3c
BNE trap377
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #34
trap378:
INC checksum
CMPZ #3c
BNE trap378
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #38
trap379:
INC checksum
CMPX #3c
BNE trap379
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #38
trap380:
INC checksum
CMPY #3c
BNE trap380
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #38
trap381:
INC checksum
CMPZ #3c
BNE trap381
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
ORX #3c
trap382:
INC checksum
CMPX #3c
BNE trap382
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
ORY #3c
trap383:
INC checksum
CMPY #3c
BNE trap383
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
ORZ #3c
trap384:
INC checksum
CMPZ #3c
BNE trap384
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #00
trap385:
INC checksum
CMPX #20
BNE trap385
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #00
trap386:
INC checksum
CMPY #20
BNE trap386
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #00
trap387:
INC checksum
CMPZ #20
BNE trap387
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #04
trap388:
INC checksum
CMPX #24
BNE trap388
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #04
trap389:
INC checksum
CMPY #24
BNE trap389
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #04
trap390:
INC checksum
CMPZ #24
BNE trap390
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #08
trap391:
INC checksum
CMPX #28
BNE trap391
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #08
trap392:
INC checksum
CMPY #28
BNE trap392
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #08
trap393:
INC checksum
CMPZ #28
BNE trap393
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #0c
trap394:
INC checksum
CMPX #2c
BNE trap394
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #0c
trap395:
INC checksum
CMPY #2c
BNE trap395
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #0c
trap396:
INC checksum
CMPZ #2c
BNE trap396
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #10
trap397:
INC checksum
CMPX #30
BNE trap397
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #10
trap398:
INC checksum
CMPY #30
BNE trap398
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #10
trap399:
INC checksum
CMPZ #30
BNE trap399
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #14
trap400:
INC checksum
CMPX #34
BNE trap400
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #14
trap401:
INC checksum
CMPY #34
BNE trap401
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #14
trap402:
INC checksum
CMPZ #34
BNE trap402
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #18
trap403:
INC checksum
CMPX #38
BNE trap403
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #18
trap404:
INC checksum
CMPY #38
BNE trap404
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #18
trap405:
INC checksum
CMPZ #38
BNE trap405
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #1c
trap406:
INC checksum
CMPX #3c
BNE trap406
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #1c
trap407:
INC checksum
CMPY #3c
BNE trap407
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #1c
trap408:
INC checksum
CMPZ #3c
BNE trap408
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #20
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
ORY #20
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
ORZ #20
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
ORX #24
trap412:
INC checksum
CMPX #24
BNE trap412
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #24
trap413:
INC checksum
CMPY #24
BNE trap413
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #24
trap414:
INC checksum
CMPZ #24
BNE trap414
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #28
trap415:
INC checksum
CMPX #28
BNE trap415
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #28
trap416:
INC checksum
CMPY #28
BNE trap416
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #28
trap417:
INC checksum
CMPZ #28
BNE trap417
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #2c
trap418:
INC checksum
CMPX #2c
BNE trap418
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #2c
trap419:
INC checksum
CMPY #2c
BNE trap419
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #2c
trap420:
INC checksum
CMPZ #2c
BNE trap420
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #30
trap421:
INC checksum
CMPX #30
BNE trap421
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #30
trap422:
INC checksum
CMPY #30
BNE trap422
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #30
trap423:
INC checksum
CMPZ #30
BNE trap423
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #34
trap424:
INC checksum
CMPX #34
BNE trap424
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #34
trap425:
INC checksum
CMPY #34
BNE trap425
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #34
trap426:
INC checksum
CMPZ #34
BNE trap426
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #38
trap427:
INC checksum
CMPX #38
BNE trap427
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #38
trap428:
INC checksum
CMPY #38
BNE trap428
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #38
trap429:
INC checksum
CMPZ #38
BNE trap429
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
ORX #3c
trap430:
INC checksum
CMPX #3c
BNE trap430
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
ORY #3c
trap431:
INC checksum
CMPY #3c
BNE trap431
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
ORZ #3c
trap432:
INC checksum
CMPZ #3c
BNE trap432
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #00
trap433:
INC checksum
CMPX #24
BNE trap433
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #00
trap434:
INC checksum
CMPY #24
BNE trap434
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #00
trap435:
INC checksum
CMPZ #24
BNE trap435
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #04
trap436:
INC checksum
CMPX #24
BNE trap436
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #04
trap437:
INC checksum
CMPY #24
BNE trap437
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #04
trap438:
INC checksum
CMPZ #24
BNE trap438
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #08
trap439:
INC checksum
CMPX #2c
BNE trap439
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #08
trap440:
INC checksum
CMPY #2c
BNE trap440
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #08
trap441:
INC checksum
CMPZ #2c
BNE trap441
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #0c
trap442:
INC checksum
CMPX #2c
BNE trap442
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #0c
trap443:
INC checksum
CMPY #2c
BNE trap443
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #0c
trap444:
INC checksum
CMPZ #2c
BNE trap444
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #10
trap445:
INC checksum
CMPX #34
BNE trap445
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #10
trap446:
INC checksum
CMPY #34
BNE trap446
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #10
trap447:
INC checksum
CMPZ #34
BNE trap447
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #14
trap448:
INC checksum
CMPX #34
BNE trap448
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #14
trap449:
INC checksum
CMPY #34
BNE trap449
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #14
trap450:
INC checksum
CMPZ #34
BNE trap450
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #18
trap451:
INC checksum
CMPX #3c
BNE trap451
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #18
trap452:
INC checksum
CMPY #3c
BNE trap452
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #18
trap453:
INC checksum
CMPZ #3c
BNE trap453
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #1c
trap454:
INC checksum
CMPX #3c
BNE trap454
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #1c
trap455:
INC checksum
CMPY #3c
BNE trap455
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #1c
trap456:
INC checksum
CMPZ #3c
BNE trap456
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #20
trap457:
INC checksum
CMPX #24
BNE trap457
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #20
trap458:
INC checksum
CMPY #24
BNE trap458
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #20
trap459:
INC checksum
CMPZ #24
BNE trap459
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #24
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
ORY #24
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
ORZ #24
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
ORX #28
trap463:
INC checksum
CMPX #2c
BNE trap463
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #28
trap464:
INC checksum
CMPY #2c
BNE trap464
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #28
trap465:
INC checksum
CMPZ #2c
BNE trap465
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #2c
trap466:
INC checksum
CMPX #2c
BNE trap466
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #2c
trap467:
INC checksum
CMPY #2c
BNE trap467
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #2c
trap468:
INC checksum
CMPZ #2c
BNE trap468
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #30
trap469:
INC checksum
CMPX #34
BNE trap469
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #30
trap470:
INC checksum
CMPY #34
BNE trap470
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #30
trap471:
INC checksum
CMPZ #34
BNE trap471
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #34
trap472:
INC checksum
CMPX #34
BNE trap472
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #34
trap473:
INC checksum
CMPY #34
BNE trap473
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #34
trap474:
INC checksum
CMPZ #34
BNE trap474
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #38
trap475:
INC checksum
CMPX #3c
BNE trap475
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #38
trap476:
INC checksum
CMPY #3c
BNE trap476
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #38
trap477:
INC checksum
CMPZ #3c
BNE trap477
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
ORX #3c
trap478:
INC checksum
CMPX #3c
BNE trap478
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
ORY #3c
trap479:
INC checksum
CMPY #3c
BNE trap479
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
ORZ #3c
trap480:
INC checksum
CMPZ #3c
BNE trap480
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #00
trap481:
INC checksum
CMPX #28
BNE trap481
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #00
trap482:
INC checksum
CMPY #28
BNE trap482
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #00
trap483:
INC checksum
CMPZ #28
BNE trap483
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #04
trap484:
INC checksum
CMPX #2c
BNE trap484
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #04
trap485:
INC checksum
CMPY #2c
BNE trap485
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #04
trap486:
INC checksum
CMPZ #2c
BNE trap486
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #08
trap487:
INC checksum
CMPX #28
BNE trap487
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #08
trap488:
INC checksum
CMPY #28
BNE trap488
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #08
trap489:
INC checksum
CMPZ #28
BNE trap489
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #0c
trap490:
INC checksum
CMPX #2c
BNE trap490
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #0c
trap491:
INC checksum
CMPY #2c
BNE trap491
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #0c
trap492:
INC checksum
CMPZ #2c
BNE trap492
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #10
trap493:
INC checksum
CMPX #38
BNE trap493
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #10
trap494:
INC checksum
CMPY #38
BNE trap494
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #10
trap495:
INC checksum
CMPZ #38
BNE trap495
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #14
trap496:
INC checksum
CMPX #3c
BNE trap496
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #14
trap497:
INC checksum
CMPY #3c
BNE trap497
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #14
trap498:
INC checksum
CMPZ #3c
BNE trap498
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #18
trap499:
INC checksum
CMPX #38
BNE trap499
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #18
trap500:
INC checksum
CMPY #38
BNE trap500
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #18
trap501:
INC checksum
CMPZ #38
BNE trap501
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #1c
trap502:
INC checksum
CMPX #3c
BNE trap502
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #1c
trap503:
INC checksum
CMPY #3c
BNE trap503
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #1c
trap504:
INC checksum
CMPZ #3c
BNE trap504
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #20
trap505:
INC checksum
CMPX #28
BNE trap505
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #20
trap506:
INC checksum
CMPY #28
BNE trap506
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #20
trap507:
INC checksum
CMPZ #28
BNE trap507
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #24
trap508:
INC checksum
CMPX #2c
BNE trap508
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #24
trap509:
INC checksum
CMPY #2c
BNE trap509
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #24
trap510:
INC checksum
CMPZ #2c
BNE trap510
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #28
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
ORY #28
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
ORZ #28
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
ORX #2c
trap514:
INC checksum
CMPX #2c
BNE trap514
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #2c
trap515:
INC checksum
CMPY #2c
BNE trap515
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #2c
trap516:
INC checksum
CMPZ #2c
BNE trap516
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #30
trap517:
INC checksum
CMPX #38
BNE trap517
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #30
trap518:
INC checksum
CMPY #38
BNE trap518
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #30
trap519:
INC checksum
CMPZ #38
BNE trap519
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #34
trap520:
INC checksum
CMPX #3c
BNE trap520
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #34
trap521:
INC checksum
CMPY #3c
BNE trap521
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #34
trap522:
INC checksum
CMPZ #3c
BNE trap522
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #38
trap523:
INC checksum
CMPX #38
BNE trap523
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #38
trap524:
INC checksum
CMPY #38
BNE trap524
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #38
trap525:
INC checksum
CMPZ #38
BNE trap525
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
ORX #3c
trap526:
INC checksum
CMPX #3c
BNE trap526
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
ORY #3c
trap527:
INC checksum
CMPY #3c
BNE trap527
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
ORZ #3c
trap528:
INC checksum
CMPZ #3c
BNE trap528
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #00
trap529:
INC checksum
CMPX #2c
BNE trap529
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #00
trap530:
INC checksum
CMPY #2c
BNE trap530
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #00
trap531:
INC checksum
CMPZ #2c
BNE trap531
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #04
trap532:
INC checksum
CMPX #2c
BNE trap532
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #04
trap533:
INC checksum
CMPY #2c
BNE trap533
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #04
trap534:
INC checksum
CMPZ #2c
BNE trap534
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #08
trap535:
INC checksum
CMPX #2c
BNE trap535
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #08
trap536:
INC checksum
CMPY #2c
BNE trap536
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #08
trap537:
INC checksum
CMPZ #2c
BNE trap537
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #0c
trap538:
INC checksum
CMPX #2c
BNE trap538
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #0c
trap539:
INC checksum
CMPY #2c
BNE trap539
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #0c
trap540:
INC checksum
CMPZ #2c
BNE trap540
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #10
trap541:
INC checksum
CMPX #3c
BNE trap541
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #10
trap542:
INC checksum
CMPY #3c
BNE trap542
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #10
trap543:
INC checksum
CMPZ #3c
BNE trap543
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #14
trap544:
INC checksum
CMPX #3c
BNE trap544
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #14
trap545:
INC checksum
CMPY #3c
BNE trap545
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #14
trap546:
INC checksum
CMPZ #3c
BNE trap546
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #18
trap547:
INC checksum
CMPX #3c
BNE trap547
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #18
trap548:
INC checksum
CMPY #3c
BNE trap548
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #18
trap549:
INC checksum
CMPZ #3c
BNE trap549
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #1c
trap550:
INC checksum
CMPX #3c
BNE trap550
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #1c
trap551:
INC checksum
CMPY #3c
BNE trap551
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #1c
trap552:
INC checksum
CMPZ #3c
BNE trap552
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #20
trap553:
INC checksum
CMPX #2c
BNE trap553
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #20
trap554:
INC checksum
CMPY #2c
BNE trap554
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #20
trap555:
INC checksum
CMPZ #2c
BNE trap555
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #24
trap556:
INC checksum
CMPX #2c
BNE trap556
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #24
trap557:
INC checksum
CMPY #2c
BNE trap557
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #24
trap558:
INC checksum
CMPZ #2c
BNE trap558
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #28
trap559:
INC checksum
CMPX #2c
BNE trap559
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #28
trap560:
INC checksum
CMPY #2c
BNE trap560
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #28
trap561:
INC checksum
CMPZ #2c
BNE trap561
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #2c
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
ORY #2c
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
ORZ #2c
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
ORX #30
trap565:
INC checksum
CMPX #3c
BNE trap565
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #30
trap566:
INC checksum
CMPY #3c
BNE trap566
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #30
trap567:
INC checksum
CMPZ #3c
BNE trap567
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #34
trap568:
INC checksum
CMPX #3c
BNE trap568
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #34
trap569:
INC checksum
CMPY #3c
BNE trap569
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #34
trap570:
INC checksum
CMPZ #3c
BNE trap570
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #38
trap571:
INC checksum
CMPX #3c
BNE trap571
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #38
trap572:
INC checksum
CMPY #3c
BNE trap572
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #38
trap573:
INC checksum
CMPZ #3c
BNE trap573
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
ORX #3c
trap574:
INC checksum
CMPX #3c
BNE trap574
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
ORY #3c
trap575:
INC checksum
CMPY #3c
BNE trap575
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
ORZ #3c
trap576:
INC checksum
CMPZ #3c
BNE trap576
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #00
trap577:
INC checksum
CMPX #30
BNE trap577
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #00
trap578:
INC checksum
CMPY #30
BNE trap578
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #00
trap579:
INC checksum
CMPZ #30
BNE trap579
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #04
trap580:
INC checksum
CMPX #34
BNE trap580
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #04
trap581:
INC checksum
CMPY #34
BNE trap581
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #04
trap582:
INC checksum
CMPZ #34
BNE trap582
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #08
trap583:
INC checksum
CMPX #38
BNE trap583
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #08
trap584:
INC checksum
CMPY #38
BNE trap584
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #08
trap585:
INC checksum
CMPZ #38
BNE trap585
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #0c
trap586:
INC checksum
CMPX #3c
BNE trap586
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #0c
trap587:
INC checksum
CMPY #3c
BNE trap587
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #0c
trap588:
INC checksum
CMPZ #3c
BNE trap588
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #10
trap589:
INC checksum
CMPX #30
BNE trap589
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #10
trap590:
INC checksum
CMPY #30
BNE trap590
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #10
trap591:
INC checksum
CMPZ #30
BNE trap591
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #14
trap592:
INC checksum
CMPX #34
BNE trap592
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #14
trap593:
INC checksum
CMPY #34
BNE trap593
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #14
trap594:
INC checksum
CMPZ #34
BNE trap594
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #18
trap595:
INC checksum
CMPX #38
BNE trap595
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #18
trap596:
INC checksum
CMPY #38
BNE trap596
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #18
trap597:
INC checksum
CMPZ #38
BNE trap597
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #1c
trap598:
INC checksum
CMPX #3c
BNE trap598
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #1c
trap599:
INC checksum
CMPY #3c
BNE trap599
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #1c
trap600:
INC checksum
CMPZ #3c
BNE trap600
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #20
trap601:
INC checksum
CMPX #30
BNE trap601
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #20
trap602:
INC checksum
CMPY #30
BNE trap602
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #20
trap603:
INC checksum
CMPZ #30
BNE trap603
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #24
trap604:
INC checksum
CMPX #34
BNE trap604
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #24
trap605:
INC checksum
CMPY #34
BNE trap605
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #24
trap606:
INC checksum
CMPZ #34
BNE trap606
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #28
trap607:
INC checksum
CMPX #38
BNE trap607
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #28
trap608:
INC checksum
CMPY #38
BNE trap608
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #28
trap609:
INC checksum
CMPZ #38
BNE trap609
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #2c
trap610:
INC checksum
CMPX #3c
BNE trap610
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #2c
trap611:
INC checksum
CMPY #3c
BNE trap611
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #2c
trap612:
INC checksum
CMPZ #3c
BNE trap612
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #30
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
ORY #30
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
ORZ #30
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
ORX #34
trap616:
INC checksum
CMPX #34
BNE trap616
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #34
trap617:
INC checksum
CMPY #34
BNE trap617
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #34
trap618:
INC checksum
CMPZ #34
BNE trap618
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #38
trap619:
INC checksum
CMPX #38
BNE trap619
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #38
trap620:
INC checksum
CMPY #38
BNE trap620
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #38
trap621:
INC checksum
CMPZ #38
BNE trap621
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
ORX #3c
trap622:
INC checksum
CMPX #3c
BNE trap622
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
ORY #3c
trap623:
INC checksum
CMPY #3c
BNE trap623
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
ORZ #3c
trap624:
INC checksum
CMPZ #3c
BNE trap624
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #00
trap625:
INC checksum
CMPX #34
BNE trap625
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #00
trap626:
INC checksum
CMPY #34
BNE trap626
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #00
trap627:
INC checksum
CMPZ #34
BNE trap627
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #04
trap628:
INC checksum
CMPX #34
BNE trap628
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #04
trap629:
INC checksum
CMPY #34
BNE trap629
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #04
trap630:
INC checksum
CMPZ #34
BNE trap630
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #08
trap631:
INC checksum
CMPX #3c
BNE trap631
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #08
trap632:
INC checksum
CMPY #3c
BNE trap632
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #08
trap633:
INC checksum
CMPZ #3c
BNE trap633
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #0c
trap634:
INC checksum
CMPX #3c
BNE trap634
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #0c
trap635:
INC checksum
CMPY #3c
BNE trap635
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #0c
trap636:
INC checksum
CMPZ #3c
BNE trap636
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #10
trap637:
INC checksum
CMPX #34
BNE trap637
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #10
trap638:
INC checksum
CMPY #34
BNE trap638
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #10
trap639:
INC checksum
CMPZ #34
BNE trap639
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #14
trap640:
INC checksum
CMPX #34
BNE trap640
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #14
trap641:
INC checksum
CMPY #34
BNE trap641
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #14
trap642:
INC checksum
CMPZ #34
BNE trap642
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #18
trap643:
INC checksum
CMPX #3c
BNE trap643
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #18
trap644:
INC checksum
CMPY #3c
BNE trap644
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #18
trap645:
INC checksum
CMPZ #3c
BNE trap645
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #1c
trap646:
INC checksum
CMPX #3c
BNE trap646
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #1c
trap647:
INC checksum
CMPY #3c
BNE trap647
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #1c
trap648:
INC checksum
CMPZ #3c
BNE trap648
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #20
trap649:
INC checksum
CMPX #34
BNE trap649
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #20
trap650:
INC checksum
CMPY #34
BNE trap650
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #20
trap651:
INC checksum
CMPZ #34
BNE trap651
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #24
trap652:
INC checksum
CMPX #34
BNE trap652
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #24
trap653:
INC checksum
CMPY #34
BNE trap653
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #24
trap654:
INC checksum
CMPZ #34
BNE trap654
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #28
trap655:
INC checksum
CMPX #3c
BNE trap655
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #28
trap656:
INC checksum
CMPY #3c
BNE trap656
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #28
trap657:
INC checksum
CMPZ #3c
BNE trap657
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #2c
trap658:
INC checksum
CMPX #3c
BNE trap658
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #2c
trap659:
INC checksum
CMPY #3c
BNE trap659
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #2c
trap660:
INC checksum
CMPZ #3c
BNE trap660
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #30
trap661:
INC checksum
CMPX #34
BNE trap661
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #30
trap662:
INC checksum
CMPY #34
BNE trap662
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #30
trap663:
INC checksum
CMPZ #34
BNE trap663
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #34
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
ORY #34
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
ORZ #34
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
ORX #38
trap667:
INC checksum
CMPX #3c
BNE trap667
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #38
trap668:
INC checksum
CMPY #3c
BNE trap668
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #38
trap669:
INC checksum
CMPZ #3c
BNE trap669
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
ORX #3c
trap670:
INC checksum
CMPX #3c
BNE trap670
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
ORY #3c
trap671:
INC checksum
CMPY #3c
BNE trap671
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
ORZ #3c
trap672:
INC checksum
CMPZ #3c
BNE trap672
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #00
trap673:
INC checksum
CMPX #38
BNE trap673
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #00
trap674:
INC checksum
CMPY #38
BNE trap674
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #00
trap675:
INC checksum
CMPZ #38
BNE trap675
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #04
trap676:
INC checksum
CMPX #3c
BNE trap676
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #04
trap677:
INC checksum
CMPY #3c
BNE trap677
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #04
trap678:
INC checksum
CMPZ #3c
BNE trap678
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #08
trap679:
INC checksum
CMPX #38
BNE trap679
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #08
trap680:
INC checksum
CMPY #38
BNE trap680
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #08
trap681:
INC checksum
CMPZ #38
BNE trap681
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #0c
trap682:
INC checksum
CMPX #3c
BNE trap682
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #0c
trap683:
INC checksum
CMPY #3c
BNE trap683
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #0c
trap684:
INC checksum
CMPZ #3c
BNE trap684
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #10
trap685:
INC checksum
CMPX #38
BNE trap685
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #10
trap686:
INC checksum
CMPY #38
BNE trap686
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #10
trap687:
INC checksum
CMPZ #38
BNE trap687
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #14
trap688:
INC checksum
CMPX #3c
BNE trap688
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #14
trap689:
INC checksum
CMPY #3c
BNE trap689
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #14
trap690:
INC checksum
CMPZ #3c
BNE trap690
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #18
trap691:
INC checksum
CMPX #38
BNE trap691
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #18
trap692:
INC checksum
CMPY #38
BNE trap692
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #18
trap693:
INC checksum
CMPZ #38
BNE trap693
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #1c
trap694:
INC checksum
CMPX #3c
BNE trap694
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #1c
trap695:
INC checksum
CMPY #3c
BNE trap695
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #1c
trap696:
INC checksum
CMPZ #3c
BNE trap696
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #20
trap697:
INC checksum
CMPX #38
BNE trap697
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #20
trap698:
INC checksum
CMPY #38
BNE trap698
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #20
trap699:
INC checksum
CMPZ #38
BNE trap699
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #24
trap700:
INC checksum
CMPX #3c
BNE trap700
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #24
trap701:
INC checksum
CMPY #3c
BNE trap701
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #24
trap702:
INC checksum
CMPZ #3c
BNE trap702
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #28
trap703:
INC checksum
CMPX #38
BNE trap703
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #28
trap704:
INC checksum
CMPY #38
BNE trap704
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #28
trap705:
INC checksum
CMPZ #38
BNE trap705
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #2c
trap706:
INC checksum
CMPX #3c
BNE trap706
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #2c
trap707:
INC checksum
CMPY #3c
BNE trap707
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #2c
trap708:
INC checksum
CMPZ #3c
BNE trap708
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #30
trap709:
INC checksum
CMPX #38
BNE trap709
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #30
trap710:
INC checksum
CMPY #38
BNE trap710
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #30
trap711:
INC checksum
CMPZ #38
BNE trap711
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #34
trap712:
INC checksum
CMPX #3c
BNE trap712
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #34
trap713:
INC checksum
CMPY #3c
BNE trap713
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #34
trap714:
INC checksum
CMPZ #3c
BNE trap714
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
ORX #38
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
ORY #38
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
ORZ #38
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
ORX #3c
trap718:
INC checksum
CMPX #3c
BNE trap718
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
ORY #3c
trap719:
INC checksum
CMPY #3c
BNE trap719
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
ORZ #3c
trap720:
INC checksum
CMPZ #3c
BNE trap720
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #00
trap721:
INC checksum
CMPX #3c
BNE trap721
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #00
trap722:
INC checksum
CMPY #3c
BNE trap722
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #00
trap723:
INC checksum
CMPZ #3c
BNE trap723
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #04
trap724:
INC checksum
CMPX #3c
BNE trap724
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #04
trap725:
INC checksum
CMPY #3c
BNE trap725
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #04
trap726:
INC checksum
CMPZ #3c
BNE trap726
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #08
trap727:
INC checksum
CMPX #3c
BNE trap727
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #08
trap728:
INC checksum
CMPY #3c
BNE trap728
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #08
trap729:
INC checksum
CMPZ #3c
BNE trap729
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #0c
trap730:
INC checksum
CMPX #3c
BNE trap730
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #0c
trap731:
INC checksum
CMPY #3c
BNE trap731
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #0c
trap732:
INC checksum
CMPZ #3c
BNE trap732
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #10
trap733:
INC checksum
CMPX #3c
BNE trap733
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #10
trap734:
INC checksum
CMPY #3c
BNE trap734
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #10
trap735:
INC checksum
CMPZ #3c
BNE trap735
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #14
trap736:
INC checksum
CMPX #3c
BNE trap736
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #14
trap737:
INC checksum
CMPY #3c
BNE trap737
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #14
trap738:
INC checksum
CMPZ #3c
BNE trap738
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #18
trap739:
INC checksum
CMPX #3c
BNE trap739
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #18
trap740:
INC checksum
CMPY #3c
BNE trap740
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #18
trap741:
INC checksum
CMPZ #3c
BNE trap741
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #1c
trap742:
INC checksum
CMPX #3c
BNE trap742
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #1c
trap743:
INC checksum
CMPY #3c
BNE trap743
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #1c
trap744:
INC checksum
CMPZ #3c
BNE trap744
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #20
trap745:
INC checksum
CMPX #3c
BNE trap745
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #20
trap746:
INC checksum
CMPY #3c
BNE trap746
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #20
trap747:
INC checksum
CMPZ #3c
BNE trap747
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #24
trap748:
INC checksum
CMPX #3c
BNE trap748
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #24
trap749:
INC checksum
CMPY #3c
BNE trap749
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #24
trap750:
INC checksum
CMPZ #3c
BNE trap750
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #28
trap751:
INC checksum
CMPX #3c
BNE trap751
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #28
trap752:
INC checksum
CMPY #3c
BNE trap752
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #28
trap753:
INC checksum
CMPZ #3c
BNE trap753
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #2c
trap754:
INC checksum
CMPX #3c
BNE trap754
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #2c
trap755:
INC checksum
CMPY #3c
BNE trap755
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #2c
trap756:
INC checksum
CMPZ #3c
BNE trap756
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #30
trap757:
INC checksum
CMPX #3c
BNE trap757
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #30
trap758:
INC checksum
CMPY #3c
BNE trap758
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #30
trap759:
INC checksum
CMPZ #3c
BNE trap759
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #34
trap760:
INC checksum
CMPX #3c
BNE trap760
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #34
trap761:
INC checksum
CMPY #3c
BNE trap761
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #34
trap762:
INC checksum
CMPZ #3c
BNE trap762
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #38
trap763:
INC checksum
CMPX #3c
BNE trap763
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
ORY #38
trap764:
INC checksum
CMPY #3c
BNE trap764
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
ORZ #38
trap765:
INC checksum
CMPZ #3c
BNE trap765
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
ORX #3c
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
ORY #3c
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
ORZ #3c
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
