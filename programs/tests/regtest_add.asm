NOP
NOP
NOP
start:
LDX #00
STX checksum
ADDtest:
CLC
LDX #00
ADDX #00
BCS trap1
CMPX #00
BNE trap1
JMP notrap1
trap1:
JMP trap1
notrap1:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #00
BCS trap2
CMPY #00
BNE trap2
JMP notrap2
trap2:
JMP trap2
notrap2:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #00
BCS trap3
CMPZ #00
BNE trap3
JMP notrap3
trap3:
JMP trap3
notrap3:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #01
BCS trap4
CMPX #01
BNE trap4
JMP notrap4
trap4:
JMP trap4
notrap4:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #01
BCS trap5
CMPY #01
BNE trap5
JMP notrap5
trap5:
JMP trap5
notrap5:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #01
BCS trap6
CMPZ #01
BNE trap6
JMP notrap6
trap6:
JMP trap6
notrap6:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #02
BCS trap7
CMPX #02
BNE trap7
JMP notrap7
trap7:
JMP trap7
notrap7:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #02
BCS trap8
CMPY #02
BNE trap8
JMP notrap8
trap8:
JMP trap8
notrap8:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #02
BCS trap9
CMPZ #02
BNE trap9
JMP notrap9
trap9:
JMP trap9
notrap9:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #03
BCS trap10
CMPX #03
BNE trap10
JMP notrap10
trap10:
JMP trap10
notrap10:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #03
BCS trap11
CMPY #03
BNE trap11
JMP notrap11
trap11:
JMP trap11
notrap11:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #03
BCS trap12
CMPZ #03
BNE trap12
JMP notrap12
trap12:
JMP trap12
notrap12:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #04
BCS trap13
CMPX #04
BNE trap13
JMP notrap13
trap13:
JMP trap13
notrap13:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #04
BCS trap14
CMPY #04
BNE trap14
JMP notrap14
trap14:
JMP trap14
notrap14:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #04
BCS trap15
CMPZ #04
BNE trap15
JMP notrap15
trap15:
JMP trap15
notrap15:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #05
BCS trap16
CMPX #05
BNE trap16
JMP notrap16
trap16:
JMP trap16
notrap16:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #05
BCS trap17
CMPY #05
BNE trap17
JMP notrap17
trap17:
JMP trap17
notrap17:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #05
BCS trap18
CMPZ #05
BNE trap18
JMP notrap18
trap18:
JMP trap18
notrap18:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #06
BCS trap19
CMPX #06
BNE trap19
JMP notrap19
trap19:
JMP trap19
notrap19:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #06
BCS trap20
CMPY #06
BNE trap20
JMP notrap20
trap20:
JMP trap20
notrap20:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #06
BCS trap21
CMPZ #06
BNE trap21
JMP notrap21
trap21:
JMP trap21
notrap21:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #07
BCS trap22
CMPX #07
BNE trap22
JMP notrap22
trap22:
JMP trap22
notrap22:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #07
BCS trap23
CMPY #07
BNE trap23
JMP notrap23
trap23:
JMP trap23
notrap23:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #07
BCS trap24
CMPZ #07
BNE trap24
JMP notrap24
trap24:
JMP trap24
notrap24:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #08
BCS trap25
CMPX #08
BNE trap25
JMP notrap25
trap25:
JMP trap25
notrap25:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #08
BCS trap26
CMPY #08
BNE trap26
JMP notrap26
trap26:
JMP trap26
notrap26:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #08
BCS trap27
CMPZ #08
BNE trap27
JMP notrap27
trap27:
JMP trap27
notrap27:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #09
BCS trap28
CMPX #09
BNE trap28
JMP notrap28
trap28:
JMP trap28
notrap28:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #09
BCS trap29
CMPY #09
BNE trap29
JMP notrap29
trap29:
JMP trap29
notrap29:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #09
BCS trap30
CMPZ #09
BNE trap30
JMP notrap30
trap30:
JMP trap30
notrap30:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #0a
BCS trap31
CMPX #0a
BNE trap31
JMP notrap31
trap31:
JMP trap31
notrap31:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #0a
BCS trap32
CMPY #0a
BNE trap32
JMP notrap32
trap32:
JMP trap32
notrap32:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #0a
BCS trap33
CMPZ #0a
BNE trap33
JMP notrap33
trap33:
JMP trap33
notrap33:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #0b
BCS trap34
CMPX #0b
BNE trap34
JMP notrap34
trap34:
JMP trap34
notrap34:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #0b
BCS trap35
CMPY #0b
BNE trap35
JMP notrap35
trap35:
JMP trap35
notrap35:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #0b
BCS trap36
CMPZ #0b
BNE trap36
JMP notrap36
trap36:
JMP trap36
notrap36:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #0c
BCS trap37
CMPX #0c
BNE trap37
JMP notrap37
trap37:
JMP trap37
notrap37:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #0c
BCS trap38
CMPY #0c
BNE trap38
JMP notrap38
trap38:
JMP trap38
notrap38:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #0c
BCS trap39
CMPZ #0c
BNE trap39
JMP notrap39
trap39:
JMP trap39
notrap39:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #0d
BCS trap40
CMPX #0d
BNE trap40
JMP notrap40
trap40:
JMP trap40
notrap40:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #0d
BCS trap41
CMPY #0d
BNE trap41
JMP notrap41
trap41:
JMP trap41
notrap41:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #0d
BCS trap42
CMPZ #0d
BNE trap42
JMP notrap42
trap42:
JMP trap42
notrap42:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #0e
BCS trap43
CMPX #0e
BNE trap43
JMP notrap43
trap43:
JMP trap43
notrap43:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #0e
BCS trap44
CMPY #0e
BNE trap44
JMP notrap44
trap44:
JMP trap44
notrap44:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #0e
BCS trap45
CMPZ #0e
BNE trap45
JMP notrap45
trap45:
JMP trap45
notrap45:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #00
ADDX #0f
BCS trap46
CMPX #0f
BNE trap46
JMP notrap46
trap46:
JMP trap46
notrap46:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #00
ADDY #0f
BCS trap47
CMPY #0f
BNE trap47
JMP notrap47
trap47:
JMP trap47
notrap47:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #00
ADDZ #0f
BCS trap48
CMPZ #0f
BNE trap48
JMP notrap48
trap48:
JMP trap48
notrap48:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #00
BCS trap49
CMPX #04
BNE trap49
JMP notrap49
trap49:
JMP trap49
notrap49:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #00
BCS trap50
CMPY #04
BNE trap50
JMP notrap50
trap50:
JMP trap50
notrap50:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #00
BCS trap51
CMPZ #04
BNE trap51
JMP notrap51
trap51:
JMP trap51
notrap51:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #01
BCS trap52
CMPX #05
BNE trap52
JMP notrap52
trap52:
JMP trap52
notrap52:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #01
BCS trap53
CMPY #05
BNE trap53
JMP notrap53
trap53:
JMP trap53
notrap53:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #01
BCS trap54
CMPZ #05
BNE trap54
JMP notrap54
trap54:
JMP trap54
notrap54:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #02
BCS trap55
CMPX #06
BNE trap55
JMP notrap55
trap55:
JMP trap55
notrap55:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #02
BCS trap56
CMPY #06
BNE trap56
JMP notrap56
trap56:
JMP trap56
notrap56:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #02
BCS trap57
CMPZ #06
BNE trap57
JMP notrap57
trap57:
JMP trap57
notrap57:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #03
BCS trap58
CMPX #07
BNE trap58
JMP notrap58
trap58:
JMP trap58
notrap58:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #03
BCS trap59
CMPY #07
BNE trap59
JMP notrap59
trap59:
JMP trap59
notrap59:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #03
BCS trap60
CMPZ #07
BNE trap60
JMP notrap60
trap60:
JMP trap60
notrap60:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #04
BCS trap61
CMPX #08
BNE trap61
JMP notrap61
trap61:
JMP trap61
notrap61:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #04
BCS trap62
CMPY #08
BNE trap62
JMP notrap62
trap62:
JMP trap62
notrap62:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #04
BCS trap63
CMPZ #08
BNE trap63
JMP notrap63
trap63:
JMP trap63
notrap63:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #05
BCS trap64
CMPX #09
BNE trap64
JMP notrap64
trap64:
JMP trap64
notrap64:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #05
BCS trap65
CMPY #09
BNE trap65
JMP notrap65
trap65:
JMP trap65
notrap65:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #05
BCS trap66
CMPZ #09
BNE trap66
JMP notrap66
trap66:
JMP trap66
notrap66:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #06
BCS trap67
CMPX #0a
BNE trap67
JMP notrap67
trap67:
JMP trap67
notrap67:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #06
BCS trap68
CMPY #0a
BNE trap68
JMP notrap68
trap68:
JMP trap68
notrap68:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #06
BCS trap69
CMPZ #0a
BNE trap69
JMP notrap69
trap69:
JMP trap69
notrap69:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #07
BCS trap70
CMPX #0b
BNE trap70
JMP notrap70
trap70:
JMP trap70
notrap70:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #07
BCS trap71
CMPY #0b
BNE trap71
JMP notrap71
trap71:
JMP trap71
notrap71:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #07
BCS trap72
CMPZ #0b
BNE trap72
JMP notrap72
trap72:
JMP trap72
notrap72:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #08
BCS trap73
CMPX #0c
BNE trap73
JMP notrap73
trap73:
JMP trap73
notrap73:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #08
BCS trap74
CMPY #0c
BNE trap74
JMP notrap74
trap74:
JMP trap74
notrap74:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #08
BCS trap75
CMPZ #0c
BNE trap75
JMP notrap75
trap75:
JMP trap75
notrap75:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #09
BCS trap76
CMPX #0d
BNE trap76
JMP notrap76
trap76:
JMP trap76
notrap76:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #09
BCS trap77
CMPY #0d
BNE trap77
JMP notrap77
trap77:
JMP trap77
notrap77:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #09
BCS trap78
CMPZ #0d
BNE trap78
JMP notrap78
trap78:
JMP trap78
notrap78:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #0a
BCS trap79
CMPX #0e
BNE trap79
JMP notrap79
trap79:
JMP trap79
notrap79:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #0a
BCS trap80
CMPY #0e
BNE trap80
JMP notrap80
trap80:
JMP trap80
notrap80:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #0a
BCS trap81
CMPZ #0e
BNE trap81
JMP notrap81
trap81:
JMP trap81
notrap81:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #0b
BCS trap82
CMPX #0f
BNE trap82
JMP notrap82
trap82:
JMP trap82
notrap82:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #0b
BCS trap83
CMPY #0f
BNE trap83
JMP notrap83
trap83:
JMP trap83
notrap83:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #0b
BCS trap84
CMPZ #0f
BNE trap84
JMP notrap84
trap84:
JMP trap84
notrap84:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #0c
BCS trap85
CMPX #10
BNE trap85
JMP notrap85
trap85:
JMP trap85
notrap85:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #0c
BCS trap86
CMPY #10
BNE trap86
JMP notrap86
trap86:
JMP trap86
notrap86:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #0c
BCS trap87
CMPZ #10
BNE trap87
JMP notrap87
trap87:
JMP trap87
notrap87:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #0d
BCS trap88
CMPX #11
BNE trap88
JMP notrap88
trap88:
JMP trap88
notrap88:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #0d
BCS trap89
CMPY #11
BNE trap89
JMP notrap89
trap89:
JMP trap89
notrap89:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #0d
BCS trap90
CMPZ #11
BNE trap90
JMP notrap90
trap90:
JMP trap90
notrap90:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #0e
BCS trap91
CMPX #12
BNE trap91
JMP notrap91
trap91:
JMP trap91
notrap91:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #0e
BCS trap92
CMPY #12
BNE trap92
JMP notrap92
trap92:
JMP trap92
notrap92:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #0e
BCS trap93
CMPZ #12
BNE trap93
JMP notrap93
trap93:
JMP trap93
notrap93:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #04
ADDX #0f
BCS trap94
CMPX #13
BNE trap94
JMP notrap94
trap94:
JMP trap94
notrap94:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #04
ADDY #0f
BCS trap95
CMPY #13
BNE trap95
JMP notrap95
trap95:
JMP trap95
notrap95:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #04
ADDZ #0f
BCS trap96
CMPZ #13
BNE trap96
JMP notrap96
trap96:
JMP trap96
notrap96:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #00
BCS trap97
CMPX #08
BNE trap97
JMP notrap97
trap97:
JMP trap97
notrap97:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #00
BCS trap98
CMPY #08
BNE trap98
JMP notrap98
trap98:
JMP trap98
notrap98:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #00
BCS trap99
CMPZ #08
BNE trap99
JMP notrap99
trap99:
JMP trap99
notrap99:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #01
BCS trap100
CMPX #09
BNE trap100
JMP notrap100
trap100:
JMP trap100
notrap100:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #01
BCS trap101
CMPY #09
BNE trap101
JMP notrap101
trap101:
JMP trap101
notrap101:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #01
BCS trap102
CMPZ #09
BNE trap102
JMP notrap102
trap102:
JMP trap102
notrap102:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #02
BCS trap103
CMPX #0a
BNE trap103
JMP notrap103
trap103:
JMP trap103
notrap103:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #02
BCS trap104
CMPY #0a
BNE trap104
JMP notrap104
trap104:
JMP trap104
notrap104:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #02
BCS trap105
CMPZ #0a
BNE trap105
JMP notrap105
trap105:
JMP trap105
notrap105:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #03
BCS trap106
CMPX #0b
BNE trap106
JMP notrap106
trap106:
JMP trap106
notrap106:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #03
BCS trap107
CMPY #0b
BNE trap107
JMP notrap107
trap107:
JMP trap107
notrap107:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #03
BCS trap108
CMPZ #0b
BNE trap108
JMP notrap108
trap108:
JMP trap108
notrap108:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #04
BCS trap109
CMPX #0c
BNE trap109
JMP notrap109
trap109:
JMP trap109
notrap109:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #04
BCS trap110
CMPY #0c
BNE trap110
JMP notrap110
trap110:
JMP trap110
notrap110:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #04
BCS trap111
CMPZ #0c
BNE trap111
JMP notrap111
trap111:
JMP trap111
notrap111:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #05
BCS trap112
CMPX #0d
BNE trap112
JMP notrap112
trap112:
JMP trap112
notrap112:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #05
BCS trap113
CMPY #0d
BNE trap113
JMP notrap113
trap113:
JMP trap113
notrap113:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #05
BCS trap114
CMPZ #0d
BNE trap114
JMP notrap114
trap114:
JMP trap114
notrap114:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #06
BCS trap115
CMPX #0e
BNE trap115
JMP notrap115
trap115:
JMP trap115
notrap115:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #06
BCS trap116
CMPY #0e
BNE trap116
JMP notrap116
trap116:
JMP trap116
notrap116:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #06
BCS trap117
CMPZ #0e
BNE trap117
JMP notrap117
trap117:
JMP trap117
notrap117:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #07
BCS trap118
CMPX #0f
BNE trap118
JMP notrap118
trap118:
JMP trap118
notrap118:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #07
BCS trap119
CMPY #0f
BNE trap119
JMP notrap119
trap119:
JMP trap119
notrap119:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #07
BCS trap120
CMPZ #0f
BNE trap120
JMP notrap120
trap120:
JMP trap120
notrap120:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #08
BCS trap121
CMPX #10
BNE trap121
JMP notrap121
trap121:
JMP trap121
notrap121:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #08
BCS trap122
CMPY #10
BNE trap122
JMP notrap122
trap122:
JMP trap122
notrap122:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #08
BCS trap123
CMPZ #10
BNE trap123
JMP notrap123
trap123:
JMP trap123
notrap123:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #09
BCS trap124
CMPX #11
BNE trap124
JMP notrap124
trap124:
JMP trap124
notrap124:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #09
BCS trap125
CMPY #11
BNE trap125
JMP notrap125
trap125:
JMP trap125
notrap125:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #09
BCS trap126
CMPZ #11
BNE trap126
JMP notrap126
trap126:
JMP trap126
notrap126:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #0a
BCS trap127
CMPX #12
BNE trap127
JMP notrap127
trap127:
JMP trap127
notrap127:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #0a
BCS trap128
CMPY #12
BNE trap128
JMP notrap128
trap128:
JMP trap128
notrap128:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #0a
BCS trap129
CMPZ #12
BNE trap129
JMP notrap129
trap129:
JMP trap129
notrap129:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #0b
BCS trap130
CMPX #13
BNE trap130
JMP notrap130
trap130:
JMP trap130
notrap130:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #0b
BCS trap131
CMPY #13
BNE trap131
JMP notrap131
trap131:
JMP trap131
notrap131:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #0b
BCS trap132
CMPZ #13
BNE trap132
JMP notrap132
trap132:
JMP trap132
notrap132:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #0c
BCS trap133
CMPX #14
BNE trap133
JMP notrap133
trap133:
JMP trap133
notrap133:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #0c
BCS trap134
CMPY #14
BNE trap134
JMP notrap134
trap134:
JMP trap134
notrap134:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #0c
BCS trap135
CMPZ #14
BNE trap135
JMP notrap135
trap135:
JMP trap135
notrap135:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #0d
BCS trap136
CMPX #15
BNE trap136
JMP notrap136
trap136:
JMP trap136
notrap136:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #0d
BCS trap137
CMPY #15
BNE trap137
JMP notrap137
trap137:
JMP trap137
notrap137:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #0d
BCS trap138
CMPZ #15
BNE trap138
JMP notrap138
trap138:
JMP trap138
notrap138:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #0e
BCS trap139
CMPX #16
BNE trap139
JMP notrap139
trap139:
JMP trap139
notrap139:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #0e
BCS trap140
CMPY #16
BNE trap140
JMP notrap140
trap140:
JMP trap140
notrap140:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #0e
BCS trap141
CMPZ #16
BNE trap141
JMP notrap141
trap141:
JMP trap141
notrap141:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #08
ADDX #0f
BCS trap142
CMPX #17
BNE trap142
JMP notrap142
trap142:
JMP trap142
notrap142:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #08
ADDY #0f
BCS trap143
CMPY #17
BNE trap143
JMP notrap143
trap143:
JMP trap143
notrap143:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #08
ADDZ #0f
BCS trap144
CMPZ #17
BNE trap144
JMP notrap144
trap144:
JMP trap144
notrap144:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #00
BCS trap145
CMPX #0c
BNE trap145
JMP notrap145
trap145:
JMP trap145
notrap145:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #00
BCS trap146
CMPY #0c
BNE trap146
JMP notrap146
trap146:
JMP trap146
notrap146:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #00
BCS trap147
CMPZ #0c
BNE trap147
JMP notrap147
trap147:
JMP trap147
notrap147:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #01
BCS trap148
CMPX #0d
BNE trap148
JMP notrap148
trap148:
JMP trap148
notrap148:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #01
BCS trap149
CMPY #0d
BNE trap149
JMP notrap149
trap149:
JMP trap149
notrap149:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #01
BCS trap150
CMPZ #0d
BNE trap150
JMP notrap150
trap150:
JMP trap150
notrap150:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #02
BCS trap151
CMPX #0e
BNE trap151
JMP notrap151
trap151:
JMP trap151
notrap151:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #02
BCS trap152
CMPY #0e
BNE trap152
JMP notrap152
trap152:
JMP trap152
notrap152:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #02
BCS trap153
CMPZ #0e
BNE trap153
JMP notrap153
trap153:
JMP trap153
notrap153:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #03
BCS trap154
CMPX #0f
BNE trap154
JMP notrap154
trap154:
JMP trap154
notrap154:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #03
BCS trap155
CMPY #0f
BNE trap155
JMP notrap155
trap155:
JMP trap155
notrap155:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #03
BCS trap156
CMPZ #0f
BNE trap156
JMP notrap156
trap156:
JMP trap156
notrap156:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #04
BCS trap157
CMPX #10
BNE trap157
JMP notrap157
trap157:
JMP trap157
notrap157:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #04
BCS trap158
CMPY #10
BNE trap158
JMP notrap158
trap158:
JMP trap158
notrap158:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #04
BCS trap159
CMPZ #10
BNE trap159
JMP notrap159
trap159:
JMP trap159
notrap159:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #05
BCS trap160
CMPX #11
BNE trap160
JMP notrap160
trap160:
JMP trap160
notrap160:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #05
BCS trap161
CMPY #11
BNE trap161
JMP notrap161
trap161:
JMP trap161
notrap161:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #05
BCS trap162
CMPZ #11
BNE trap162
JMP notrap162
trap162:
JMP trap162
notrap162:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #06
BCS trap163
CMPX #12
BNE trap163
JMP notrap163
trap163:
JMP trap163
notrap163:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #06
BCS trap164
CMPY #12
BNE trap164
JMP notrap164
trap164:
JMP trap164
notrap164:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #06
BCS trap165
CMPZ #12
BNE trap165
JMP notrap165
trap165:
JMP trap165
notrap165:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #07
BCS trap166
CMPX #13
BNE trap166
JMP notrap166
trap166:
JMP trap166
notrap166:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #07
BCS trap167
CMPY #13
BNE trap167
JMP notrap167
trap167:
JMP trap167
notrap167:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #07
BCS trap168
CMPZ #13
BNE trap168
JMP notrap168
trap168:
JMP trap168
notrap168:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #08
BCS trap169
CMPX #14
BNE trap169
JMP notrap169
trap169:
JMP trap169
notrap169:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #08
BCS trap170
CMPY #14
BNE trap170
JMP notrap170
trap170:
JMP trap170
notrap170:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #08
BCS trap171
CMPZ #14
BNE trap171
JMP notrap171
trap171:
JMP trap171
notrap171:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #09
BCS trap172
CMPX #15
BNE trap172
JMP notrap172
trap172:
JMP trap172
notrap172:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #09
BCS trap173
CMPY #15
BNE trap173
JMP notrap173
trap173:
JMP trap173
notrap173:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #09
BCS trap174
CMPZ #15
BNE trap174
JMP notrap174
trap174:
JMP trap174
notrap174:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #0a
BCS trap175
CMPX #16
BNE trap175
JMP notrap175
trap175:
JMP trap175
notrap175:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #0a
BCS trap176
CMPY #16
BNE trap176
JMP notrap176
trap176:
JMP trap176
notrap176:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #0a
BCS trap177
CMPZ #16
BNE trap177
JMP notrap177
trap177:
JMP trap177
notrap177:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #0b
BCS trap178
CMPX #17
BNE trap178
JMP notrap178
trap178:
JMP trap178
notrap178:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #0b
BCS trap179
CMPY #17
BNE trap179
JMP notrap179
trap179:
JMP trap179
notrap179:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #0b
BCS trap180
CMPZ #17
BNE trap180
JMP notrap180
trap180:
JMP trap180
notrap180:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #0c
BCS trap181
CMPX #18
BNE trap181
JMP notrap181
trap181:
JMP trap181
notrap181:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #0c
BCS trap182
CMPY #18
BNE trap182
JMP notrap182
trap182:
JMP trap182
notrap182:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #0c
BCS trap183
CMPZ #18
BNE trap183
JMP notrap183
trap183:
JMP trap183
notrap183:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #0d
BCS trap184
CMPX #19
BNE trap184
JMP notrap184
trap184:
JMP trap184
notrap184:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #0d
BCS trap185
CMPY #19
BNE trap185
JMP notrap185
trap185:
JMP trap185
notrap185:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #0d
BCS trap186
CMPZ #19
BNE trap186
JMP notrap186
trap186:
JMP trap186
notrap186:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #0e
BCS trap187
CMPX #1a
BNE trap187
JMP notrap187
trap187:
JMP trap187
notrap187:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #0e
BCS trap188
CMPY #1a
BNE trap188
JMP notrap188
trap188:
JMP trap188
notrap188:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #0e
BCS trap189
CMPZ #1a
BNE trap189
JMP notrap189
trap189:
JMP trap189
notrap189:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #0c
ADDX #0f
BCS trap190
CMPX #1b
BNE trap190
JMP notrap190
trap190:
JMP trap190
notrap190:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #0c
ADDY #0f
BCS trap191
CMPY #1b
BNE trap191
JMP notrap191
trap191:
JMP trap191
notrap191:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #0c
ADDZ #0f
BCS trap192
CMPZ #1b
BNE trap192
JMP notrap192
trap192:
JMP trap192
notrap192:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #00
BCS trap193
CMPX #10
BNE trap193
JMP notrap193
trap193:
JMP trap193
notrap193:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #00
BCS trap194
CMPY #10
BNE trap194
JMP notrap194
trap194:
JMP trap194
notrap194:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #00
BCS trap195
CMPZ #10
BNE trap195
JMP notrap195
trap195:
JMP trap195
notrap195:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #01
BCS trap196
CMPX #11
BNE trap196
JMP notrap196
trap196:
JMP trap196
notrap196:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #01
BCS trap197
CMPY #11
BNE trap197
JMP notrap197
trap197:
JMP trap197
notrap197:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #01
BCS trap198
CMPZ #11
BNE trap198
JMP notrap198
trap198:
JMP trap198
notrap198:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #02
BCS trap199
CMPX #12
BNE trap199
JMP notrap199
trap199:
JMP trap199
notrap199:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #02
BCS trap200
CMPY #12
BNE trap200
JMP notrap200
trap200:
JMP trap200
notrap200:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #02
BCS trap201
CMPZ #12
BNE trap201
JMP notrap201
trap201:
JMP trap201
notrap201:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #03
BCS trap202
CMPX #13
BNE trap202
JMP notrap202
trap202:
JMP trap202
notrap202:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #03
BCS trap203
CMPY #13
BNE trap203
JMP notrap203
trap203:
JMP trap203
notrap203:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #03
BCS trap204
CMPZ #13
BNE trap204
JMP notrap204
trap204:
JMP trap204
notrap204:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #04
BCS trap205
CMPX #14
BNE trap205
JMP notrap205
trap205:
JMP trap205
notrap205:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #04
BCS trap206
CMPY #14
BNE trap206
JMP notrap206
trap206:
JMP trap206
notrap206:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #04
BCS trap207
CMPZ #14
BNE trap207
JMP notrap207
trap207:
JMP trap207
notrap207:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #05
BCS trap208
CMPX #15
BNE trap208
JMP notrap208
trap208:
JMP trap208
notrap208:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #05
BCS trap209
CMPY #15
BNE trap209
JMP notrap209
trap209:
JMP trap209
notrap209:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #05
BCS trap210
CMPZ #15
BNE trap210
JMP notrap210
trap210:
JMP trap210
notrap210:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #06
BCS trap211
CMPX #16
BNE trap211
JMP notrap211
trap211:
JMP trap211
notrap211:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #06
BCS trap212
CMPY #16
BNE trap212
JMP notrap212
trap212:
JMP trap212
notrap212:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #06
BCS trap213
CMPZ #16
BNE trap213
JMP notrap213
trap213:
JMP trap213
notrap213:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #07
BCS trap214
CMPX #17
BNE trap214
JMP notrap214
trap214:
JMP trap214
notrap214:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #07
BCS trap215
CMPY #17
BNE trap215
JMP notrap215
trap215:
JMP trap215
notrap215:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #07
BCS trap216
CMPZ #17
BNE trap216
JMP notrap216
trap216:
JMP trap216
notrap216:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #08
BCS trap217
CMPX #18
BNE trap217
JMP notrap217
trap217:
JMP trap217
notrap217:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #08
BCS trap218
CMPY #18
BNE trap218
JMP notrap218
trap218:
JMP trap218
notrap218:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #08
BCS trap219
CMPZ #18
BNE trap219
JMP notrap219
trap219:
JMP trap219
notrap219:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #09
BCS trap220
CMPX #19
BNE trap220
JMP notrap220
trap220:
JMP trap220
notrap220:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #09
BCS trap221
CMPY #19
BNE trap221
JMP notrap221
trap221:
JMP trap221
notrap221:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #09
BCS trap222
CMPZ #19
BNE trap222
JMP notrap222
trap222:
JMP trap222
notrap222:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #0a
BCS trap223
CMPX #1a
BNE trap223
JMP notrap223
trap223:
JMP trap223
notrap223:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #0a
BCS trap224
CMPY #1a
BNE trap224
JMP notrap224
trap224:
JMP trap224
notrap224:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #0a
BCS trap225
CMPZ #1a
BNE trap225
JMP notrap225
trap225:
JMP trap225
notrap225:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #0b
BCS trap226
CMPX #1b
BNE trap226
JMP notrap226
trap226:
JMP trap226
notrap226:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #0b
BCS trap227
CMPY #1b
BNE trap227
JMP notrap227
trap227:
JMP trap227
notrap227:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #0b
BCS trap228
CMPZ #1b
BNE trap228
JMP notrap228
trap228:
JMP trap228
notrap228:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #0c
BCS trap229
CMPX #1c
BNE trap229
JMP notrap229
trap229:
JMP trap229
notrap229:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #0c
BCS trap230
CMPY #1c
BNE trap230
JMP notrap230
trap230:
JMP trap230
notrap230:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #0c
BCS trap231
CMPZ #1c
BNE trap231
JMP notrap231
trap231:
JMP trap231
notrap231:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #0d
BCS trap232
CMPX #1d
BNE trap232
JMP notrap232
trap232:
JMP trap232
notrap232:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #0d
BCS trap233
CMPY #1d
BNE trap233
JMP notrap233
trap233:
JMP trap233
notrap233:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #0d
BCS trap234
CMPZ #1d
BNE trap234
JMP notrap234
trap234:
JMP trap234
notrap234:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #0e
BCS trap235
CMPX #1e
BNE trap235
JMP notrap235
trap235:
JMP trap235
notrap235:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #0e
BCS trap236
CMPY #1e
BNE trap236
JMP notrap236
trap236:
JMP trap236
notrap236:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #0e
BCS trap237
CMPZ #1e
BNE trap237
JMP notrap237
trap237:
JMP trap237
notrap237:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #10
ADDX #0f
BCS trap238
CMPX #1f
BNE trap238
JMP notrap238
trap238:
JMP trap238
notrap238:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #10
ADDY #0f
BCS trap239
CMPY #1f
BNE trap239
JMP notrap239
trap239:
JMP trap239
notrap239:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #10
ADDZ #0f
BCS trap240
CMPZ #1f
BNE trap240
JMP notrap240
trap240:
JMP trap240
notrap240:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #00
BCS trap241
CMPX #14
BNE trap241
JMP notrap241
trap241:
JMP trap241
notrap241:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #00
BCS trap242
CMPY #14
BNE trap242
JMP notrap242
trap242:
JMP trap242
notrap242:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #00
BCS trap243
CMPZ #14
BNE trap243
JMP notrap243
trap243:
JMP trap243
notrap243:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #01
BCS trap244
CMPX #15
BNE trap244
JMP notrap244
trap244:
JMP trap244
notrap244:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #01
BCS trap245
CMPY #15
BNE trap245
JMP notrap245
trap245:
JMP trap245
notrap245:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #01
BCS trap246
CMPZ #15
BNE trap246
JMP notrap246
trap246:
JMP trap246
notrap246:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #02
BCS trap247
CMPX #16
BNE trap247
JMP notrap247
trap247:
JMP trap247
notrap247:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #02
BCS trap248
CMPY #16
BNE trap248
JMP notrap248
trap248:
JMP trap248
notrap248:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #02
BCS trap249
CMPZ #16
BNE trap249
JMP notrap249
trap249:
JMP trap249
notrap249:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #03
BCS trap250
CMPX #17
BNE trap250
JMP notrap250
trap250:
JMP trap250
notrap250:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #03
BCS trap251
CMPY #17
BNE trap251
JMP notrap251
trap251:
JMP trap251
notrap251:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #03
BCS trap252
CMPZ #17
BNE trap252
JMP notrap252
trap252:
JMP trap252
notrap252:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #04
BCS trap253
CMPX #18
BNE trap253
JMP notrap253
trap253:
JMP trap253
notrap253:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #04
BCS trap254
CMPY #18
BNE trap254
JMP notrap254
trap254:
JMP trap254
notrap254:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #04
BCS trap255
CMPZ #18
BNE trap255
JMP notrap255
trap255:
JMP trap255
notrap255:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #05
BCS trap256
CMPX #19
BNE trap256
JMP notrap256
trap256:
JMP trap256
notrap256:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #05
BCS trap257
CMPY #19
BNE trap257
JMP notrap257
trap257:
JMP trap257
notrap257:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #05
BCS trap258
CMPZ #19
BNE trap258
JMP notrap258
trap258:
JMP trap258
notrap258:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #06
BCS trap259
CMPX #1a
BNE trap259
JMP notrap259
trap259:
JMP trap259
notrap259:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #06
BCS trap260
CMPY #1a
BNE trap260
JMP notrap260
trap260:
JMP trap260
notrap260:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #06
BCS trap261
CMPZ #1a
BNE trap261
JMP notrap261
trap261:
JMP trap261
notrap261:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #07
BCS trap262
CMPX #1b
BNE trap262
JMP notrap262
trap262:
JMP trap262
notrap262:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #07
BCS trap263
CMPY #1b
BNE trap263
JMP notrap263
trap263:
JMP trap263
notrap263:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #07
BCS trap264
CMPZ #1b
BNE trap264
JMP notrap264
trap264:
JMP trap264
notrap264:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #08
BCS trap265
CMPX #1c
BNE trap265
JMP notrap265
trap265:
JMP trap265
notrap265:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #08
BCS trap266
CMPY #1c
BNE trap266
JMP notrap266
trap266:
JMP trap266
notrap266:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #08
BCS trap267
CMPZ #1c
BNE trap267
JMP notrap267
trap267:
JMP trap267
notrap267:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #09
BCS trap268
CMPX #1d
BNE trap268
JMP notrap268
trap268:
JMP trap268
notrap268:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #09
BCS trap269
CMPY #1d
BNE trap269
JMP notrap269
trap269:
JMP trap269
notrap269:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #09
BCS trap270
CMPZ #1d
BNE trap270
JMP notrap270
trap270:
JMP trap270
notrap270:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #0a
BCS trap271
CMPX #1e
BNE trap271
JMP notrap271
trap271:
JMP trap271
notrap271:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #0a
BCS trap272
CMPY #1e
BNE trap272
JMP notrap272
trap272:
JMP trap272
notrap272:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #0a
BCS trap273
CMPZ #1e
BNE trap273
JMP notrap273
trap273:
JMP trap273
notrap273:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #0b
BCS trap274
CMPX #1f
BNE trap274
JMP notrap274
trap274:
JMP trap274
notrap274:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #0b
BCS trap275
CMPY #1f
BNE trap275
JMP notrap275
trap275:
JMP trap275
notrap275:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #0b
BCS trap276
CMPZ #1f
BNE trap276
JMP notrap276
trap276:
JMP trap276
notrap276:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #0c
BCS trap277
CMPX #20
BNE trap277
JMP notrap277
trap277:
JMP trap277
notrap277:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #0c
BCS trap278
CMPY #20
BNE trap278
JMP notrap278
trap278:
JMP trap278
notrap278:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #0c
BCS trap279
CMPZ #20
BNE trap279
JMP notrap279
trap279:
JMP trap279
notrap279:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #0d
BCS trap280
CMPX #21
BNE trap280
JMP notrap280
trap280:
JMP trap280
notrap280:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #0d
BCS trap281
CMPY #21
BNE trap281
JMP notrap281
trap281:
JMP trap281
notrap281:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #0d
BCS trap282
CMPZ #21
BNE trap282
JMP notrap282
trap282:
JMP trap282
notrap282:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #0e
BCS trap283
CMPX #22
BNE trap283
JMP notrap283
trap283:
JMP trap283
notrap283:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #0e
BCS trap284
CMPY #22
BNE trap284
JMP notrap284
trap284:
JMP trap284
notrap284:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #0e
BCS trap285
CMPZ #22
BNE trap285
JMP notrap285
trap285:
JMP trap285
notrap285:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #14
ADDX #0f
BCS trap286
CMPX #23
BNE trap286
JMP notrap286
trap286:
JMP trap286
notrap286:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #14
ADDY #0f
BCS trap287
CMPY #23
BNE trap287
JMP notrap287
trap287:
JMP trap287
notrap287:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #14
ADDZ #0f
BCS trap288
CMPZ #23
BNE trap288
JMP notrap288
trap288:
JMP trap288
notrap288:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #00
BCS trap289
CMPX #18
BNE trap289
JMP notrap289
trap289:
JMP trap289
notrap289:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #00
BCS trap290
CMPY #18
BNE trap290
JMP notrap290
trap290:
JMP trap290
notrap290:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #00
BCS trap291
CMPZ #18
BNE trap291
JMP notrap291
trap291:
JMP trap291
notrap291:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #01
BCS trap292
CMPX #19
BNE trap292
JMP notrap292
trap292:
JMP trap292
notrap292:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #01
BCS trap293
CMPY #19
BNE trap293
JMP notrap293
trap293:
JMP trap293
notrap293:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #01
BCS trap294
CMPZ #19
BNE trap294
JMP notrap294
trap294:
JMP trap294
notrap294:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #02
BCS trap295
CMPX #1a
BNE trap295
JMP notrap295
trap295:
JMP trap295
notrap295:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #02
BCS trap296
CMPY #1a
BNE trap296
JMP notrap296
trap296:
JMP trap296
notrap296:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #02
BCS trap297
CMPZ #1a
BNE trap297
JMP notrap297
trap297:
JMP trap297
notrap297:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #03
BCS trap298
CMPX #1b
BNE trap298
JMP notrap298
trap298:
JMP trap298
notrap298:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #03
BCS trap299
CMPY #1b
BNE trap299
JMP notrap299
trap299:
JMP trap299
notrap299:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #03
BCS trap300
CMPZ #1b
BNE trap300
JMP notrap300
trap300:
JMP trap300
notrap300:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #04
BCS trap301
CMPX #1c
BNE trap301
JMP notrap301
trap301:
JMP trap301
notrap301:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #04
BCS trap302
CMPY #1c
BNE trap302
JMP notrap302
trap302:
JMP trap302
notrap302:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #04
BCS trap303
CMPZ #1c
BNE trap303
JMP notrap303
trap303:
JMP trap303
notrap303:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #05
BCS trap304
CMPX #1d
BNE trap304
JMP notrap304
trap304:
JMP trap304
notrap304:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #05
BCS trap305
CMPY #1d
BNE trap305
JMP notrap305
trap305:
JMP trap305
notrap305:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #05
BCS trap306
CMPZ #1d
BNE trap306
JMP notrap306
trap306:
JMP trap306
notrap306:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #06
BCS trap307
CMPX #1e
BNE trap307
JMP notrap307
trap307:
JMP trap307
notrap307:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #06
BCS trap308
CMPY #1e
BNE trap308
JMP notrap308
trap308:
JMP trap308
notrap308:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #06
BCS trap309
CMPZ #1e
BNE trap309
JMP notrap309
trap309:
JMP trap309
notrap309:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #07
BCS trap310
CMPX #1f
BNE trap310
JMP notrap310
trap310:
JMP trap310
notrap310:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #07
BCS trap311
CMPY #1f
BNE trap311
JMP notrap311
trap311:
JMP trap311
notrap311:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #07
BCS trap312
CMPZ #1f
BNE trap312
JMP notrap312
trap312:
JMP trap312
notrap312:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #08
BCS trap313
CMPX #20
BNE trap313
JMP notrap313
trap313:
JMP trap313
notrap313:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #08
BCS trap314
CMPY #20
BNE trap314
JMP notrap314
trap314:
JMP trap314
notrap314:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #08
BCS trap315
CMPZ #20
BNE trap315
JMP notrap315
trap315:
JMP trap315
notrap315:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #09
BCS trap316
CMPX #21
BNE trap316
JMP notrap316
trap316:
JMP trap316
notrap316:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #09
BCS trap317
CMPY #21
BNE trap317
JMP notrap317
trap317:
JMP trap317
notrap317:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #09
BCS trap318
CMPZ #21
BNE trap318
JMP notrap318
trap318:
JMP trap318
notrap318:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #0a
BCS trap319
CMPX #22
BNE trap319
JMP notrap319
trap319:
JMP trap319
notrap319:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #0a
BCS trap320
CMPY #22
BNE trap320
JMP notrap320
trap320:
JMP trap320
notrap320:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #0a
BCS trap321
CMPZ #22
BNE trap321
JMP notrap321
trap321:
JMP trap321
notrap321:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #0b
BCS trap322
CMPX #23
BNE trap322
JMP notrap322
trap322:
JMP trap322
notrap322:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #0b
BCS trap323
CMPY #23
BNE trap323
JMP notrap323
trap323:
JMP trap323
notrap323:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #0b
BCS trap324
CMPZ #23
BNE trap324
JMP notrap324
trap324:
JMP trap324
notrap324:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #0c
BCS trap325
CMPX #24
BNE trap325
JMP notrap325
trap325:
JMP trap325
notrap325:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #0c
BCS trap326
CMPY #24
BNE trap326
JMP notrap326
trap326:
JMP trap326
notrap326:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #0c
BCS trap327
CMPZ #24
BNE trap327
JMP notrap327
trap327:
JMP trap327
notrap327:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #0d
BCS trap328
CMPX #25
BNE trap328
JMP notrap328
trap328:
JMP trap328
notrap328:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #0d
BCS trap329
CMPY #25
BNE trap329
JMP notrap329
trap329:
JMP trap329
notrap329:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #0d
BCS trap330
CMPZ #25
BNE trap330
JMP notrap330
trap330:
JMP trap330
notrap330:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #0e
BCS trap331
CMPX #26
BNE trap331
JMP notrap331
trap331:
JMP trap331
notrap331:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #0e
BCS trap332
CMPY #26
BNE trap332
JMP notrap332
trap332:
JMP trap332
notrap332:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #0e
BCS trap333
CMPZ #26
BNE trap333
JMP notrap333
trap333:
JMP trap333
notrap333:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #18
ADDX #0f
BCS trap334
CMPX #27
BNE trap334
JMP notrap334
trap334:
JMP trap334
notrap334:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #18
ADDY #0f
BCS trap335
CMPY #27
BNE trap335
JMP notrap335
trap335:
JMP trap335
notrap335:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #18
ADDZ #0f
BCS trap336
CMPZ #27
BNE trap336
JMP notrap336
trap336:
JMP trap336
notrap336:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #00
BCS trap337
CMPX #1c
BNE trap337
JMP notrap337
trap337:
JMP trap337
notrap337:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #00
BCS trap338
CMPY #1c
BNE trap338
JMP notrap338
trap338:
JMP trap338
notrap338:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #00
BCS trap339
CMPZ #1c
BNE trap339
JMP notrap339
trap339:
JMP trap339
notrap339:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #01
BCS trap340
CMPX #1d
BNE trap340
JMP notrap340
trap340:
JMP trap340
notrap340:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #01
BCS trap341
CMPY #1d
BNE trap341
JMP notrap341
trap341:
JMP trap341
notrap341:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #01
BCS trap342
CMPZ #1d
BNE trap342
JMP notrap342
trap342:
JMP trap342
notrap342:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #02
BCS trap343
CMPX #1e
BNE trap343
JMP notrap343
trap343:
JMP trap343
notrap343:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #02
BCS trap344
CMPY #1e
BNE trap344
JMP notrap344
trap344:
JMP trap344
notrap344:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #02
BCS trap345
CMPZ #1e
BNE trap345
JMP notrap345
trap345:
JMP trap345
notrap345:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #03
BCS trap346
CMPX #1f
BNE trap346
JMP notrap346
trap346:
JMP trap346
notrap346:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #03
BCS trap347
CMPY #1f
BNE trap347
JMP notrap347
trap347:
JMP trap347
notrap347:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #03
BCS trap348
CMPZ #1f
BNE trap348
JMP notrap348
trap348:
JMP trap348
notrap348:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #04
BCS trap349
CMPX #20
BNE trap349
JMP notrap349
trap349:
JMP trap349
notrap349:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #04
BCS trap350
CMPY #20
BNE trap350
JMP notrap350
trap350:
JMP trap350
notrap350:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #04
BCS trap351
CMPZ #20
BNE trap351
JMP notrap351
trap351:
JMP trap351
notrap351:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #05
BCS trap352
CMPX #21
BNE trap352
JMP notrap352
trap352:
JMP trap352
notrap352:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #05
BCS trap353
CMPY #21
BNE trap353
JMP notrap353
trap353:
JMP trap353
notrap353:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #05
BCS trap354
CMPZ #21
BNE trap354
JMP notrap354
trap354:
JMP trap354
notrap354:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #06
BCS trap355
CMPX #22
BNE trap355
JMP notrap355
trap355:
JMP trap355
notrap355:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #06
BCS trap356
CMPY #22
BNE trap356
JMP notrap356
trap356:
JMP trap356
notrap356:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #06
BCS trap357
CMPZ #22
BNE trap357
JMP notrap357
trap357:
JMP trap357
notrap357:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #07
BCS trap358
CMPX #23
BNE trap358
JMP notrap358
trap358:
JMP trap358
notrap358:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #07
BCS trap359
CMPY #23
BNE trap359
JMP notrap359
trap359:
JMP trap359
notrap359:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #07
BCS trap360
CMPZ #23
BNE trap360
JMP notrap360
trap360:
JMP trap360
notrap360:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #08
BCS trap361
CMPX #24
BNE trap361
JMP notrap361
trap361:
JMP trap361
notrap361:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #08
BCS trap362
CMPY #24
BNE trap362
JMP notrap362
trap362:
JMP trap362
notrap362:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #08
BCS trap363
CMPZ #24
BNE trap363
JMP notrap363
trap363:
JMP trap363
notrap363:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #09
BCS trap364
CMPX #25
BNE trap364
JMP notrap364
trap364:
JMP trap364
notrap364:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #09
BCS trap365
CMPY #25
BNE trap365
JMP notrap365
trap365:
JMP trap365
notrap365:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #09
BCS trap366
CMPZ #25
BNE trap366
JMP notrap366
trap366:
JMP trap366
notrap366:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #0a
BCS trap367
CMPX #26
BNE trap367
JMP notrap367
trap367:
JMP trap367
notrap367:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #0a
BCS trap368
CMPY #26
BNE trap368
JMP notrap368
trap368:
JMP trap368
notrap368:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #0a
BCS trap369
CMPZ #26
BNE trap369
JMP notrap369
trap369:
JMP trap369
notrap369:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #0b
BCS trap370
CMPX #27
BNE trap370
JMP notrap370
trap370:
JMP trap370
notrap370:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #0b
BCS trap371
CMPY #27
BNE trap371
JMP notrap371
trap371:
JMP trap371
notrap371:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #0b
BCS trap372
CMPZ #27
BNE trap372
JMP notrap372
trap372:
JMP trap372
notrap372:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #0c
BCS trap373
CMPX #28
BNE trap373
JMP notrap373
trap373:
JMP trap373
notrap373:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #0c
BCS trap374
CMPY #28
BNE trap374
JMP notrap374
trap374:
JMP trap374
notrap374:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #0c
BCS trap375
CMPZ #28
BNE trap375
JMP notrap375
trap375:
JMP trap375
notrap375:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #0d
BCS trap376
CMPX #29
BNE trap376
JMP notrap376
trap376:
JMP trap376
notrap376:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #0d
BCS trap377
CMPY #29
BNE trap377
JMP notrap377
trap377:
JMP trap377
notrap377:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #0d
BCS trap378
CMPZ #29
BNE trap378
JMP notrap378
trap378:
JMP trap378
notrap378:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #0e
BCS trap379
CMPX #2a
BNE trap379
JMP notrap379
trap379:
JMP trap379
notrap379:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #0e
BCS trap380
CMPY #2a
BNE trap380
JMP notrap380
trap380:
JMP trap380
notrap380:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #0e
BCS trap381
CMPZ #2a
BNE trap381
JMP notrap381
trap381:
JMP trap381
notrap381:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #1c
ADDX #0f
BCS trap382
CMPX #2b
BNE trap382
JMP notrap382
trap382:
JMP trap382
notrap382:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #1c
ADDY #0f
BCS trap383
CMPY #2b
BNE trap383
JMP notrap383
trap383:
JMP trap383
notrap383:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #1c
ADDZ #0f
BCS trap384
CMPZ #2b
BNE trap384
JMP notrap384
trap384:
JMP trap384
notrap384:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #00
BCS trap385
CMPX #20
BNE trap385
JMP notrap385
trap385:
JMP trap385
notrap385:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #00
BCS trap386
CMPY #20
BNE trap386
JMP notrap386
trap386:
JMP trap386
notrap386:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #00
BCS trap387
CMPZ #20
BNE trap387
JMP notrap387
trap387:
JMP trap387
notrap387:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #01
BCS trap388
CMPX #21
BNE trap388
JMP notrap388
trap388:
JMP trap388
notrap388:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #01
BCS trap389
CMPY #21
BNE trap389
JMP notrap389
trap389:
JMP trap389
notrap389:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #01
BCS trap390
CMPZ #21
BNE trap390
JMP notrap390
trap390:
JMP trap390
notrap390:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #02
BCS trap391
CMPX #22
BNE trap391
JMP notrap391
trap391:
JMP trap391
notrap391:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #02
BCS trap392
CMPY #22
BNE trap392
JMP notrap392
trap392:
JMP trap392
notrap392:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #02
BCS trap393
CMPZ #22
BNE trap393
JMP notrap393
trap393:
JMP trap393
notrap393:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #03
BCS trap394
CMPX #23
BNE trap394
JMP notrap394
trap394:
JMP trap394
notrap394:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #03
BCS trap395
CMPY #23
BNE trap395
JMP notrap395
trap395:
JMP trap395
notrap395:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #03
BCS trap396
CMPZ #23
BNE trap396
JMP notrap396
trap396:
JMP trap396
notrap396:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #04
BCS trap397
CMPX #24
BNE trap397
JMP notrap397
trap397:
JMP trap397
notrap397:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #04
BCS trap398
CMPY #24
BNE trap398
JMP notrap398
trap398:
JMP trap398
notrap398:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #04
BCS trap399
CMPZ #24
BNE trap399
JMP notrap399
trap399:
JMP trap399
notrap399:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #05
BCS trap400
CMPX #25
BNE trap400
JMP notrap400
trap400:
JMP trap400
notrap400:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #05
BCS trap401
CMPY #25
BNE trap401
JMP notrap401
trap401:
JMP trap401
notrap401:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #05
BCS trap402
CMPZ #25
BNE trap402
JMP notrap402
trap402:
JMP trap402
notrap402:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #06
BCS trap403
CMPX #26
BNE trap403
JMP notrap403
trap403:
JMP trap403
notrap403:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #06
BCS trap404
CMPY #26
BNE trap404
JMP notrap404
trap404:
JMP trap404
notrap404:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #06
BCS trap405
CMPZ #26
BNE trap405
JMP notrap405
trap405:
JMP trap405
notrap405:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #07
BCS trap406
CMPX #27
BNE trap406
JMP notrap406
trap406:
JMP trap406
notrap406:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #07
BCS trap407
CMPY #27
BNE trap407
JMP notrap407
trap407:
JMP trap407
notrap407:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #07
BCS trap408
CMPZ #27
BNE trap408
JMP notrap408
trap408:
JMP trap408
notrap408:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #08
BCS trap409
CMPX #28
BNE trap409
JMP notrap409
trap409:
JMP trap409
notrap409:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #08
BCS trap410
CMPY #28
BNE trap410
JMP notrap410
trap410:
JMP trap410
notrap410:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #08
BCS trap411
CMPZ #28
BNE trap411
JMP notrap411
trap411:
JMP trap411
notrap411:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #09
BCS trap412
CMPX #29
BNE trap412
JMP notrap412
trap412:
JMP trap412
notrap412:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #09
BCS trap413
CMPY #29
BNE trap413
JMP notrap413
trap413:
JMP trap413
notrap413:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #09
BCS trap414
CMPZ #29
BNE trap414
JMP notrap414
trap414:
JMP trap414
notrap414:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #0a
BCS trap415
CMPX #2a
BNE trap415
JMP notrap415
trap415:
JMP trap415
notrap415:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #0a
BCS trap416
CMPY #2a
BNE trap416
JMP notrap416
trap416:
JMP trap416
notrap416:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #0a
BCS trap417
CMPZ #2a
BNE trap417
JMP notrap417
trap417:
JMP trap417
notrap417:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #0b
BCS trap418
CMPX #2b
BNE trap418
JMP notrap418
trap418:
JMP trap418
notrap418:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #0b
BCS trap419
CMPY #2b
BNE trap419
JMP notrap419
trap419:
JMP trap419
notrap419:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #0b
BCS trap420
CMPZ #2b
BNE trap420
JMP notrap420
trap420:
JMP trap420
notrap420:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #0c
BCS trap421
CMPX #2c
BNE trap421
JMP notrap421
trap421:
JMP trap421
notrap421:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #0c
BCS trap422
CMPY #2c
BNE trap422
JMP notrap422
trap422:
JMP trap422
notrap422:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #0c
BCS trap423
CMPZ #2c
BNE trap423
JMP notrap423
trap423:
JMP trap423
notrap423:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #0d
BCS trap424
CMPX #2d
BNE trap424
JMP notrap424
trap424:
JMP trap424
notrap424:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #0d
BCS trap425
CMPY #2d
BNE trap425
JMP notrap425
trap425:
JMP trap425
notrap425:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #0d
BCS trap426
CMPZ #2d
BNE trap426
JMP notrap426
trap426:
JMP trap426
notrap426:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #0e
BCS trap427
CMPX #2e
BNE trap427
JMP notrap427
trap427:
JMP trap427
notrap427:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #0e
BCS trap428
CMPY #2e
BNE trap428
JMP notrap428
trap428:
JMP trap428
notrap428:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #0e
BCS trap429
CMPZ #2e
BNE trap429
JMP notrap429
trap429:
JMP trap429
notrap429:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #20
ADDX #0f
BCS trap430
CMPX #2f
BNE trap430
JMP notrap430
trap430:
JMP trap430
notrap430:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #20
ADDY #0f
BCS trap431
CMPY #2f
BNE trap431
JMP notrap431
trap431:
JMP trap431
notrap431:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #20
ADDZ #0f
BCS trap432
CMPZ #2f
BNE trap432
JMP notrap432
trap432:
JMP trap432
notrap432:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #00
BCS trap433
CMPX #24
BNE trap433
JMP notrap433
trap433:
JMP trap433
notrap433:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #00
BCS trap434
CMPY #24
BNE trap434
JMP notrap434
trap434:
JMP trap434
notrap434:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #00
BCS trap435
CMPZ #24
BNE trap435
JMP notrap435
trap435:
JMP trap435
notrap435:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #01
BCS trap436
CMPX #25
BNE trap436
JMP notrap436
trap436:
JMP trap436
notrap436:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #01
BCS trap437
CMPY #25
BNE trap437
JMP notrap437
trap437:
JMP trap437
notrap437:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #01
BCS trap438
CMPZ #25
BNE trap438
JMP notrap438
trap438:
JMP trap438
notrap438:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #02
BCS trap439
CMPX #26
BNE trap439
JMP notrap439
trap439:
JMP trap439
notrap439:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #02
BCS trap440
CMPY #26
BNE trap440
JMP notrap440
trap440:
JMP trap440
notrap440:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #02
BCS trap441
CMPZ #26
BNE trap441
JMP notrap441
trap441:
JMP trap441
notrap441:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #03
BCS trap442
CMPX #27
BNE trap442
JMP notrap442
trap442:
JMP trap442
notrap442:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #03
BCS trap443
CMPY #27
BNE trap443
JMP notrap443
trap443:
JMP trap443
notrap443:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #03
BCS trap444
CMPZ #27
BNE trap444
JMP notrap444
trap444:
JMP trap444
notrap444:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #04
BCS trap445
CMPX #28
BNE trap445
JMP notrap445
trap445:
JMP trap445
notrap445:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #04
BCS trap446
CMPY #28
BNE trap446
JMP notrap446
trap446:
JMP trap446
notrap446:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #04
BCS trap447
CMPZ #28
BNE trap447
JMP notrap447
trap447:
JMP trap447
notrap447:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #05
BCS trap448
CMPX #29
BNE trap448
JMP notrap448
trap448:
JMP trap448
notrap448:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #05
BCS trap449
CMPY #29
BNE trap449
JMP notrap449
trap449:
JMP trap449
notrap449:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #05
BCS trap450
CMPZ #29
BNE trap450
JMP notrap450
trap450:
JMP trap450
notrap450:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #06
BCS trap451
CMPX #2a
BNE trap451
JMP notrap451
trap451:
JMP trap451
notrap451:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #06
BCS trap452
CMPY #2a
BNE trap452
JMP notrap452
trap452:
JMP trap452
notrap452:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #06
BCS trap453
CMPZ #2a
BNE trap453
JMP notrap453
trap453:
JMP trap453
notrap453:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #07
BCS trap454
CMPX #2b
BNE trap454
JMP notrap454
trap454:
JMP trap454
notrap454:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #07
BCS trap455
CMPY #2b
BNE trap455
JMP notrap455
trap455:
JMP trap455
notrap455:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #07
BCS trap456
CMPZ #2b
BNE trap456
JMP notrap456
trap456:
JMP trap456
notrap456:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #08
BCS trap457
CMPX #2c
BNE trap457
JMP notrap457
trap457:
JMP trap457
notrap457:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #08
BCS trap458
CMPY #2c
BNE trap458
JMP notrap458
trap458:
JMP trap458
notrap458:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #08
BCS trap459
CMPZ #2c
BNE trap459
JMP notrap459
trap459:
JMP trap459
notrap459:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #09
BCS trap460
CMPX #2d
BNE trap460
JMP notrap460
trap460:
JMP trap460
notrap460:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #09
BCS trap461
CMPY #2d
BNE trap461
JMP notrap461
trap461:
JMP trap461
notrap461:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #09
BCS trap462
CMPZ #2d
BNE trap462
JMP notrap462
trap462:
JMP trap462
notrap462:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #0a
BCS trap463
CMPX #2e
BNE trap463
JMP notrap463
trap463:
JMP trap463
notrap463:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #0a
BCS trap464
CMPY #2e
BNE trap464
JMP notrap464
trap464:
JMP trap464
notrap464:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #0a
BCS trap465
CMPZ #2e
BNE trap465
JMP notrap465
trap465:
JMP trap465
notrap465:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #0b
BCS trap466
CMPX #2f
BNE trap466
JMP notrap466
trap466:
JMP trap466
notrap466:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #0b
BCS trap467
CMPY #2f
BNE trap467
JMP notrap467
trap467:
JMP trap467
notrap467:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #0b
BCS trap468
CMPZ #2f
BNE trap468
JMP notrap468
trap468:
JMP trap468
notrap468:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #0c
BCS trap469
CMPX #30
BNE trap469
JMP notrap469
trap469:
JMP trap469
notrap469:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #0c
BCS trap470
CMPY #30
BNE trap470
JMP notrap470
trap470:
JMP trap470
notrap470:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #0c
BCS trap471
CMPZ #30
BNE trap471
JMP notrap471
trap471:
JMP trap471
notrap471:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #0d
BCS trap472
CMPX #31
BNE trap472
JMP notrap472
trap472:
JMP trap472
notrap472:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #0d
BCS trap473
CMPY #31
BNE trap473
JMP notrap473
trap473:
JMP trap473
notrap473:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #0d
BCS trap474
CMPZ #31
BNE trap474
JMP notrap474
trap474:
JMP trap474
notrap474:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #0e
BCS trap475
CMPX #32
BNE trap475
JMP notrap475
trap475:
JMP trap475
notrap475:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #0e
BCS trap476
CMPY #32
BNE trap476
JMP notrap476
trap476:
JMP trap476
notrap476:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #0e
BCS trap477
CMPZ #32
BNE trap477
JMP notrap477
trap477:
JMP trap477
notrap477:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #24
ADDX #0f
BCS trap478
CMPX #33
BNE trap478
JMP notrap478
trap478:
JMP trap478
notrap478:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #24
ADDY #0f
BCS trap479
CMPY #33
BNE trap479
JMP notrap479
trap479:
JMP trap479
notrap479:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #24
ADDZ #0f
BCS trap480
CMPZ #33
BNE trap480
JMP notrap480
trap480:
JMP trap480
notrap480:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #00
BCS trap481
CMPX #28
BNE trap481
JMP notrap481
trap481:
JMP trap481
notrap481:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #00
BCS trap482
CMPY #28
BNE trap482
JMP notrap482
trap482:
JMP trap482
notrap482:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #00
BCS trap483
CMPZ #28
BNE trap483
JMP notrap483
trap483:
JMP trap483
notrap483:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #01
BCS trap484
CMPX #29
BNE trap484
JMP notrap484
trap484:
JMP trap484
notrap484:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #01
BCS trap485
CMPY #29
BNE trap485
JMP notrap485
trap485:
JMP trap485
notrap485:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #01
BCS trap486
CMPZ #29
BNE trap486
JMP notrap486
trap486:
JMP trap486
notrap486:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #02
BCS trap487
CMPX #2a
BNE trap487
JMP notrap487
trap487:
JMP trap487
notrap487:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #02
BCS trap488
CMPY #2a
BNE trap488
JMP notrap488
trap488:
JMP trap488
notrap488:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #02
BCS trap489
CMPZ #2a
BNE trap489
JMP notrap489
trap489:
JMP trap489
notrap489:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #03
BCS trap490
CMPX #2b
BNE trap490
JMP notrap490
trap490:
JMP trap490
notrap490:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #03
BCS trap491
CMPY #2b
BNE trap491
JMP notrap491
trap491:
JMP trap491
notrap491:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #03
BCS trap492
CMPZ #2b
BNE trap492
JMP notrap492
trap492:
JMP trap492
notrap492:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #04
BCS trap493
CMPX #2c
BNE trap493
JMP notrap493
trap493:
JMP trap493
notrap493:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #04
BCS trap494
CMPY #2c
BNE trap494
JMP notrap494
trap494:
JMP trap494
notrap494:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #04
BCS trap495
CMPZ #2c
BNE trap495
JMP notrap495
trap495:
JMP trap495
notrap495:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #05
BCS trap496
CMPX #2d
BNE trap496
JMP notrap496
trap496:
JMP trap496
notrap496:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #05
BCS trap497
CMPY #2d
BNE trap497
JMP notrap497
trap497:
JMP trap497
notrap497:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #05
BCS trap498
CMPZ #2d
BNE trap498
JMP notrap498
trap498:
JMP trap498
notrap498:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #06
BCS trap499
CMPX #2e
BNE trap499
JMP notrap499
trap499:
JMP trap499
notrap499:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #06
BCS trap500
CMPY #2e
BNE trap500
JMP notrap500
trap500:
JMP trap500
notrap500:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #06
BCS trap501
CMPZ #2e
BNE trap501
JMP notrap501
trap501:
JMP trap501
notrap501:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #07
BCS trap502
CMPX #2f
BNE trap502
JMP notrap502
trap502:
JMP trap502
notrap502:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #07
BCS trap503
CMPY #2f
BNE trap503
JMP notrap503
trap503:
JMP trap503
notrap503:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #07
BCS trap504
CMPZ #2f
BNE trap504
JMP notrap504
trap504:
JMP trap504
notrap504:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #08
BCS trap505
CMPX #30
BNE trap505
JMP notrap505
trap505:
JMP trap505
notrap505:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #08
BCS trap506
CMPY #30
BNE trap506
JMP notrap506
trap506:
JMP trap506
notrap506:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #08
BCS trap507
CMPZ #30
BNE trap507
JMP notrap507
trap507:
JMP trap507
notrap507:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #09
BCS trap508
CMPX #31
BNE trap508
JMP notrap508
trap508:
JMP trap508
notrap508:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #09
BCS trap509
CMPY #31
BNE trap509
JMP notrap509
trap509:
JMP trap509
notrap509:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #09
BCS trap510
CMPZ #31
BNE trap510
JMP notrap510
trap510:
JMP trap510
notrap510:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #0a
BCS trap511
CMPX #32
BNE trap511
JMP notrap511
trap511:
JMP trap511
notrap511:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #0a
BCS trap512
CMPY #32
BNE trap512
JMP notrap512
trap512:
JMP trap512
notrap512:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #0a
BCS trap513
CMPZ #32
BNE trap513
JMP notrap513
trap513:
JMP trap513
notrap513:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #0b
BCS trap514
CMPX #33
BNE trap514
JMP notrap514
trap514:
JMP trap514
notrap514:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #0b
BCS trap515
CMPY #33
BNE trap515
JMP notrap515
trap515:
JMP trap515
notrap515:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #0b
BCS trap516
CMPZ #33
BNE trap516
JMP notrap516
trap516:
JMP trap516
notrap516:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #0c
BCS trap517
CMPX #34
BNE trap517
JMP notrap517
trap517:
JMP trap517
notrap517:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #0c
BCS trap518
CMPY #34
BNE trap518
JMP notrap518
trap518:
JMP trap518
notrap518:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #0c
BCS trap519
CMPZ #34
BNE trap519
JMP notrap519
trap519:
JMP trap519
notrap519:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #0d
BCS trap520
CMPX #35
BNE trap520
JMP notrap520
trap520:
JMP trap520
notrap520:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #0d
BCS trap521
CMPY #35
BNE trap521
JMP notrap521
trap521:
JMP trap521
notrap521:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #0d
BCS trap522
CMPZ #35
BNE trap522
JMP notrap522
trap522:
JMP trap522
notrap522:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #0e
BCS trap523
CMPX #36
BNE trap523
JMP notrap523
trap523:
JMP trap523
notrap523:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #0e
BCS trap524
CMPY #36
BNE trap524
JMP notrap524
trap524:
JMP trap524
notrap524:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #0e
BCS trap525
CMPZ #36
BNE trap525
JMP notrap525
trap525:
JMP trap525
notrap525:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #28
ADDX #0f
BCS trap526
CMPX #37
BNE trap526
JMP notrap526
trap526:
JMP trap526
notrap526:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #28
ADDY #0f
BCS trap527
CMPY #37
BNE trap527
JMP notrap527
trap527:
JMP trap527
notrap527:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #28
ADDZ #0f
BCS trap528
CMPZ #37
BNE trap528
JMP notrap528
trap528:
JMP trap528
notrap528:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #00
BCS trap529
CMPX #2c
BNE trap529
JMP notrap529
trap529:
JMP trap529
notrap529:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #00
BCS trap530
CMPY #2c
BNE trap530
JMP notrap530
trap530:
JMP trap530
notrap530:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #00
BCS trap531
CMPZ #2c
BNE trap531
JMP notrap531
trap531:
JMP trap531
notrap531:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #01
BCS trap532
CMPX #2d
BNE trap532
JMP notrap532
trap532:
JMP trap532
notrap532:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #01
BCS trap533
CMPY #2d
BNE trap533
JMP notrap533
trap533:
JMP trap533
notrap533:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #01
BCS trap534
CMPZ #2d
BNE trap534
JMP notrap534
trap534:
JMP trap534
notrap534:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #02
BCS trap535
CMPX #2e
BNE trap535
JMP notrap535
trap535:
JMP trap535
notrap535:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #02
BCS trap536
CMPY #2e
BNE trap536
JMP notrap536
trap536:
JMP trap536
notrap536:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #02
BCS trap537
CMPZ #2e
BNE trap537
JMP notrap537
trap537:
JMP trap537
notrap537:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #03
BCS trap538
CMPX #2f
BNE trap538
JMP notrap538
trap538:
JMP trap538
notrap538:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #03
BCS trap539
CMPY #2f
BNE trap539
JMP notrap539
trap539:
JMP trap539
notrap539:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #03
BCS trap540
CMPZ #2f
BNE trap540
JMP notrap540
trap540:
JMP trap540
notrap540:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #04
BCS trap541
CMPX #30
BNE trap541
JMP notrap541
trap541:
JMP trap541
notrap541:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #04
BCS trap542
CMPY #30
BNE trap542
JMP notrap542
trap542:
JMP trap542
notrap542:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #04
BCS trap543
CMPZ #30
BNE trap543
JMP notrap543
trap543:
JMP trap543
notrap543:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #05
BCS trap544
CMPX #31
BNE trap544
JMP notrap544
trap544:
JMP trap544
notrap544:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #05
BCS trap545
CMPY #31
BNE trap545
JMP notrap545
trap545:
JMP trap545
notrap545:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #05
BCS trap546
CMPZ #31
BNE trap546
JMP notrap546
trap546:
JMP trap546
notrap546:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #06
BCS trap547
CMPX #32
BNE trap547
JMP notrap547
trap547:
JMP trap547
notrap547:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #06
BCS trap548
CMPY #32
BNE trap548
JMP notrap548
trap548:
JMP trap548
notrap548:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #06
BCS trap549
CMPZ #32
BNE trap549
JMP notrap549
trap549:
JMP trap549
notrap549:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #07
BCS trap550
CMPX #33
BNE trap550
JMP notrap550
trap550:
JMP trap550
notrap550:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #07
BCS trap551
CMPY #33
BNE trap551
JMP notrap551
trap551:
JMP trap551
notrap551:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #07
BCS trap552
CMPZ #33
BNE trap552
JMP notrap552
trap552:
JMP trap552
notrap552:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #08
BCS trap553
CMPX #34
BNE trap553
JMP notrap553
trap553:
JMP trap553
notrap553:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #08
BCS trap554
CMPY #34
BNE trap554
JMP notrap554
trap554:
JMP trap554
notrap554:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #08
BCS trap555
CMPZ #34
BNE trap555
JMP notrap555
trap555:
JMP trap555
notrap555:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #09
BCS trap556
CMPX #35
BNE trap556
JMP notrap556
trap556:
JMP trap556
notrap556:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #09
BCS trap557
CMPY #35
BNE trap557
JMP notrap557
trap557:
JMP trap557
notrap557:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #09
BCS trap558
CMPZ #35
BNE trap558
JMP notrap558
trap558:
JMP trap558
notrap558:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #0a
BCS trap559
CMPX #36
BNE trap559
JMP notrap559
trap559:
JMP trap559
notrap559:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #0a
BCS trap560
CMPY #36
BNE trap560
JMP notrap560
trap560:
JMP trap560
notrap560:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #0a
BCS trap561
CMPZ #36
BNE trap561
JMP notrap561
trap561:
JMP trap561
notrap561:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #0b
BCS trap562
CMPX #37
BNE trap562
JMP notrap562
trap562:
JMP trap562
notrap562:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #0b
BCS trap563
CMPY #37
BNE trap563
JMP notrap563
trap563:
JMP trap563
notrap563:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #0b
BCS trap564
CMPZ #37
BNE trap564
JMP notrap564
trap564:
JMP trap564
notrap564:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #0c
BCS trap565
CMPX #38
BNE trap565
JMP notrap565
trap565:
JMP trap565
notrap565:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #0c
BCS trap566
CMPY #38
BNE trap566
JMP notrap566
trap566:
JMP trap566
notrap566:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #0c
BCS trap567
CMPZ #38
BNE trap567
JMP notrap567
trap567:
JMP trap567
notrap567:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #0d
BCS trap568
CMPX #39
BNE trap568
JMP notrap568
trap568:
JMP trap568
notrap568:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #0d
BCS trap569
CMPY #39
BNE trap569
JMP notrap569
trap569:
JMP trap569
notrap569:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #0d
BCS trap570
CMPZ #39
BNE trap570
JMP notrap570
trap570:
JMP trap570
notrap570:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #0e
BCS trap571
CMPX #3a
BNE trap571
JMP notrap571
trap571:
JMP trap571
notrap571:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #0e
BCS trap572
CMPY #3a
BNE trap572
JMP notrap572
trap572:
JMP trap572
notrap572:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #0e
BCS trap573
CMPZ #3a
BNE trap573
JMP notrap573
trap573:
JMP trap573
notrap573:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #2c
ADDX #0f
BCS trap574
CMPX #3b
BNE trap574
JMP notrap574
trap574:
JMP trap574
notrap574:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #2c
ADDY #0f
BCS trap575
CMPY #3b
BNE trap575
JMP notrap575
trap575:
JMP trap575
notrap575:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #2c
ADDZ #0f
BCS trap576
CMPZ #3b
BNE trap576
JMP notrap576
trap576:
JMP trap576
notrap576:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #00
BCS trap577
CMPX #30
BNE trap577
JMP notrap577
trap577:
JMP trap577
notrap577:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #00
BCS trap578
CMPY #30
BNE trap578
JMP notrap578
trap578:
JMP trap578
notrap578:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #00
BCS trap579
CMPZ #30
BNE trap579
JMP notrap579
trap579:
JMP trap579
notrap579:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #01
BCS trap580
CMPX #31
BNE trap580
JMP notrap580
trap580:
JMP trap580
notrap580:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #01
BCS trap581
CMPY #31
BNE trap581
JMP notrap581
trap581:
JMP trap581
notrap581:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #01
BCS trap582
CMPZ #31
BNE trap582
JMP notrap582
trap582:
JMP trap582
notrap582:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #02
BCS trap583
CMPX #32
BNE trap583
JMP notrap583
trap583:
JMP trap583
notrap583:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #02
BCS trap584
CMPY #32
BNE trap584
JMP notrap584
trap584:
JMP trap584
notrap584:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #02
BCS trap585
CMPZ #32
BNE trap585
JMP notrap585
trap585:
JMP trap585
notrap585:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #03
BCS trap586
CMPX #33
BNE trap586
JMP notrap586
trap586:
JMP trap586
notrap586:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #03
BCS trap587
CMPY #33
BNE trap587
JMP notrap587
trap587:
JMP trap587
notrap587:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #03
BCS trap588
CMPZ #33
BNE trap588
JMP notrap588
trap588:
JMP trap588
notrap588:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #04
BCS trap589
CMPX #34
BNE trap589
JMP notrap589
trap589:
JMP trap589
notrap589:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #04
BCS trap590
CMPY #34
BNE trap590
JMP notrap590
trap590:
JMP trap590
notrap590:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #04
BCS trap591
CMPZ #34
BNE trap591
JMP notrap591
trap591:
JMP trap591
notrap591:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #05
BCS trap592
CMPX #35
BNE trap592
JMP notrap592
trap592:
JMP trap592
notrap592:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #05
BCS trap593
CMPY #35
BNE trap593
JMP notrap593
trap593:
JMP trap593
notrap593:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #05
BCS trap594
CMPZ #35
BNE trap594
JMP notrap594
trap594:
JMP trap594
notrap594:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #06
BCS trap595
CMPX #36
BNE trap595
JMP notrap595
trap595:
JMP trap595
notrap595:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #06
BCS trap596
CMPY #36
BNE trap596
JMP notrap596
trap596:
JMP trap596
notrap596:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #06
BCS trap597
CMPZ #36
BNE trap597
JMP notrap597
trap597:
JMP trap597
notrap597:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #07
BCS trap598
CMPX #37
BNE trap598
JMP notrap598
trap598:
JMP trap598
notrap598:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #07
BCS trap599
CMPY #37
BNE trap599
JMP notrap599
trap599:
JMP trap599
notrap599:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #07
BCS trap600
CMPZ #37
BNE trap600
JMP notrap600
trap600:
JMP trap600
notrap600:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #08
BCS trap601
CMPX #38
BNE trap601
JMP notrap601
trap601:
JMP trap601
notrap601:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #08
BCS trap602
CMPY #38
BNE trap602
JMP notrap602
trap602:
JMP trap602
notrap602:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #08
BCS trap603
CMPZ #38
BNE trap603
JMP notrap603
trap603:
JMP trap603
notrap603:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #09
BCS trap604
CMPX #39
BNE trap604
JMP notrap604
trap604:
JMP trap604
notrap604:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #09
BCS trap605
CMPY #39
BNE trap605
JMP notrap605
trap605:
JMP trap605
notrap605:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #09
BCS trap606
CMPZ #39
BNE trap606
JMP notrap606
trap606:
JMP trap606
notrap606:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #0a
BCS trap607
CMPX #3a
BNE trap607
JMP notrap607
trap607:
JMP trap607
notrap607:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #0a
BCS trap608
CMPY #3a
BNE trap608
JMP notrap608
trap608:
JMP trap608
notrap608:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #0a
BCS trap609
CMPZ #3a
BNE trap609
JMP notrap609
trap609:
JMP trap609
notrap609:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #0b
BCS trap610
CMPX #3b
BNE trap610
JMP notrap610
trap610:
JMP trap610
notrap610:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #0b
BCS trap611
CMPY #3b
BNE trap611
JMP notrap611
trap611:
JMP trap611
notrap611:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #0b
BCS trap612
CMPZ #3b
BNE trap612
JMP notrap612
trap612:
JMP trap612
notrap612:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #0c
BCS trap613
CMPX #3c
BNE trap613
JMP notrap613
trap613:
JMP trap613
notrap613:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #0c
BCS trap614
CMPY #3c
BNE trap614
JMP notrap614
trap614:
JMP trap614
notrap614:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #0c
BCS trap615
CMPZ #3c
BNE trap615
JMP notrap615
trap615:
JMP trap615
notrap615:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #0d
BCS trap616
CMPX #3d
BNE trap616
JMP notrap616
trap616:
JMP trap616
notrap616:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #0d
BCS trap617
CMPY #3d
BNE trap617
JMP notrap617
trap617:
JMP trap617
notrap617:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #0d
BCS trap618
CMPZ #3d
BNE trap618
JMP notrap618
trap618:
JMP trap618
notrap618:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #0e
BCS trap619
CMPX #3e
BNE trap619
JMP notrap619
trap619:
JMP trap619
notrap619:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #0e
BCS trap620
CMPY #3e
BNE trap620
JMP notrap620
trap620:
JMP trap620
notrap620:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #0e
BCS trap621
CMPZ #3e
BNE trap621
JMP notrap621
trap621:
JMP trap621
notrap621:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #30
ADDX #0f
BCS trap622
CMPX #3f
BNE trap622
JMP notrap622
trap622:
JMP trap622
notrap622:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #30
ADDY #0f
BCS trap623
CMPY #3f
BNE trap623
JMP notrap623
trap623:
JMP trap623
notrap623:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #30
ADDZ #0f
BCS trap624
CMPZ #3f
BNE trap624
JMP notrap624
trap624:
JMP trap624
notrap624:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #00
BCS trap625
CMPX #34
BNE trap625
JMP notrap625
trap625:
JMP trap625
notrap625:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #00
BCS trap626
CMPY #34
BNE trap626
JMP notrap626
trap626:
JMP trap626
notrap626:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #00
BCS trap627
CMPZ #34
BNE trap627
JMP notrap627
trap627:
JMP trap627
notrap627:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #01
BCS trap628
CMPX #35
BNE trap628
JMP notrap628
trap628:
JMP trap628
notrap628:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #01
BCS trap629
CMPY #35
BNE trap629
JMP notrap629
trap629:
JMP trap629
notrap629:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #01
BCS trap630
CMPZ #35
BNE trap630
JMP notrap630
trap630:
JMP trap630
notrap630:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #02
BCS trap631
CMPX #36
BNE trap631
JMP notrap631
trap631:
JMP trap631
notrap631:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #02
BCS trap632
CMPY #36
BNE trap632
JMP notrap632
trap632:
JMP trap632
notrap632:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #02
BCS trap633
CMPZ #36
BNE trap633
JMP notrap633
trap633:
JMP trap633
notrap633:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #03
BCS trap634
CMPX #37
BNE trap634
JMP notrap634
trap634:
JMP trap634
notrap634:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #03
BCS trap635
CMPY #37
BNE trap635
JMP notrap635
trap635:
JMP trap635
notrap635:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #03
BCS trap636
CMPZ #37
BNE trap636
JMP notrap636
trap636:
JMP trap636
notrap636:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #04
BCS trap637
CMPX #38
BNE trap637
JMP notrap637
trap637:
JMP trap637
notrap637:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #04
BCS trap638
CMPY #38
BNE trap638
JMP notrap638
trap638:
JMP trap638
notrap638:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #04
BCS trap639
CMPZ #38
BNE trap639
JMP notrap639
trap639:
JMP trap639
notrap639:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #05
BCS trap640
CMPX #39
BNE trap640
JMP notrap640
trap640:
JMP trap640
notrap640:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #05
BCS trap641
CMPY #39
BNE trap641
JMP notrap641
trap641:
JMP trap641
notrap641:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #05
BCS trap642
CMPZ #39
BNE trap642
JMP notrap642
trap642:
JMP trap642
notrap642:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #06
BCS trap643
CMPX #3a
BNE trap643
JMP notrap643
trap643:
JMP trap643
notrap643:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #06
BCS trap644
CMPY #3a
BNE trap644
JMP notrap644
trap644:
JMP trap644
notrap644:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #06
BCS trap645
CMPZ #3a
BNE trap645
JMP notrap645
trap645:
JMP trap645
notrap645:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #07
BCS trap646
CMPX #3b
BNE trap646
JMP notrap646
trap646:
JMP trap646
notrap646:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #07
BCS trap647
CMPY #3b
BNE trap647
JMP notrap647
trap647:
JMP trap647
notrap647:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #07
BCS trap648
CMPZ #3b
BNE trap648
JMP notrap648
trap648:
JMP trap648
notrap648:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #08
BCS trap649
CMPX #3c
BNE trap649
JMP notrap649
trap649:
JMP trap649
notrap649:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #08
BCS trap650
CMPY #3c
BNE trap650
JMP notrap650
trap650:
JMP trap650
notrap650:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #08
BCS trap651
CMPZ #3c
BNE trap651
JMP notrap651
trap651:
JMP trap651
notrap651:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #09
BCS trap652
CMPX #3d
BNE trap652
JMP notrap652
trap652:
JMP trap652
notrap652:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #09
BCS trap653
CMPY #3d
BNE trap653
JMP notrap653
trap653:
JMP trap653
notrap653:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #09
BCS trap654
CMPZ #3d
BNE trap654
JMP notrap654
trap654:
JMP trap654
notrap654:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #0a
BCS trap655
CMPX #3e
BNE trap655
JMP notrap655
trap655:
JMP trap655
notrap655:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #0a
BCS trap656
CMPY #3e
BNE trap656
JMP notrap656
trap656:
JMP trap656
notrap656:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #0a
BCS trap657
CMPZ #3e
BNE trap657
JMP notrap657
trap657:
JMP trap657
notrap657:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #0b
BCS trap658
CMPX #3f
BNE trap658
JMP notrap658
trap658:
JMP trap658
notrap658:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #0b
BCS trap659
CMPY #3f
BNE trap659
JMP notrap659
trap659:
JMP trap659
notrap659:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #0b
BCS trap660
CMPZ #3f
BNE trap660
JMP notrap660
trap660:
JMP trap660
notrap660:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #0c
BCS trap661
CMPX #40
BNE trap661
JMP notrap661
trap661:
JMP trap661
notrap661:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #0c
BCS trap662
CMPY #40
BNE trap662
JMP notrap662
trap662:
JMP trap662
notrap662:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #0c
BCS trap663
CMPZ #40
BNE trap663
JMP notrap663
trap663:
JMP trap663
notrap663:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #0d
BCS trap664
CMPX #41
BNE trap664
JMP notrap664
trap664:
JMP trap664
notrap664:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #0d
BCS trap665
CMPY #41
BNE trap665
JMP notrap665
trap665:
JMP trap665
notrap665:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #0d
BCS trap666
CMPZ #41
BNE trap666
JMP notrap666
trap666:
JMP trap666
notrap666:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #0e
BCS trap667
CMPX #42
BNE trap667
JMP notrap667
trap667:
JMP trap667
notrap667:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #0e
BCS trap668
CMPY #42
BNE trap668
JMP notrap668
trap668:
JMP trap668
notrap668:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #0e
BCS trap669
CMPZ #42
BNE trap669
JMP notrap669
trap669:
JMP trap669
notrap669:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #34
ADDX #0f
BCS trap670
CMPX #43
BNE trap670
JMP notrap670
trap670:
JMP trap670
notrap670:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #34
ADDY #0f
BCS trap671
CMPY #43
BNE trap671
JMP notrap671
trap671:
JMP trap671
notrap671:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #34
ADDZ #0f
BCS trap672
CMPZ #43
BNE trap672
JMP notrap672
trap672:
JMP trap672
notrap672:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #00
BCS trap673
CMPX #38
BNE trap673
JMP notrap673
trap673:
JMP trap673
notrap673:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #00
BCS trap674
CMPY #38
BNE trap674
JMP notrap674
trap674:
JMP trap674
notrap674:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #00
BCS trap675
CMPZ #38
BNE trap675
JMP notrap675
trap675:
JMP trap675
notrap675:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #01
BCS trap676
CMPX #39
BNE trap676
JMP notrap676
trap676:
JMP trap676
notrap676:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #01
BCS trap677
CMPY #39
BNE trap677
JMP notrap677
trap677:
JMP trap677
notrap677:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #01
BCS trap678
CMPZ #39
BNE trap678
JMP notrap678
trap678:
JMP trap678
notrap678:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #02
BCS trap679
CMPX #3a
BNE trap679
JMP notrap679
trap679:
JMP trap679
notrap679:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #02
BCS trap680
CMPY #3a
BNE trap680
JMP notrap680
trap680:
JMP trap680
notrap680:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #02
BCS trap681
CMPZ #3a
BNE trap681
JMP notrap681
trap681:
JMP trap681
notrap681:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #03
BCS trap682
CMPX #3b
BNE trap682
JMP notrap682
trap682:
JMP trap682
notrap682:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #03
BCS trap683
CMPY #3b
BNE trap683
JMP notrap683
trap683:
JMP trap683
notrap683:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #03
BCS trap684
CMPZ #3b
BNE trap684
JMP notrap684
trap684:
JMP trap684
notrap684:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #04
BCS trap685
CMPX #3c
BNE trap685
JMP notrap685
trap685:
JMP trap685
notrap685:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #04
BCS trap686
CMPY #3c
BNE trap686
JMP notrap686
trap686:
JMP trap686
notrap686:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #04
BCS trap687
CMPZ #3c
BNE trap687
JMP notrap687
trap687:
JMP trap687
notrap687:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #05
BCS trap688
CMPX #3d
BNE trap688
JMP notrap688
trap688:
JMP trap688
notrap688:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #05
BCS trap689
CMPY #3d
BNE trap689
JMP notrap689
trap689:
JMP trap689
notrap689:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #05
BCS trap690
CMPZ #3d
BNE trap690
JMP notrap690
trap690:
JMP trap690
notrap690:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #06
BCS trap691
CMPX #3e
BNE trap691
JMP notrap691
trap691:
JMP trap691
notrap691:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #06
BCS trap692
CMPY #3e
BNE trap692
JMP notrap692
trap692:
JMP trap692
notrap692:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #06
BCS trap693
CMPZ #3e
BNE trap693
JMP notrap693
trap693:
JMP trap693
notrap693:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #07
BCS trap694
CMPX #3f
BNE trap694
JMP notrap694
trap694:
JMP trap694
notrap694:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #07
BCS trap695
CMPY #3f
BNE trap695
JMP notrap695
trap695:
JMP trap695
notrap695:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #07
BCS trap696
CMPZ #3f
BNE trap696
JMP notrap696
trap696:
JMP trap696
notrap696:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #08
BCS trap697
CMPX #40
BNE trap697
JMP notrap697
trap697:
JMP trap697
notrap697:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #08
BCS trap698
CMPY #40
BNE trap698
JMP notrap698
trap698:
JMP trap698
notrap698:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #08
BCS trap699
CMPZ #40
BNE trap699
JMP notrap699
trap699:
JMP trap699
notrap699:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #09
BCS trap700
CMPX #41
BNE trap700
JMP notrap700
trap700:
JMP trap700
notrap700:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #09
BCS trap701
CMPY #41
BNE trap701
JMP notrap701
trap701:
JMP trap701
notrap701:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #09
BCS trap702
CMPZ #41
BNE trap702
JMP notrap702
trap702:
JMP trap702
notrap702:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #0a
BCS trap703
CMPX #42
BNE trap703
JMP notrap703
trap703:
JMP trap703
notrap703:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #0a
BCS trap704
CMPY #42
BNE trap704
JMP notrap704
trap704:
JMP trap704
notrap704:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #0a
BCS trap705
CMPZ #42
BNE trap705
JMP notrap705
trap705:
JMP trap705
notrap705:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #0b
BCS trap706
CMPX #43
BNE trap706
JMP notrap706
trap706:
JMP trap706
notrap706:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #0b
BCS trap707
CMPY #43
BNE trap707
JMP notrap707
trap707:
JMP trap707
notrap707:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #0b
BCS trap708
CMPZ #43
BNE trap708
JMP notrap708
trap708:
JMP trap708
notrap708:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #0c
BCS trap709
CMPX #44
BNE trap709
JMP notrap709
trap709:
JMP trap709
notrap709:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #0c
BCS trap710
CMPY #44
BNE trap710
JMP notrap710
trap710:
JMP trap710
notrap710:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #0c
BCS trap711
CMPZ #44
BNE trap711
JMP notrap711
trap711:
JMP trap711
notrap711:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #0d
BCS trap712
CMPX #45
BNE trap712
JMP notrap712
trap712:
JMP trap712
notrap712:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #0d
BCS trap713
CMPY #45
BNE trap713
JMP notrap713
trap713:
JMP trap713
notrap713:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #0d
BCS trap714
CMPZ #45
BNE trap714
JMP notrap714
trap714:
JMP trap714
notrap714:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #0e
BCS trap715
CMPX #46
BNE trap715
JMP notrap715
trap715:
JMP trap715
notrap715:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #0e
BCS trap716
CMPY #46
BNE trap716
JMP notrap716
trap716:
JMP trap716
notrap716:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #0e
BCS trap717
CMPZ #46
BNE trap717
JMP notrap717
trap717:
JMP trap717
notrap717:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #38
ADDX #0f
BCS trap718
CMPX #47
BNE trap718
JMP notrap718
trap718:
JMP trap718
notrap718:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #38
ADDY #0f
BCS trap719
CMPY #47
BNE trap719
JMP notrap719
trap719:
JMP trap719
notrap719:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #38
ADDZ #0f
BCS trap720
CMPZ #47
BNE trap720
JMP notrap720
trap720:
JMP trap720
notrap720:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #00
BCS trap721
CMPX #3c
BNE trap721
JMP notrap721
trap721:
JMP trap721
notrap721:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #00
BCS trap722
CMPY #3c
BNE trap722
JMP notrap722
trap722:
JMP trap722
notrap722:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #00
BCS trap723
CMPZ #3c
BNE trap723
JMP notrap723
trap723:
JMP trap723
notrap723:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #01
BCS trap724
CMPX #3d
BNE trap724
JMP notrap724
trap724:
JMP trap724
notrap724:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #01
BCS trap725
CMPY #3d
BNE trap725
JMP notrap725
trap725:
JMP trap725
notrap725:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #01
BCS trap726
CMPZ #3d
BNE trap726
JMP notrap726
trap726:
JMP trap726
notrap726:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #02
BCS trap727
CMPX #3e
BNE trap727
JMP notrap727
trap727:
JMP trap727
notrap727:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #02
BCS trap728
CMPY #3e
BNE trap728
JMP notrap728
trap728:
JMP trap728
notrap728:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #02
BCS trap729
CMPZ #3e
BNE trap729
JMP notrap729
trap729:
JMP trap729
notrap729:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #03
BCS trap730
CMPX #3f
BNE trap730
JMP notrap730
trap730:
JMP trap730
notrap730:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #03
BCS trap731
CMPY #3f
BNE trap731
JMP notrap731
trap731:
JMP trap731
notrap731:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #03
BCS trap732
CMPZ #3f
BNE trap732
JMP notrap732
trap732:
JMP trap732
notrap732:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #04
BCS trap733
CMPX #40
BNE trap733
JMP notrap733
trap733:
JMP trap733
notrap733:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #04
BCS trap734
CMPY #40
BNE trap734
JMP notrap734
trap734:
JMP trap734
notrap734:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #04
BCS trap735
CMPZ #40
BNE trap735
JMP notrap735
trap735:
JMP trap735
notrap735:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #05
BCS trap736
CMPX #41
BNE trap736
JMP notrap736
trap736:
JMP trap736
notrap736:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #05
BCS trap737
CMPY #41
BNE trap737
JMP notrap737
trap737:
JMP trap737
notrap737:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #05
BCS trap738
CMPZ #41
BNE trap738
JMP notrap738
trap738:
JMP trap738
notrap738:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #06
BCS trap739
CMPX #42
BNE trap739
JMP notrap739
trap739:
JMP trap739
notrap739:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #06
BCS trap740
CMPY #42
BNE trap740
JMP notrap740
trap740:
JMP trap740
notrap740:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #06
BCS trap741
CMPZ #42
BNE trap741
JMP notrap741
trap741:
JMP trap741
notrap741:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #07
BCS trap742
CMPX #43
BNE trap742
JMP notrap742
trap742:
JMP trap742
notrap742:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #07
BCS trap743
CMPY #43
BNE trap743
JMP notrap743
trap743:
JMP trap743
notrap743:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #07
BCS trap744
CMPZ #43
BNE trap744
JMP notrap744
trap744:
JMP trap744
notrap744:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #08
BCS trap745
CMPX #44
BNE trap745
JMP notrap745
trap745:
JMP trap745
notrap745:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #08
BCS trap746
CMPY #44
BNE trap746
JMP notrap746
trap746:
JMP trap746
notrap746:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #08
BCS trap747
CMPZ #44
BNE trap747
JMP notrap747
trap747:
JMP trap747
notrap747:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #09
BCS trap748
CMPX #45
BNE trap748
JMP notrap748
trap748:
JMP trap748
notrap748:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #09
BCS trap749
CMPY #45
BNE trap749
JMP notrap749
trap749:
JMP trap749
notrap749:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #09
BCS trap750
CMPZ #45
BNE trap750
JMP notrap750
trap750:
JMP trap750
notrap750:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #0a
BCS trap751
CMPX #46
BNE trap751
JMP notrap751
trap751:
JMP trap751
notrap751:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #0a
BCS trap752
CMPY #46
BNE trap752
JMP notrap752
trap752:
JMP trap752
notrap752:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #0a
BCS trap753
CMPZ #46
BNE trap753
JMP notrap753
trap753:
JMP trap753
notrap753:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #0b
BCS trap754
CMPX #47
BNE trap754
JMP notrap754
trap754:
JMP trap754
notrap754:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #0b
BCS trap755
CMPY #47
BNE trap755
JMP notrap755
trap755:
JMP trap755
notrap755:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #0b
BCS trap756
CMPZ #47
BNE trap756
JMP notrap756
trap756:
JMP trap756
notrap756:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #0c
BCS trap757
CMPX #48
BNE trap757
JMP notrap757
trap757:
JMP trap757
notrap757:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #0c
BCS trap758
CMPY #48
BNE trap758
JMP notrap758
trap758:
JMP trap758
notrap758:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #0c
BCS trap759
CMPZ #48
BNE trap759
JMP notrap759
trap759:
JMP trap759
notrap759:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #0d
BCS trap760
CMPX #49
BNE trap760
JMP notrap760
trap760:
JMP trap760
notrap760:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #0d
BCS trap761
CMPY #49
BNE trap761
JMP notrap761
trap761:
JMP trap761
notrap761:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #0d
BCS trap762
CMPZ #49
BNE trap762
JMP notrap762
trap762:
JMP trap762
notrap762:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #0e
BCS trap763
CMPX #4a
BNE trap763
JMP notrap763
trap763:
JMP trap763
notrap763:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #0e
BCS trap764
CMPY #4a
BNE trap764
JMP notrap764
trap764:
JMP trap764
notrap764:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #0e
BCS trap765
CMPZ #4a
BNE trap765
JMP notrap765
trap765:
JMP trap765
notrap765:
INC checksum
LDZ checksum
OUT0 Z

CLC
LDX #3c
ADDX #0f
BCS trap766
CMPX #4b
BNE trap766
JMP notrap766
trap766:
JMP trap766
notrap766:
INC checksum
LDX checksum
OUT0 X

CLC
LDY #3c
ADDY #0f
BCS trap767
CMPY #4b
BNE trap767
JMP notrap767
trap767:
JMP trap767
notrap767:
INC checksum
LDY checksum
OUT0 Y

CLC
LDZ #3c
ADDZ #0f
BCS trap768
CMPZ #4b
BNE trap768
JMP notrap768
trap768:
JMP trap768
notrap768:
INC checksum
LDZ checksum
OUT0 Z

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
