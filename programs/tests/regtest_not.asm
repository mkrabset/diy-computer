NOP
NOP
NOP
start:
XORtest:
LDX #00
NOTX
trap1:
INC checksum
CMPX #ff
BNE trap1
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #00
NOTY
trap2:
INC checksum
CMPY #ff
BNE trap2
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #00
NOTZ
trap3:
INC checksum
CMPZ #ff
BNE trap3
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #01
NOTX
trap4:
INC checksum
CMPX #fe
BNE trap4
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #01
NOTY
trap5:
INC checksum
CMPY #fe
BNE trap5
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #01
NOTZ
trap6:
INC checksum
CMPZ #fe
BNE trap6
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #02
NOTX
trap7:
INC checksum
CMPX #fd
BNE trap7
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #02
NOTY
trap8:
INC checksum
CMPY #fd
BNE trap8
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #02
NOTZ
trap9:
INC checksum
CMPZ #fd
BNE trap9
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #03
NOTX
trap10:
INC checksum
CMPX #fc
BNE trap10
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #03
NOTY
trap11:
INC checksum
CMPY #fc
BNE trap11
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #03
NOTZ
trap12:
INC checksum
CMPZ #fc
BNE trap12
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #04
NOTX
trap13:
INC checksum
CMPX #fb
BNE trap13
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #04
NOTY
trap14:
INC checksum
CMPY #fb
BNE trap14
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #04
NOTZ
trap15:
INC checksum
CMPZ #fb
BNE trap15
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #05
NOTX
trap16:
INC checksum
CMPX #fa
BNE trap16
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #05
NOTY
trap17:
INC checksum
CMPY #fa
BNE trap17
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #05
NOTZ
trap18:
INC checksum
CMPZ #fa
BNE trap18
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #06
NOTX
trap19:
INC checksum
CMPX #f9
BNE trap19
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #06
NOTY
trap20:
INC checksum
CMPY #f9
BNE trap20
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #06
NOTZ
trap21:
INC checksum
CMPZ #f9
BNE trap21
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #07
NOTX
trap22:
INC checksum
CMPX #f8
BNE trap22
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #07
NOTY
trap23:
INC checksum
CMPY #f8
BNE trap23
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #07
NOTZ
trap24:
INC checksum
CMPZ #f8
BNE trap24
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #08
NOTX
trap25:
INC checksum
CMPX #f7
BNE trap25
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #08
NOTY
trap26:
INC checksum
CMPY #f7
BNE trap26
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #08
NOTZ
trap27:
INC checksum
CMPZ #f7
BNE trap27
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #09
NOTX
trap28:
INC checksum
CMPX #f6
BNE trap28
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #09
NOTY
trap29:
INC checksum
CMPY #f6
BNE trap29
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #09
NOTZ
trap30:
INC checksum
CMPZ #f6
BNE trap30
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0a
NOTX
trap31:
INC checksum
CMPX #f5
BNE trap31
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0a
NOTY
trap32:
INC checksum
CMPY #f5
BNE trap32
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0a
NOTZ
trap33:
INC checksum
CMPZ #f5
BNE trap33
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0b
NOTX
trap34:
INC checksum
CMPX #f4
BNE trap34
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0b
NOTY
trap35:
INC checksum
CMPY #f4
BNE trap35
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0b
NOTZ
trap36:
INC checksum
CMPZ #f4
BNE trap36
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0c
NOTX
trap37:
INC checksum
CMPX #f3
BNE trap37
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0c
NOTY
trap38:
INC checksum
CMPY #f3
BNE trap38
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0c
NOTZ
trap39:
INC checksum
CMPZ #f3
BNE trap39
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0d
NOTX
trap40:
INC checksum
CMPX #f2
BNE trap40
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0d
NOTY
trap41:
INC checksum
CMPY #f2
BNE trap41
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0d
NOTZ
trap42:
INC checksum
CMPZ #f2
BNE trap42
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0e
NOTX
trap43:
INC checksum
CMPX #f1
BNE trap43
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0e
NOTY
trap44:
INC checksum
CMPY #f1
BNE trap44
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0e
NOTZ
trap45:
INC checksum
CMPZ #f1
BNE trap45
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #0f
NOTX
trap46:
INC checksum
CMPX #f0
BNE trap46
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #0f
NOTY
trap47:
INC checksum
CMPY #f0
BNE trap47
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #0f
NOTZ
trap48:
INC checksum
CMPZ #f0
BNE trap48
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #10
NOTX
trap49:
INC checksum
CMPX #ef
BNE trap49
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #10
NOTY
trap50:
INC checksum
CMPY #ef
BNE trap50
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #10
NOTZ
trap51:
INC checksum
CMPZ #ef
BNE trap51
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #11
NOTX
trap52:
INC checksum
CMPX #ee
BNE trap52
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #11
NOTY
trap53:
INC checksum
CMPY #ee
BNE trap53
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #11
NOTZ
trap54:
INC checksum
CMPZ #ee
BNE trap54
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #12
NOTX
trap55:
INC checksum
CMPX #ed
BNE trap55
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #12
NOTY
trap56:
INC checksum
CMPY #ed
BNE trap56
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #12
NOTZ
trap57:
INC checksum
CMPZ #ed
BNE trap57
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #13
NOTX
trap58:
INC checksum
CMPX #ec
BNE trap58
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #13
NOTY
trap59:
INC checksum
CMPY #ec
BNE trap59
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #13
NOTZ
trap60:
INC checksum
CMPZ #ec
BNE trap60
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #14
NOTX
trap61:
INC checksum
CMPX #eb
BNE trap61
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #14
NOTY
trap62:
INC checksum
CMPY #eb
BNE trap62
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #14
NOTZ
trap63:
INC checksum
CMPZ #eb
BNE trap63
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #15
NOTX
trap64:
INC checksum
CMPX #ea
BNE trap64
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #15
NOTY
trap65:
INC checksum
CMPY #ea
BNE trap65
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #15
NOTZ
trap66:
INC checksum
CMPZ #ea
BNE trap66
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #16
NOTX
trap67:
INC checksum
CMPX #e9
BNE trap67
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #16
NOTY
trap68:
INC checksum
CMPY #e9
BNE trap68
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #16
NOTZ
trap69:
INC checksum
CMPZ #e9
BNE trap69
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #17
NOTX
trap70:
INC checksum
CMPX #e8
BNE trap70
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #17
NOTY
trap71:
INC checksum
CMPY #e8
BNE trap71
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #17
NOTZ
trap72:
INC checksum
CMPZ #e8
BNE trap72
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #18
NOTX
trap73:
INC checksum
CMPX #e7
BNE trap73
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #18
NOTY
trap74:
INC checksum
CMPY #e7
BNE trap74
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #18
NOTZ
trap75:
INC checksum
CMPZ #e7
BNE trap75
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #19
NOTX
trap76:
INC checksum
CMPX #e6
BNE trap76
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #19
NOTY
trap77:
INC checksum
CMPY #e6
BNE trap77
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #19
NOTZ
trap78:
INC checksum
CMPZ #e6
BNE trap78
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1a
NOTX
trap79:
INC checksum
CMPX #e5
BNE trap79
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1a
NOTY
trap80:
INC checksum
CMPY #e5
BNE trap80
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1a
NOTZ
trap81:
INC checksum
CMPZ #e5
BNE trap81
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1b
NOTX
trap82:
INC checksum
CMPX #e4
BNE trap82
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1b
NOTY
trap83:
INC checksum
CMPY #e4
BNE trap83
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1b
NOTZ
trap84:
INC checksum
CMPZ #e4
BNE trap84
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1c
NOTX
trap85:
INC checksum
CMPX #e3
BNE trap85
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1c
NOTY
trap86:
INC checksum
CMPY #e3
BNE trap86
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1c
NOTZ
trap87:
INC checksum
CMPZ #e3
BNE trap87
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1d
NOTX
trap88:
INC checksum
CMPX #e2
BNE trap88
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1d
NOTY
trap89:
INC checksum
CMPY #e2
BNE trap89
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1d
NOTZ
trap90:
INC checksum
CMPZ #e2
BNE trap90
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1e
NOTX
trap91:
INC checksum
CMPX #e1
BNE trap91
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1e
NOTY
trap92:
INC checksum
CMPY #e1
BNE trap92
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1e
NOTZ
trap93:
INC checksum
CMPZ #e1
BNE trap93
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #1f
NOTX
trap94:
INC checksum
CMPX #e0
BNE trap94
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #1f
NOTY
trap95:
INC checksum
CMPY #e0
BNE trap95
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #1f
NOTZ
trap96:
INC checksum
CMPZ #e0
BNE trap96
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #20
NOTX
trap97:
INC checksum
CMPX #df
BNE trap97
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #20
NOTY
trap98:
INC checksum
CMPY #df
BNE trap98
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #20
NOTZ
trap99:
INC checksum
CMPZ #df
BNE trap99
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #21
NOTX
trap100:
INC checksum
CMPX #de
BNE trap100
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #21
NOTY
trap101:
INC checksum
CMPY #de
BNE trap101
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #21
NOTZ
trap102:
INC checksum
CMPZ #de
BNE trap102
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #22
NOTX
trap103:
INC checksum
CMPX #dd
BNE trap103
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #22
NOTY
trap104:
INC checksum
CMPY #dd
BNE trap104
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #22
NOTZ
trap105:
INC checksum
CMPZ #dd
BNE trap105
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #23
NOTX
trap106:
INC checksum
CMPX #dc
BNE trap106
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #23
NOTY
trap107:
INC checksum
CMPY #dc
BNE trap107
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #23
NOTZ
trap108:
INC checksum
CMPZ #dc
BNE trap108
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #24
NOTX
trap109:
INC checksum
CMPX #db
BNE trap109
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #24
NOTY
trap110:
INC checksum
CMPY #db
BNE trap110
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #24
NOTZ
trap111:
INC checksum
CMPZ #db
BNE trap111
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #25
NOTX
trap112:
INC checksum
CMPX #da
BNE trap112
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #25
NOTY
trap113:
INC checksum
CMPY #da
BNE trap113
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #25
NOTZ
trap114:
INC checksum
CMPZ #da
BNE trap114
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #26
NOTX
trap115:
INC checksum
CMPX #d9
BNE trap115
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #26
NOTY
trap116:
INC checksum
CMPY #d9
BNE trap116
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #26
NOTZ
trap117:
INC checksum
CMPZ #d9
BNE trap117
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #27
NOTX
trap118:
INC checksum
CMPX #d8
BNE trap118
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #27
NOTY
trap119:
INC checksum
CMPY #d8
BNE trap119
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #27
NOTZ
trap120:
INC checksum
CMPZ #d8
BNE trap120
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #28
NOTX
trap121:
INC checksum
CMPX #d7
BNE trap121
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #28
NOTY
trap122:
INC checksum
CMPY #d7
BNE trap122
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #28
NOTZ
trap123:
INC checksum
CMPZ #d7
BNE trap123
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #29
NOTX
trap124:
INC checksum
CMPX #d6
BNE trap124
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #29
NOTY
trap125:
INC checksum
CMPY #d6
BNE trap125
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #29
NOTZ
trap126:
INC checksum
CMPZ #d6
BNE trap126
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2a
NOTX
trap127:
INC checksum
CMPX #d5
BNE trap127
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2a
NOTY
trap128:
INC checksum
CMPY #d5
BNE trap128
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2a
NOTZ
trap129:
INC checksum
CMPZ #d5
BNE trap129
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2b
NOTX
trap130:
INC checksum
CMPX #d4
BNE trap130
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2b
NOTY
trap131:
INC checksum
CMPY #d4
BNE trap131
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2b
NOTZ
trap132:
INC checksum
CMPZ #d4
BNE trap132
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2c
NOTX
trap133:
INC checksum
CMPX #d3
BNE trap133
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2c
NOTY
trap134:
INC checksum
CMPY #d3
BNE trap134
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2c
NOTZ
trap135:
INC checksum
CMPZ #d3
BNE trap135
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2d
NOTX
trap136:
INC checksum
CMPX #d2
BNE trap136
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2d
NOTY
trap137:
INC checksum
CMPY #d2
BNE trap137
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2d
NOTZ
trap138:
INC checksum
CMPZ #d2
BNE trap138
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2e
NOTX
trap139:
INC checksum
CMPX #d1
BNE trap139
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2e
NOTY
trap140:
INC checksum
CMPY #d1
BNE trap140
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2e
NOTZ
trap141:
INC checksum
CMPZ #d1
BNE trap141
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #2f
NOTX
trap142:
INC checksum
CMPX #d0
BNE trap142
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #2f
NOTY
trap143:
INC checksum
CMPY #d0
BNE trap143
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #2f
NOTZ
trap144:
INC checksum
CMPZ #d0
BNE trap144
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #30
NOTX
trap145:
INC checksum
CMPX #cf
BNE trap145
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #30
NOTY
trap146:
INC checksum
CMPY #cf
BNE trap146
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #30
NOTZ
trap147:
INC checksum
CMPZ #cf
BNE trap147
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #31
NOTX
trap148:
INC checksum
CMPX #ce
BNE trap148
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #31
NOTY
trap149:
INC checksum
CMPY #ce
BNE trap149
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #31
NOTZ
trap150:
INC checksum
CMPZ #ce
BNE trap150
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #32
NOTX
trap151:
INC checksum
CMPX #cd
BNE trap151
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #32
NOTY
trap152:
INC checksum
CMPY #cd
BNE trap152
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #32
NOTZ
trap153:
INC checksum
CMPZ #cd
BNE trap153
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #33
NOTX
trap154:
INC checksum
CMPX #cc
BNE trap154
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #33
NOTY
trap155:
INC checksum
CMPY #cc
BNE trap155
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #33
NOTZ
trap156:
INC checksum
CMPZ #cc
BNE trap156
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #34
NOTX
trap157:
INC checksum
CMPX #cb
BNE trap157
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #34
NOTY
trap158:
INC checksum
CMPY #cb
BNE trap158
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #34
NOTZ
trap159:
INC checksum
CMPZ #cb
BNE trap159
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #35
NOTX
trap160:
INC checksum
CMPX #ca
BNE trap160
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #35
NOTY
trap161:
INC checksum
CMPY #ca
BNE trap161
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #35
NOTZ
trap162:
INC checksum
CMPZ #ca
BNE trap162
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #36
NOTX
trap163:
INC checksum
CMPX #c9
BNE trap163
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #36
NOTY
trap164:
INC checksum
CMPY #c9
BNE trap164
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #36
NOTZ
trap165:
INC checksum
CMPZ #c9
BNE trap165
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #37
NOTX
trap166:
INC checksum
CMPX #c8
BNE trap166
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #37
NOTY
trap167:
INC checksum
CMPY #c8
BNE trap167
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #37
NOTZ
trap168:
INC checksum
CMPZ #c8
BNE trap168
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #38
NOTX
trap169:
INC checksum
CMPX #c7
BNE trap169
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #38
NOTY
trap170:
INC checksum
CMPY #c7
BNE trap170
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #38
NOTZ
trap171:
INC checksum
CMPZ #c7
BNE trap171
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #39
NOTX
trap172:
INC checksum
CMPX #c6
BNE trap172
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #39
NOTY
trap173:
INC checksum
CMPY #c6
BNE trap173
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #39
NOTZ
trap174:
INC checksum
CMPZ #c6
BNE trap174
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3a
NOTX
trap175:
INC checksum
CMPX #c5
BNE trap175
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3a
NOTY
trap176:
INC checksum
CMPY #c5
BNE trap176
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3a
NOTZ
trap177:
INC checksum
CMPZ #c5
BNE trap177
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3b
NOTX
trap178:
INC checksum
CMPX #c4
BNE trap178
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3b
NOTY
trap179:
INC checksum
CMPY #c4
BNE trap179
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3b
NOTZ
trap180:
INC checksum
CMPZ #c4
BNE trap180
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3c
NOTX
trap181:
INC checksum
CMPX #c3
BNE trap181
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3c
NOTY
trap182:
INC checksum
CMPY #c3
BNE trap182
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3c
NOTZ
trap183:
INC checksum
CMPZ #c3
BNE trap183
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3d
NOTX
trap184:
INC checksum
CMPX #c2
BNE trap184
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3d
NOTY
trap185:
INC checksum
CMPY #c2
BNE trap185
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3d
NOTZ
trap186:
INC checksum
CMPZ #c2
BNE trap186
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3e
NOTX
trap187:
INC checksum
CMPX #c1
BNE trap187
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3e
NOTY
trap188:
INC checksum
CMPY #c1
BNE trap188
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3e
NOTZ
trap189:
INC checksum
CMPZ #c1
BNE trap189
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #3f
NOTX
trap190:
INC checksum
CMPX #c0
BNE trap190
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #3f
NOTY
trap191:
INC checksum
CMPY #c0
BNE trap191
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #3f
NOTZ
trap192:
INC checksum
CMPZ #c0
BNE trap192
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #40
NOTX
trap193:
INC checksum
CMPX #bf
BNE trap193
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #40
NOTY
trap194:
INC checksum
CMPY #bf
BNE trap194
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #40
NOTZ
trap195:
INC checksum
CMPZ #bf
BNE trap195
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #41
NOTX
trap196:
INC checksum
CMPX #be
BNE trap196
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #41
NOTY
trap197:
INC checksum
CMPY #be
BNE trap197
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #41
NOTZ
trap198:
INC checksum
CMPZ #be
BNE trap198
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #42
NOTX
trap199:
INC checksum
CMPX #bd
BNE trap199
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #42
NOTY
trap200:
INC checksum
CMPY #bd
BNE trap200
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #42
NOTZ
trap201:
INC checksum
CMPZ #bd
BNE trap201
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #43
NOTX
trap202:
INC checksum
CMPX #bc
BNE trap202
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #43
NOTY
trap203:
INC checksum
CMPY #bc
BNE trap203
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #43
NOTZ
trap204:
INC checksum
CMPZ #bc
BNE trap204
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #44
NOTX
trap205:
INC checksum
CMPX #bb
BNE trap205
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #44
NOTY
trap206:
INC checksum
CMPY #bb
BNE trap206
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #44
NOTZ
trap207:
INC checksum
CMPZ #bb
BNE trap207
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #45
NOTX
trap208:
INC checksum
CMPX #ba
BNE trap208
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #45
NOTY
trap209:
INC checksum
CMPY #ba
BNE trap209
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #45
NOTZ
trap210:
INC checksum
CMPZ #ba
BNE trap210
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #46
NOTX
trap211:
INC checksum
CMPX #b9
BNE trap211
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #46
NOTY
trap212:
INC checksum
CMPY #b9
BNE trap212
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #46
NOTZ
trap213:
INC checksum
CMPZ #b9
BNE trap213
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #47
NOTX
trap214:
INC checksum
CMPX #b8
BNE trap214
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #47
NOTY
trap215:
INC checksum
CMPY #b8
BNE trap215
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #47
NOTZ
trap216:
INC checksum
CMPZ #b8
BNE trap216
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #48
NOTX
trap217:
INC checksum
CMPX #b7
BNE trap217
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #48
NOTY
trap218:
INC checksum
CMPY #b7
BNE trap218
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #48
NOTZ
trap219:
INC checksum
CMPZ #b7
BNE trap219
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #49
NOTX
trap220:
INC checksum
CMPX #b6
BNE trap220
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #49
NOTY
trap221:
INC checksum
CMPY #b6
BNE trap221
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #49
NOTZ
trap222:
INC checksum
CMPZ #b6
BNE trap222
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #4a
NOTX
trap223:
INC checksum
CMPX #b5
BNE trap223
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #4a
NOTY
trap224:
INC checksum
CMPY #b5
BNE trap224
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #4a
NOTZ
trap225:
INC checksum
CMPZ #b5
BNE trap225
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #4b
NOTX
trap226:
INC checksum
CMPX #b4
BNE trap226
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #4b
NOTY
trap227:
INC checksum
CMPY #b4
BNE trap227
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #4b
NOTZ
trap228:
INC checksum
CMPZ #b4
BNE trap228
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #4c
NOTX
trap229:
INC checksum
CMPX #b3
BNE trap229
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #4c
NOTY
trap230:
INC checksum
CMPY #b3
BNE trap230
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #4c
NOTZ
trap231:
INC checksum
CMPZ #b3
BNE trap231
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #4d
NOTX
trap232:
INC checksum
CMPX #b2
BNE trap232
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #4d
NOTY
trap233:
INC checksum
CMPY #b2
BNE trap233
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #4d
NOTZ
trap234:
INC checksum
CMPZ #b2
BNE trap234
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #4e
NOTX
trap235:
INC checksum
CMPX #b1
BNE trap235
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #4e
NOTY
trap236:
INC checksum
CMPY #b1
BNE trap236
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #4e
NOTZ
trap237:
INC checksum
CMPZ #b1
BNE trap237
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #4f
NOTX
trap238:
INC checksum
CMPX #b0
BNE trap238
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #4f
NOTY
trap239:
INC checksum
CMPY #b0
BNE trap239
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #4f
NOTZ
trap240:
INC checksum
CMPZ #b0
BNE trap240
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #50
NOTX
trap241:
INC checksum
CMPX #af
BNE trap241
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #50
NOTY
trap242:
INC checksum
CMPY #af
BNE trap242
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #50
NOTZ
trap243:
INC checksum
CMPZ #af
BNE trap243
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #51
NOTX
trap244:
INC checksum
CMPX #ae
BNE trap244
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #51
NOTY
trap245:
INC checksum
CMPY #ae
BNE trap245
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #51
NOTZ
trap246:
INC checksum
CMPZ #ae
BNE trap246
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #52
NOTX
trap247:
INC checksum
CMPX #ad
BNE trap247
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #52
NOTY
trap248:
INC checksum
CMPY #ad
BNE trap248
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #52
NOTZ
trap249:
INC checksum
CMPZ #ad
BNE trap249
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #53
NOTX
trap250:
INC checksum
CMPX #ac
BNE trap250
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #53
NOTY
trap251:
INC checksum
CMPY #ac
BNE trap251
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #53
NOTZ
trap252:
INC checksum
CMPZ #ac
BNE trap252
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #54
NOTX
trap253:
INC checksum
CMPX #ab
BNE trap253
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #54
NOTY
trap254:
INC checksum
CMPY #ab
BNE trap254
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #54
NOTZ
trap255:
INC checksum
CMPZ #ab
BNE trap255
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #55
NOTX
trap256:
INC checksum
CMPX #aa
BNE trap256
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #55
NOTY
trap257:
INC checksum
CMPY #aa
BNE trap257
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #55
NOTZ
trap258:
INC checksum
CMPZ #aa
BNE trap258
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #56
NOTX
trap259:
INC checksum
CMPX #a9
BNE trap259
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #56
NOTY
trap260:
INC checksum
CMPY #a9
BNE trap260
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #56
NOTZ
trap261:
INC checksum
CMPZ #a9
BNE trap261
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #57
NOTX
trap262:
INC checksum
CMPX #a8
BNE trap262
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #57
NOTY
trap263:
INC checksum
CMPY #a8
BNE trap263
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #57
NOTZ
trap264:
INC checksum
CMPZ #a8
BNE trap264
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #58
NOTX
trap265:
INC checksum
CMPX #a7
BNE trap265
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #58
NOTY
trap266:
INC checksum
CMPY #a7
BNE trap266
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #58
NOTZ
trap267:
INC checksum
CMPZ #a7
BNE trap267
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #59
NOTX
trap268:
INC checksum
CMPX #a6
BNE trap268
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #59
NOTY
trap269:
INC checksum
CMPY #a6
BNE trap269
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #59
NOTZ
trap270:
INC checksum
CMPZ #a6
BNE trap270
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #5a
NOTX
trap271:
INC checksum
CMPX #a5
BNE trap271
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #5a
NOTY
trap272:
INC checksum
CMPY #a5
BNE trap272
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #5a
NOTZ
trap273:
INC checksum
CMPZ #a5
BNE trap273
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #5b
NOTX
trap274:
INC checksum
CMPX #a4
BNE trap274
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #5b
NOTY
trap275:
INC checksum
CMPY #a4
BNE trap275
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #5b
NOTZ
trap276:
INC checksum
CMPZ #a4
BNE trap276
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #5c
NOTX
trap277:
INC checksum
CMPX #a3
BNE trap277
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #5c
NOTY
trap278:
INC checksum
CMPY #a3
BNE trap278
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #5c
NOTZ
trap279:
INC checksum
CMPZ #a3
BNE trap279
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #5d
NOTX
trap280:
INC checksum
CMPX #a2
BNE trap280
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #5d
NOTY
trap281:
INC checksum
CMPY #a2
BNE trap281
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #5d
NOTZ
trap282:
INC checksum
CMPZ #a2
BNE trap282
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #5e
NOTX
trap283:
INC checksum
CMPX #a1
BNE trap283
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #5e
NOTY
trap284:
INC checksum
CMPY #a1
BNE trap284
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #5e
NOTZ
trap285:
INC checksum
CMPZ #a1
BNE trap285
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #5f
NOTX
trap286:
INC checksum
CMPX #a0
BNE trap286
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #5f
NOTY
trap287:
INC checksum
CMPY #a0
BNE trap287
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #5f
NOTZ
trap288:
INC checksum
CMPZ #a0
BNE trap288
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #60
NOTX
trap289:
INC checksum
CMPX #9f
BNE trap289
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #60
NOTY
trap290:
INC checksum
CMPY #9f
BNE trap290
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #60
NOTZ
trap291:
INC checksum
CMPZ #9f
BNE trap291
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #61
NOTX
trap292:
INC checksum
CMPX #9e
BNE trap292
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #61
NOTY
trap293:
INC checksum
CMPY #9e
BNE trap293
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #61
NOTZ
trap294:
INC checksum
CMPZ #9e
BNE trap294
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #62
NOTX
trap295:
INC checksum
CMPX #9d
BNE trap295
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #62
NOTY
trap296:
INC checksum
CMPY #9d
BNE trap296
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #62
NOTZ
trap297:
INC checksum
CMPZ #9d
BNE trap297
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #63
NOTX
trap298:
INC checksum
CMPX #9c
BNE trap298
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #63
NOTY
trap299:
INC checksum
CMPY #9c
BNE trap299
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #63
NOTZ
trap300:
INC checksum
CMPZ #9c
BNE trap300
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #64
NOTX
trap301:
INC checksum
CMPX #9b
BNE trap301
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #64
NOTY
trap302:
INC checksum
CMPY #9b
BNE trap302
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #64
NOTZ
trap303:
INC checksum
CMPZ #9b
BNE trap303
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #65
NOTX
trap304:
INC checksum
CMPX #9a
BNE trap304
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #65
NOTY
trap305:
INC checksum
CMPY #9a
BNE trap305
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #65
NOTZ
trap306:
INC checksum
CMPZ #9a
BNE trap306
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #66
NOTX
trap307:
INC checksum
CMPX #99
BNE trap307
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #66
NOTY
trap308:
INC checksum
CMPY #99
BNE trap308
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #66
NOTZ
trap309:
INC checksum
CMPZ #99
BNE trap309
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #67
NOTX
trap310:
INC checksum
CMPX #98
BNE trap310
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #67
NOTY
trap311:
INC checksum
CMPY #98
BNE trap311
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #67
NOTZ
trap312:
INC checksum
CMPZ #98
BNE trap312
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #68
NOTX
trap313:
INC checksum
CMPX #97
BNE trap313
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #68
NOTY
trap314:
INC checksum
CMPY #97
BNE trap314
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #68
NOTZ
trap315:
INC checksum
CMPZ #97
BNE trap315
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #69
NOTX
trap316:
INC checksum
CMPX #96
BNE trap316
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #69
NOTY
trap317:
INC checksum
CMPY #96
BNE trap317
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #69
NOTZ
trap318:
INC checksum
CMPZ #96
BNE trap318
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #6a
NOTX
trap319:
INC checksum
CMPX #95
BNE trap319
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #6a
NOTY
trap320:
INC checksum
CMPY #95
BNE trap320
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #6a
NOTZ
trap321:
INC checksum
CMPZ #95
BNE trap321
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #6b
NOTX
trap322:
INC checksum
CMPX #94
BNE trap322
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #6b
NOTY
trap323:
INC checksum
CMPY #94
BNE trap323
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #6b
NOTZ
trap324:
INC checksum
CMPZ #94
BNE trap324
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #6c
NOTX
trap325:
INC checksum
CMPX #93
BNE trap325
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #6c
NOTY
trap326:
INC checksum
CMPY #93
BNE trap326
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #6c
NOTZ
trap327:
INC checksum
CMPZ #93
BNE trap327
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #6d
NOTX
trap328:
INC checksum
CMPX #92
BNE trap328
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #6d
NOTY
trap329:
INC checksum
CMPY #92
BNE trap329
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #6d
NOTZ
trap330:
INC checksum
CMPZ #92
BNE trap330
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #6e
NOTX
trap331:
INC checksum
CMPX #91
BNE trap331
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #6e
NOTY
trap332:
INC checksum
CMPY #91
BNE trap332
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #6e
NOTZ
trap333:
INC checksum
CMPZ #91
BNE trap333
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #6f
NOTX
trap334:
INC checksum
CMPX #90
BNE trap334
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #6f
NOTY
trap335:
INC checksum
CMPY #90
BNE trap335
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #6f
NOTZ
trap336:
INC checksum
CMPZ #90
BNE trap336
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #70
NOTX
trap337:
INC checksum
CMPX #8f
BNE trap337
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #70
NOTY
trap338:
INC checksum
CMPY #8f
BNE trap338
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #70
NOTZ
trap339:
INC checksum
CMPZ #8f
BNE trap339
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #71
NOTX
trap340:
INC checksum
CMPX #8e
BNE trap340
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #71
NOTY
trap341:
INC checksum
CMPY #8e
BNE trap341
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #71
NOTZ
trap342:
INC checksum
CMPZ #8e
BNE trap342
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #72
NOTX
trap343:
INC checksum
CMPX #8d
BNE trap343
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #72
NOTY
trap344:
INC checksum
CMPY #8d
BNE trap344
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #72
NOTZ
trap345:
INC checksum
CMPZ #8d
BNE trap345
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #73
NOTX
trap346:
INC checksum
CMPX #8c
BNE trap346
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #73
NOTY
trap347:
INC checksum
CMPY #8c
BNE trap347
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #73
NOTZ
trap348:
INC checksum
CMPZ #8c
BNE trap348
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #74
NOTX
trap349:
INC checksum
CMPX #8b
BNE trap349
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #74
NOTY
trap350:
INC checksum
CMPY #8b
BNE trap350
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #74
NOTZ
trap351:
INC checksum
CMPZ #8b
BNE trap351
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #75
NOTX
trap352:
INC checksum
CMPX #8a
BNE trap352
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #75
NOTY
trap353:
INC checksum
CMPY #8a
BNE trap353
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #75
NOTZ
trap354:
INC checksum
CMPZ #8a
BNE trap354
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #76
NOTX
trap355:
INC checksum
CMPX #89
BNE trap355
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #76
NOTY
trap356:
INC checksum
CMPY #89
BNE trap356
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #76
NOTZ
trap357:
INC checksum
CMPZ #89
BNE trap357
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #77
NOTX
trap358:
INC checksum
CMPX #88
BNE trap358
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #77
NOTY
trap359:
INC checksum
CMPY #88
BNE trap359
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #77
NOTZ
trap360:
INC checksum
CMPZ #88
BNE trap360
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #78
NOTX
trap361:
INC checksum
CMPX #87
BNE trap361
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #78
NOTY
trap362:
INC checksum
CMPY #87
BNE trap362
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #78
NOTZ
trap363:
INC checksum
CMPZ #87
BNE trap363
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #79
NOTX
trap364:
INC checksum
CMPX #86
BNE trap364
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #79
NOTY
trap365:
INC checksum
CMPY #86
BNE trap365
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #79
NOTZ
trap366:
INC checksum
CMPZ #86
BNE trap366
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #7a
NOTX
trap367:
INC checksum
CMPX #85
BNE trap367
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #7a
NOTY
trap368:
INC checksum
CMPY #85
BNE trap368
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #7a
NOTZ
trap369:
INC checksum
CMPZ #85
BNE trap369
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #7b
NOTX
trap370:
INC checksum
CMPX #84
BNE trap370
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #7b
NOTY
trap371:
INC checksum
CMPY #84
BNE trap371
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #7b
NOTZ
trap372:
INC checksum
CMPZ #84
BNE trap372
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #7c
NOTX
trap373:
INC checksum
CMPX #83
BNE trap373
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #7c
NOTY
trap374:
INC checksum
CMPY #83
BNE trap374
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #7c
NOTZ
trap375:
INC checksum
CMPZ #83
BNE trap375
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #7d
NOTX
trap376:
INC checksum
CMPX #82
BNE trap376
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #7d
NOTY
trap377:
INC checksum
CMPY #82
BNE trap377
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #7d
NOTZ
trap378:
INC checksum
CMPZ #82
BNE trap378
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #7e
NOTX
trap379:
INC checksum
CMPX #81
BNE trap379
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #7e
NOTY
trap380:
INC checksum
CMPY #81
BNE trap380
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #7e
NOTZ
trap381:
INC checksum
CMPZ #81
BNE trap381
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #7f
NOTX
trap382:
INC checksum
CMPX #80
BNE trap382
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #7f
NOTY
trap383:
INC checksum
CMPY #80
BNE trap383
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #7f
NOTZ
trap384:
INC checksum
CMPZ #80
BNE trap384
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #80
NOTX
trap385:
INC checksum
CMPX #7f
BNE trap385
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #80
NOTY
trap386:
INC checksum
CMPY #7f
BNE trap386
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #80
NOTZ
trap387:
INC checksum
CMPZ #7f
BNE trap387
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #81
NOTX
trap388:
INC checksum
CMPX #7e
BNE trap388
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #81
NOTY
trap389:
INC checksum
CMPY #7e
BNE trap389
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #81
NOTZ
trap390:
INC checksum
CMPZ #7e
BNE trap390
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #82
NOTX
trap391:
INC checksum
CMPX #7d
BNE trap391
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #82
NOTY
trap392:
INC checksum
CMPY #7d
BNE trap392
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #82
NOTZ
trap393:
INC checksum
CMPZ #7d
BNE trap393
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #83
NOTX
trap394:
INC checksum
CMPX #7c
BNE trap394
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #83
NOTY
trap395:
INC checksum
CMPY #7c
BNE trap395
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #83
NOTZ
trap396:
INC checksum
CMPZ #7c
BNE trap396
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #84
NOTX
trap397:
INC checksum
CMPX #7b
BNE trap397
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #84
NOTY
trap398:
INC checksum
CMPY #7b
BNE trap398
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #84
NOTZ
trap399:
INC checksum
CMPZ #7b
BNE trap399
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #85
NOTX
trap400:
INC checksum
CMPX #7a
BNE trap400
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #85
NOTY
trap401:
INC checksum
CMPY #7a
BNE trap401
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #85
NOTZ
trap402:
INC checksum
CMPZ #7a
BNE trap402
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #86
NOTX
trap403:
INC checksum
CMPX #79
BNE trap403
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #86
NOTY
trap404:
INC checksum
CMPY #79
BNE trap404
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #86
NOTZ
trap405:
INC checksum
CMPZ #79
BNE trap405
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #87
NOTX
trap406:
INC checksum
CMPX #78
BNE trap406
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #87
NOTY
trap407:
INC checksum
CMPY #78
BNE trap407
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #87
NOTZ
trap408:
INC checksum
CMPZ #78
BNE trap408
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #88
NOTX
trap409:
INC checksum
CMPX #77
BNE trap409
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #88
NOTY
trap410:
INC checksum
CMPY #77
BNE trap410
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #88
NOTZ
trap411:
INC checksum
CMPZ #77
BNE trap411
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #89
NOTX
trap412:
INC checksum
CMPX #76
BNE trap412
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #89
NOTY
trap413:
INC checksum
CMPY #76
BNE trap413
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #89
NOTZ
trap414:
INC checksum
CMPZ #76
BNE trap414
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #8a
NOTX
trap415:
INC checksum
CMPX #75
BNE trap415
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #8a
NOTY
trap416:
INC checksum
CMPY #75
BNE trap416
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #8a
NOTZ
trap417:
INC checksum
CMPZ #75
BNE trap417
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #8b
NOTX
trap418:
INC checksum
CMPX #74
BNE trap418
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #8b
NOTY
trap419:
INC checksum
CMPY #74
BNE trap419
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #8b
NOTZ
trap420:
INC checksum
CMPZ #74
BNE trap420
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #8c
NOTX
trap421:
INC checksum
CMPX #73
BNE trap421
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #8c
NOTY
trap422:
INC checksum
CMPY #73
BNE trap422
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #8c
NOTZ
trap423:
INC checksum
CMPZ #73
BNE trap423
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #8d
NOTX
trap424:
INC checksum
CMPX #72
BNE trap424
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #8d
NOTY
trap425:
INC checksum
CMPY #72
BNE trap425
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #8d
NOTZ
trap426:
INC checksum
CMPZ #72
BNE trap426
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #8e
NOTX
trap427:
INC checksum
CMPX #71
BNE trap427
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #8e
NOTY
trap428:
INC checksum
CMPY #71
BNE trap428
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #8e
NOTZ
trap429:
INC checksum
CMPZ #71
BNE trap429
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #8f
NOTX
trap430:
INC checksum
CMPX #70
BNE trap430
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #8f
NOTY
trap431:
INC checksum
CMPY #70
BNE trap431
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #8f
NOTZ
trap432:
INC checksum
CMPZ #70
BNE trap432
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #90
NOTX
trap433:
INC checksum
CMPX #6f
BNE trap433
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #90
NOTY
trap434:
INC checksum
CMPY #6f
BNE trap434
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #90
NOTZ
trap435:
INC checksum
CMPZ #6f
BNE trap435
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #91
NOTX
trap436:
INC checksum
CMPX #6e
BNE trap436
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #91
NOTY
trap437:
INC checksum
CMPY #6e
BNE trap437
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #91
NOTZ
trap438:
INC checksum
CMPZ #6e
BNE trap438
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #92
NOTX
trap439:
INC checksum
CMPX #6d
BNE trap439
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #92
NOTY
trap440:
INC checksum
CMPY #6d
BNE trap440
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #92
NOTZ
trap441:
INC checksum
CMPZ #6d
BNE trap441
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #93
NOTX
trap442:
INC checksum
CMPX #6c
BNE trap442
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #93
NOTY
trap443:
INC checksum
CMPY #6c
BNE trap443
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #93
NOTZ
trap444:
INC checksum
CMPZ #6c
BNE trap444
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #94
NOTX
trap445:
INC checksum
CMPX #6b
BNE trap445
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #94
NOTY
trap446:
INC checksum
CMPY #6b
BNE trap446
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #94
NOTZ
trap447:
INC checksum
CMPZ #6b
BNE trap447
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #95
NOTX
trap448:
INC checksum
CMPX #6a
BNE trap448
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #95
NOTY
trap449:
INC checksum
CMPY #6a
BNE trap449
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #95
NOTZ
trap450:
INC checksum
CMPZ #6a
BNE trap450
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #96
NOTX
trap451:
INC checksum
CMPX #69
BNE trap451
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #96
NOTY
trap452:
INC checksum
CMPY #69
BNE trap452
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #96
NOTZ
trap453:
INC checksum
CMPZ #69
BNE trap453
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #97
NOTX
trap454:
INC checksum
CMPX #68
BNE trap454
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #97
NOTY
trap455:
INC checksum
CMPY #68
BNE trap455
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #97
NOTZ
trap456:
INC checksum
CMPZ #68
BNE trap456
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #98
NOTX
trap457:
INC checksum
CMPX #67
BNE trap457
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #98
NOTY
trap458:
INC checksum
CMPY #67
BNE trap458
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #98
NOTZ
trap459:
INC checksum
CMPZ #67
BNE trap459
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #99
NOTX
trap460:
INC checksum
CMPX #66
BNE trap460
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #99
NOTY
trap461:
INC checksum
CMPY #66
BNE trap461
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #99
NOTZ
trap462:
INC checksum
CMPZ #66
BNE trap462
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #9a
NOTX
trap463:
INC checksum
CMPX #65
BNE trap463
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #9a
NOTY
trap464:
INC checksum
CMPY #65
BNE trap464
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #9a
NOTZ
trap465:
INC checksum
CMPZ #65
BNE trap465
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #9b
NOTX
trap466:
INC checksum
CMPX #64
BNE trap466
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #9b
NOTY
trap467:
INC checksum
CMPY #64
BNE trap467
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #9b
NOTZ
trap468:
INC checksum
CMPZ #64
BNE trap468
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #9c
NOTX
trap469:
INC checksum
CMPX #63
BNE trap469
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #9c
NOTY
trap470:
INC checksum
CMPY #63
BNE trap470
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #9c
NOTZ
trap471:
INC checksum
CMPZ #63
BNE trap471
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #9d
NOTX
trap472:
INC checksum
CMPX #62
BNE trap472
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #9d
NOTY
trap473:
INC checksum
CMPY #62
BNE trap473
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #9d
NOTZ
trap474:
INC checksum
CMPZ #62
BNE trap474
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #9e
NOTX
trap475:
INC checksum
CMPX #61
BNE trap475
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #9e
NOTY
trap476:
INC checksum
CMPY #61
BNE trap476
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #9e
NOTZ
trap477:
INC checksum
CMPZ #61
BNE trap477
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #9f
NOTX
trap478:
INC checksum
CMPX #60
BNE trap478
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #9f
NOTY
trap479:
INC checksum
CMPY #60
BNE trap479
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #9f
NOTZ
trap480:
INC checksum
CMPZ #60
BNE trap480
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a0
NOTX
trap481:
INC checksum
CMPX #5f
BNE trap481
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a0
NOTY
trap482:
INC checksum
CMPY #5f
BNE trap482
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a0
NOTZ
trap483:
INC checksum
CMPZ #5f
BNE trap483
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a1
NOTX
trap484:
INC checksum
CMPX #5e
BNE trap484
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a1
NOTY
trap485:
INC checksum
CMPY #5e
BNE trap485
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a1
NOTZ
trap486:
INC checksum
CMPZ #5e
BNE trap486
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a2
NOTX
trap487:
INC checksum
CMPX #5d
BNE trap487
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a2
NOTY
trap488:
INC checksum
CMPY #5d
BNE trap488
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a2
NOTZ
trap489:
INC checksum
CMPZ #5d
BNE trap489
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a3
NOTX
trap490:
INC checksum
CMPX #5c
BNE trap490
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a3
NOTY
trap491:
INC checksum
CMPY #5c
BNE trap491
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a3
NOTZ
trap492:
INC checksum
CMPZ #5c
BNE trap492
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a4
NOTX
trap493:
INC checksum
CMPX #5b
BNE trap493
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a4
NOTY
trap494:
INC checksum
CMPY #5b
BNE trap494
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a4
NOTZ
trap495:
INC checksum
CMPZ #5b
BNE trap495
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a5
NOTX
trap496:
INC checksum
CMPX #5a
BNE trap496
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a5
NOTY
trap497:
INC checksum
CMPY #5a
BNE trap497
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a5
NOTZ
trap498:
INC checksum
CMPZ #5a
BNE trap498
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a6
NOTX
trap499:
INC checksum
CMPX #59
BNE trap499
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a6
NOTY
trap500:
INC checksum
CMPY #59
BNE trap500
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a6
NOTZ
trap501:
INC checksum
CMPZ #59
BNE trap501
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a7
NOTX
trap502:
INC checksum
CMPX #58
BNE trap502
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a7
NOTY
trap503:
INC checksum
CMPY #58
BNE trap503
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a7
NOTZ
trap504:
INC checksum
CMPZ #58
BNE trap504
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a8
NOTX
trap505:
INC checksum
CMPX #57
BNE trap505
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a8
NOTY
trap506:
INC checksum
CMPY #57
BNE trap506
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a8
NOTZ
trap507:
INC checksum
CMPZ #57
BNE trap507
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #a9
NOTX
trap508:
INC checksum
CMPX #56
BNE trap508
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #a9
NOTY
trap509:
INC checksum
CMPY #56
BNE trap509
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #a9
NOTZ
trap510:
INC checksum
CMPZ #56
BNE trap510
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #aa
NOTX
trap511:
INC checksum
CMPX #55
BNE trap511
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #aa
NOTY
trap512:
INC checksum
CMPY #55
BNE trap512
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #aa
NOTZ
trap513:
INC checksum
CMPZ #55
BNE trap513
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ab
NOTX
trap514:
INC checksum
CMPX #54
BNE trap514
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ab
NOTY
trap515:
INC checksum
CMPY #54
BNE trap515
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ab
NOTZ
trap516:
INC checksum
CMPZ #54
BNE trap516
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ac
NOTX
trap517:
INC checksum
CMPX #53
BNE trap517
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ac
NOTY
trap518:
INC checksum
CMPY #53
BNE trap518
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ac
NOTZ
trap519:
INC checksum
CMPZ #53
BNE trap519
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ad
NOTX
trap520:
INC checksum
CMPX #52
BNE trap520
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ad
NOTY
trap521:
INC checksum
CMPY #52
BNE trap521
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ad
NOTZ
trap522:
INC checksum
CMPZ #52
BNE trap522
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ae
NOTX
trap523:
INC checksum
CMPX #51
BNE trap523
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ae
NOTY
trap524:
INC checksum
CMPY #51
BNE trap524
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ae
NOTZ
trap525:
INC checksum
CMPZ #51
BNE trap525
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #af
NOTX
trap526:
INC checksum
CMPX #50
BNE trap526
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #af
NOTY
trap527:
INC checksum
CMPY #50
BNE trap527
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #af
NOTZ
trap528:
INC checksum
CMPZ #50
BNE trap528
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b0
NOTX
trap529:
INC checksum
CMPX #4f
BNE trap529
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b0
NOTY
trap530:
INC checksum
CMPY #4f
BNE trap530
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b0
NOTZ
trap531:
INC checksum
CMPZ #4f
BNE trap531
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b1
NOTX
trap532:
INC checksum
CMPX #4e
BNE trap532
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b1
NOTY
trap533:
INC checksum
CMPY #4e
BNE trap533
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b1
NOTZ
trap534:
INC checksum
CMPZ #4e
BNE trap534
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b2
NOTX
trap535:
INC checksum
CMPX #4d
BNE trap535
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b2
NOTY
trap536:
INC checksum
CMPY #4d
BNE trap536
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b2
NOTZ
trap537:
INC checksum
CMPZ #4d
BNE trap537
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b3
NOTX
trap538:
INC checksum
CMPX #4c
BNE trap538
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b3
NOTY
trap539:
INC checksum
CMPY #4c
BNE trap539
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b3
NOTZ
trap540:
INC checksum
CMPZ #4c
BNE trap540
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b4
NOTX
trap541:
INC checksum
CMPX #4b
BNE trap541
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b4
NOTY
trap542:
INC checksum
CMPY #4b
BNE trap542
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b4
NOTZ
trap543:
INC checksum
CMPZ #4b
BNE trap543
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b5
NOTX
trap544:
INC checksum
CMPX #4a
BNE trap544
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b5
NOTY
trap545:
INC checksum
CMPY #4a
BNE trap545
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b5
NOTZ
trap546:
INC checksum
CMPZ #4a
BNE trap546
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b6
NOTX
trap547:
INC checksum
CMPX #49
BNE trap547
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b6
NOTY
trap548:
INC checksum
CMPY #49
BNE trap548
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b6
NOTZ
trap549:
INC checksum
CMPZ #49
BNE trap549
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b7
NOTX
trap550:
INC checksum
CMPX #48
BNE trap550
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b7
NOTY
trap551:
INC checksum
CMPY #48
BNE trap551
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b7
NOTZ
trap552:
INC checksum
CMPZ #48
BNE trap552
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b8
NOTX
trap553:
INC checksum
CMPX #47
BNE trap553
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b8
NOTY
trap554:
INC checksum
CMPY #47
BNE trap554
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b8
NOTZ
trap555:
INC checksum
CMPZ #47
BNE trap555
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #b9
NOTX
trap556:
INC checksum
CMPX #46
BNE trap556
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #b9
NOTY
trap557:
INC checksum
CMPY #46
BNE trap557
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #b9
NOTZ
trap558:
INC checksum
CMPZ #46
BNE trap558
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ba
NOTX
trap559:
INC checksum
CMPX #45
BNE trap559
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ba
NOTY
trap560:
INC checksum
CMPY #45
BNE trap560
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ba
NOTZ
trap561:
INC checksum
CMPZ #45
BNE trap561
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #bb
NOTX
trap562:
INC checksum
CMPX #44
BNE trap562
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #bb
NOTY
trap563:
INC checksum
CMPY #44
BNE trap563
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #bb
NOTZ
trap564:
INC checksum
CMPZ #44
BNE trap564
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #bc
NOTX
trap565:
INC checksum
CMPX #43
BNE trap565
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #bc
NOTY
trap566:
INC checksum
CMPY #43
BNE trap566
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #bc
NOTZ
trap567:
INC checksum
CMPZ #43
BNE trap567
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #bd
NOTX
trap568:
INC checksum
CMPX #42
BNE trap568
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #bd
NOTY
trap569:
INC checksum
CMPY #42
BNE trap569
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #bd
NOTZ
trap570:
INC checksum
CMPZ #42
BNE trap570
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #be
NOTX
trap571:
INC checksum
CMPX #41
BNE trap571
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #be
NOTY
trap572:
INC checksum
CMPY #41
BNE trap572
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #be
NOTZ
trap573:
INC checksum
CMPZ #41
BNE trap573
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #bf
NOTX
trap574:
INC checksum
CMPX #40
BNE trap574
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #bf
NOTY
trap575:
INC checksum
CMPY #40
BNE trap575
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #bf
NOTZ
trap576:
INC checksum
CMPZ #40
BNE trap576
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c0
NOTX
trap577:
INC checksum
CMPX #3f
BNE trap577
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c0
NOTY
trap578:
INC checksum
CMPY #3f
BNE trap578
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c0
NOTZ
trap579:
INC checksum
CMPZ #3f
BNE trap579
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c1
NOTX
trap580:
INC checksum
CMPX #3e
BNE trap580
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c1
NOTY
trap581:
INC checksum
CMPY #3e
BNE trap581
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c1
NOTZ
trap582:
INC checksum
CMPZ #3e
BNE trap582
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c2
NOTX
trap583:
INC checksum
CMPX #3d
BNE trap583
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c2
NOTY
trap584:
INC checksum
CMPY #3d
BNE trap584
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c2
NOTZ
trap585:
INC checksum
CMPZ #3d
BNE trap585
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c3
NOTX
trap586:
INC checksum
CMPX #3c
BNE trap586
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c3
NOTY
trap587:
INC checksum
CMPY #3c
BNE trap587
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c3
NOTZ
trap588:
INC checksum
CMPZ #3c
BNE trap588
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c4
NOTX
trap589:
INC checksum
CMPX #3b
BNE trap589
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c4
NOTY
trap590:
INC checksum
CMPY #3b
BNE trap590
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c4
NOTZ
trap591:
INC checksum
CMPZ #3b
BNE trap591
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c5
NOTX
trap592:
INC checksum
CMPX #3a
BNE trap592
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c5
NOTY
trap593:
INC checksum
CMPY #3a
BNE trap593
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c5
NOTZ
trap594:
INC checksum
CMPZ #3a
BNE trap594
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c6
NOTX
trap595:
INC checksum
CMPX #39
BNE trap595
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c6
NOTY
trap596:
INC checksum
CMPY #39
BNE trap596
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c6
NOTZ
trap597:
INC checksum
CMPZ #39
BNE trap597
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c7
NOTX
trap598:
INC checksum
CMPX #38
BNE trap598
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c7
NOTY
trap599:
INC checksum
CMPY #38
BNE trap599
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c7
NOTZ
trap600:
INC checksum
CMPZ #38
BNE trap600
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c8
NOTX
trap601:
INC checksum
CMPX #37
BNE trap601
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c8
NOTY
trap602:
INC checksum
CMPY #37
BNE trap602
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c8
NOTZ
trap603:
INC checksum
CMPZ #37
BNE trap603
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #c9
NOTX
trap604:
INC checksum
CMPX #36
BNE trap604
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #c9
NOTY
trap605:
INC checksum
CMPY #36
BNE trap605
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #c9
NOTZ
trap606:
INC checksum
CMPZ #36
BNE trap606
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ca
NOTX
trap607:
INC checksum
CMPX #35
BNE trap607
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ca
NOTY
trap608:
INC checksum
CMPY #35
BNE trap608
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ca
NOTZ
trap609:
INC checksum
CMPZ #35
BNE trap609
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #cb
NOTX
trap610:
INC checksum
CMPX #34
BNE trap610
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #cb
NOTY
trap611:
INC checksum
CMPY #34
BNE trap611
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #cb
NOTZ
trap612:
INC checksum
CMPZ #34
BNE trap612
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #cc
NOTX
trap613:
INC checksum
CMPX #33
BNE trap613
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #cc
NOTY
trap614:
INC checksum
CMPY #33
BNE trap614
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #cc
NOTZ
trap615:
INC checksum
CMPZ #33
BNE trap615
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #cd
NOTX
trap616:
INC checksum
CMPX #32
BNE trap616
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #cd
NOTY
trap617:
INC checksum
CMPY #32
BNE trap617
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #cd
NOTZ
trap618:
INC checksum
CMPZ #32
BNE trap618
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ce
NOTX
trap619:
INC checksum
CMPX #31
BNE trap619
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ce
NOTY
trap620:
INC checksum
CMPY #31
BNE trap620
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ce
NOTZ
trap621:
INC checksum
CMPZ #31
BNE trap621
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #cf
NOTX
trap622:
INC checksum
CMPX #30
BNE trap622
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #cf
NOTY
trap623:
INC checksum
CMPY #30
BNE trap623
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #cf
NOTZ
trap624:
INC checksum
CMPZ #30
BNE trap624
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d0
NOTX
trap625:
INC checksum
CMPX #2f
BNE trap625
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d0
NOTY
trap626:
INC checksum
CMPY #2f
BNE trap626
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d0
NOTZ
trap627:
INC checksum
CMPZ #2f
BNE trap627
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d1
NOTX
trap628:
INC checksum
CMPX #2e
BNE trap628
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d1
NOTY
trap629:
INC checksum
CMPY #2e
BNE trap629
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d1
NOTZ
trap630:
INC checksum
CMPZ #2e
BNE trap630
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d2
NOTX
trap631:
INC checksum
CMPX #2d
BNE trap631
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d2
NOTY
trap632:
INC checksum
CMPY #2d
BNE trap632
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d2
NOTZ
trap633:
INC checksum
CMPZ #2d
BNE trap633
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d3
NOTX
trap634:
INC checksum
CMPX #2c
BNE trap634
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d3
NOTY
trap635:
INC checksum
CMPY #2c
BNE trap635
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d3
NOTZ
trap636:
INC checksum
CMPZ #2c
BNE trap636
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d4
NOTX
trap637:
INC checksum
CMPX #2b
BNE trap637
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d4
NOTY
trap638:
INC checksum
CMPY #2b
BNE trap638
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d4
NOTZ
trap639:
INC checksum
CMPZ #2b
BNE trap639
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d5
NOTX
trap640:
INC checksum
CMPX #2a
BNE trap640
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d5
NOTY
trap641:
INC checksum
CMPY #2a
BNE trap641
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d5
NOTZ
trap642:
INC checksum
CMPZ #2a
BNE trap642
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d6
NOTX
trap643:
INC checksum
CMPX #29
BNE trap643
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d6
NOTY
trap644:
INC checksum
CMPY #29
BNE trap644
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d6
NOTZ
trap645:
INC checksum
CMPZ #29
BNE trap645
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d7
NOTX
trap646:
INC checksum
CMPX #28
BNE trap646
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d7
NOTY
trap647:
INC checksum
CMPY #28
BNE trap647
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d7
NOTZ
trap648:
INC checksum
CMPZ #28
BNE trap648
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d8
NOTX
trap649:
INC checksum
CMPX #27
BNE trap649
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d8
NOTY
trap650:
INC checksum
CMPY #27
BNE trap650
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d8
NOTZ
trap651:
INC checksum
CMPZ #27
BNE trap651
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #d9
NOTX
trap652:
INC checksum
CMPX #26
BNE trap652
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #d9
NOTY
trap653:
INC checksum
CMPY #26
BNE trap653
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #d9
NOTZ
trap654:
INC checksum
CMPZ #26
BNE trap654
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #da
NOTX
trap655:
INC checksum
CMPX #25
BNE trap655
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #da
NOTY
trap656:
INC checksum
CMPY #25
BNE trap656
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #da
NOTZ
trap657:
INC checksum
CMPZ #25
BNE trap657
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #db
NOTX
trap658:
INC checksum
CMPX #24
BNE trap658
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #db
NOTY
trap659:
INC checksum
CMPY #24
BNE trap659
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #db
NOTZ
trap660:
INC checksum
CMPZ #24
BNE trap660
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #dc
NOTX
trap661:
INC checksum
CMPX #23
BNE trap661
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #dc
NOTY
trap662:
INC checksum
CMPY #23
BNE trap662
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #dc
NOTZ
trap663:
INC checksum
CMPZ #23
BNE trap663
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #dd
NOTX
trap664:
INC checksum
CMPX #22
BNE trap664
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #dd
NOTY
trap665:
INC checksum
CMPY #22
BNE trap665
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #dd
NOTZ
trap666:
INC checksum
CMPZ #22
BNE trap666
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #de
NOTX
trap667:
INC checksum
CMPX #21
BNE trap667
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #de
NOTY
trap668:
INC checksum
CMPY #21
BNE trap668
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #de
NOTZ
trap669:
INC checksum
CMPZ #21
BNE trap669
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #df
NOTX
trap670:
INC checksum
CMPX #20
BNE trap670
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #df
NOTY
trap671:
INC checksum
CMPY #20
BNE trap671
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #df
NOTZ
trap672:
INC checksum
CMPZ #20
BNE trap672
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e0
NOTX
trap673:
INC checksum
CMPX #1f
BNE trap673
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e0
NOTY
trap674:
INC checksum
CMPY #1f
BNE trap674
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e0
NOTZ
trap675:
INC checksum
CMPZ #1f
BNE trap675
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e1
NOTX
trap676:
INC checksum
CMPX #1e
BNE trap676
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e1
NOTY
trap677:
INC checksum
CMPY #1e
BNE trap677
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e1
NOTZ
trap678:
INC checksum
CMPZ #1e
BNE trap678
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e2
NOTX
trap679:
INC checksum
CMPX #1d
BNE trap679
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e2
NOTY
trap680:
INC checksum
CMPY #1d
BNE trap680
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e2
NOTZ
trap681:
INC checksum
CMPZ #1d
BNE trap681
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e3
NOTX
trap682:
INC checksum
CMPX #1c
BNE trap682
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e3
NOTY
trap683:
INC checksum
CMPY #1c
BNE trap683
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e3
NOTZ
trap684:
INC checksum
CMPZ #1c
BNE trap684
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e4
NOTX
trap685:
INC checksum
CMPX #1b
BNE trap685
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e4
NOTY
trap686:
INC checksum
CMPY #1b
BNE trap686
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e4
NOTZ
trap687:
INC checksum
CMPZ #1b
BNE trap687
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e5
NOTX
trap688:
INC checksum
CMPX #1a
BNE trap688
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e5
NOTY
trap689:
INC checksum
CMPY #1a
BNE trap689
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e5
NOTZ
trap690:
INC checksum
CMPZ #1a
BNE trap690
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e6
NOTX
trap691:
INC checksum
CMPX #19
BNE trap691
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e6
NOTY
trap692:
INC checksum
CMPY #19
BNE trap692
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e6
NOTZ
trap693:
INC checksum
CMPZ #19
BNE trap693
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e7
NOTX
trap694:
INC checksum
CMPX #18
BNE trap694
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e7
NOTY
trap695:
INC checksum
CMPY #18
BNE trap695
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e7
NOTZ
trap696:
INC checksum
CMPZ #18
BNE trap696
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e8
NOTX
trap697:
INC checksum
CMPX #17
BNE trap697
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e8
NOTY
trap698:
INC checksum
CMPY #17
BNE trap698
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e8
NOTZ
trap699:
INC checksum
CMPZ #17
BNE trap699
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #e9
NOTX
trap700:
INC checksum
CMPX #16
BNE trap700
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #e9
NOTY
trap701:
INC checksum
CMPY #16
BNE trap701
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #e9
NOTZ
trap702:
INC checksum
CMPZ #16
BNE trap702
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ea
NOTX
trap703:
INC checksum
CMPX #15
BNE trap703
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ea
NOTY
trap704:
INC checksum
CMPY #15
BNE trap704
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ea
NOTZ
trap705:
INC checksum
CMPZ #15
BNE trap705
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #eb
NOTX
trap706:
INC checksum
CMPX #14
BNE trap706
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #eb
NOTY
trap707:
INC checksum
CMPY #14
BNE trap707
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #eb
NOTZ
trap708:
INC checksum
CMPZ #14
BNE trap708
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ec
NOTX
trap709:
INC checksum
CMPX #13
BNE trap709
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ec
NOTY
trap710:
INC checksum
CMPY #13
BNE trap710
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ec
NOTZ
trap711:
INC checksum
CMPZ #13
BNE trap711
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ed
NOTX
trap712:
INC checksum
CMPX #12
BNE trap712
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ed
NOTY
trap713:
INC checksum
CMPY #12
BNE trap713
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ed
NOTZ
trap714:
INC checksum
CMPZ #12
BNE trap714
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ee
NOTX
trap715:
INC checksum
CMPX #11
BNE trap715
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ee
NOTY
trap716:
INC checksum
CMPY #11
BNE trap716
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ee
NOTZ
trap717:
INC checksum
CMPZ #11
BNE trap717
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ef
NOTX
trap718:
INC checksum
CMPX #10
BNE trap718
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ef
NOTY
trap719:
INC checksum
CMPY #10
BNE trap719
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ef
NOTZ
trap720:
INC checksum
CMPZ #10
BNE trap720
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f0
NOTX
trap721:
INC checksum
CMPX #0f
BNE trap721
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f0
NOTY
trap722:
INC checksum
CMPY #0f
BNE trap722
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f0
NOTZ
trap723:
INC checksum
CMPZ #0f
BNE trap723
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f1
NOTX
trap724:
INC checksum
CMPX #0e
BNE trap724
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f1
NOTY
trap725:
INC checksum
CMPY #0e
BNE trap725
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f1
NOTZ
trap726:
INC checksum
CMPZ #0e
BNE trap726
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f2
NOTX
trap727:
INC checksum
CMPX #0d
BNE trap727
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f2
NOTY
trap728:
INC checksum
CMPY #0d
BNE trap728
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f2
NOTZ
trap729:
INC checksum
CMPZ #0d
BNE trap729
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f3
NOTX
trap730:
INC checksum
CMPX #0c
BNE trap730
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f3
NOTY
trap731:
INC checksum
CMPY #0c
BNE trap731
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f3
NOTZ
trap732:
INC checksum
CMPZ #0c
BNE trap732
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f4
NOTX
trap733:
INC checksum
CMPX #0b
BNE trap733
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f4
NOTY
trap734:
INC checksum
CMPY #0b
BNE trap734
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f4
NOTZ
trap735:
INC checksum
CMPZ #0b
BNE trap735
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f5
NOTX
trap736:
INC checksum
CMPX #0a
BNE trap736
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f5
NOTY
trap737:
INC checksum
CMPY #0a
BNE trap737
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f5
NOTZ
trap738:
INC checksum
CMPZ #0a
BNE trap738
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f6
NOTX
trap739:
INC checksum
CMPX #09
BNE trap739
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f6
NOTY
trap740:
INC checksum
CMPY #09
BNE trap740
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f6
NOTZ
trap741:
INC checksum
CMPZ #09
BNE trap741
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f7
NOTX
trap742:
INC checksum
CMPX #08
BNE trap742
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f7
NOTY
trap743:
INC checksum
CMPY #08
BNE trap743
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f7
NOTZ
trap744:
INC checksum
CMPZ #08
BNE trap744
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f8
NOTX
trap745:
INC checksum
CMPX #07
BNE trap745
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f8
NOTY
trap746:
INC checksum
CMPY #07
BNE trap746
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f8
NOTZ
trap747:
INC checksum
CMPZ #07
BNE trap747
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #f9
NOTX
trap748:
INC checksum
CMPX #06
BNE trap748
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #f9
NOTY
trap749:
INC checksum
CMPY #06
BNE trap749
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #f9
NOTZ
trap750:
INC checksum
CMPZ #06
BNE trap750
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #fa
NOTX
trap751:
INC checksum
CMPX #05
BNE trap751
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #fa
NOTY
trap752:
INC checksum
CMPY #05
BNE trap752
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #fa
NOTZ
trap753:
INC checksum
CMPZ #05
BNE trap753
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #fb
NOTX
trap754:
INC checksum
CMPX #04
BNE trap754
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #fb
NOTY
trap755:
INC checksum
CMPY #04
BNE trap755
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #fb
NOTZ
trap756:
INC checksum
CMPZ #04
BNE trap756
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #fc
NOTX
trap757:
INC checksum
CMPX #03
BNE trap757
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #fc
NOTY
trap758:
INC checksum
CMPY #03
BNE trap758
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #fc
NOTZ
trap759:
INC checksum
CMPZ #03
BNE trap759
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #fd
NOTX
trap760:
INC checksum
CMPX #02
BNE trap760
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #fd
NOTY
trap761:
INC checksum
CMPY #02
BNE trap761
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #fd
NOTZ
trap762:
INC checksum
CMPZ #02
BNE trap762
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #fe
NOTX
trap763:
INC checksum
CMPX #01
BNE trap763
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #fe
NOTY
trap764:
INC checksum
CMPY #01
BNE trap764
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #fe
NOTZ
trap765:
INC checksum
CMPZ #01
BNE trap765
LDZ checksum
OUT0 Z
PUSH Z
JSR sub
POP Z

LDX #ff
NOTX
trap766:
INC checksum
CMPX #00
BNE trap766
LDX checksum
OUT0 X
PUSH X
JSR sub
POP X

LDY #ff
NOTY
trap767:
INC checksum
CMPY #00
BNE trap767
LDY checksum
OUT0 Y
PUSH Y
JSR sub
POP Y

LDZ #ff
NOTZ
trap768:
INC checksum
CMPZ #00
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
