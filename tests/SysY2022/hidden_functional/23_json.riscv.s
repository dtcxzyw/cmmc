.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	200000000
.text
detect_item:
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a1
	sd s2, 16(sp)
	mv s2, a2
	sd s1, 8(sp)
	mv s1, a3
	sd ra, 0(sp)
	lw a1, 0(a3)
	mv a2, a0
	bgt s2, a1, label7
label180:
	mv a0, zero
	j label172
label83:
	addiw a3, a0, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a2, 0(a4)
	beq a2, a3, label84
	j label180
label293:
	li a0, 1
label172:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label7:
	lw a0, 0(s1)
	bgt s2, a0, label170
label185:
	bne a2, zero, label21
	lw a1, 0(s1)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label12
	j label983
label10:
	bne a2, zero, label21
	lw a1, 0(s1)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label12
	j label983
label12:
	li a1, 91
	bne a0, a1, label13
	li a0, 3
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label7
	j label180
label13:
	li a1, 34
	bne a0, a1, label14
	li a0, 2
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label7
	j label180
label21:
	li a1, 1
	bne a2, a1, label55
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 43
	xori a1, a1, 45
	sltiu a2, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label24
	j label1049
label55:
	li a0, 2
	bne a2, a0, label65
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label59
	j label362
label65:
	li a1, 3
	bne a2, a1, label66
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label165
	j label706
label170:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori a5, a0, 9
	xori a4, a0, 32
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	xori a5, a0, 10
	or a3, a3, a4
	sltiu a4, a5, 1
	xori a5, a0, 13
	or a3, a3, a4
	sltiu a4, a5, 1
	or a0, a3, a4
	beq a0, zero, label10
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label170
	j label185
label983:
	li a2, 4
	bgt s2, a1, label7
	j label180
label14:
	addiw a2, a0, -48
	xori a3, a0, 43
	sltiu a1, a2, 10
	sltiu a2, a3, 1
	xori a3, a0, 45
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label15
	li a0, 1
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label7
	j label180
label1049:
	addiw a0, a0, 1
	sw a0, 0(s1)
label24:
	bgt s2, a0, label26
	j label180
label362:
	lw a0, 0(s1)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label64
	j label1012
label59:
	lw a0, 0(s1)
	bgt s2, a0, label62
	j label180
label26:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label27
	j label180
label1012:
	bgt s2, a0, label62
	j label180
label64:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s1)
	ble s2, a0, label59
	lw a0, 0(s1)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label64
	j label1012
label27:
	ble s2, a1, label29
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label54
	j label991
label66:
	li a0, 4
	bne a2, a0, label67
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label93
label531:
	lw a1, 0(s1)
	ble s2, a1, label97
	j label551
label706:
	lw a1, 0(s1)
	ble s2, a1, label141
	j label710
label139:
	ble s2, a1, label141
label710:
	sh2add a2, a1, s0
	li a3, 93
	lw a0, 0(a2)
	bne a0, a3, label141
	j label376
label165:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a0, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a0, 13
	or a2, a2, a4
	sltiu a0, a3, 1
	or a2, a2, a0
	beq a2, zero, label139
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label165
	j label706
label141:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label142
	j label180
label142:
	lw a0, 0(s1)
	bgt s2, a0, label161
	j label720
label991:
	ble s2, a0, label32
	j label1009
label992:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label37
	j label994
label37:
	ble s2, a0, label293
	lw a1, 0(s1)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label293
label1000:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label44
	j label1001
label1009:
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label37
	j label992
label54:
	addiw a1, a0, 1
	sw a1, 0(s1)
	ble s2, a1, label29
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label54
	j label991
label994:
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label34
label996:
	ble s2, a0, label293
	lw a1, 0(s1)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label293
	j label1000
label62:
	lw a1, 0(s1)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label376
	j label180
label376:
	addiw a2, a1, 1
	li a0, 1
	sw a2, 0(s1)
	j label172
label720:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label152
	j label727
label145:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label152
	j label727
label152:
	lw a0, 0(s1)
	bgt s2, a0, label156
	j label752
label156:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a5, a0, 10
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	xori a4, a0, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a0, a2, a3
	beq a0, zero, label158
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label156
	j label752
label158:
	bgt s2, a1, label160
	j label180
label160:
	sh2add a2, a1, s0
	li a3, 93
	lw a0, 0(a2)
	beq a0, a3, label376
	j label180
label161:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label145
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label161
	j label720
label727:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label150
	j label141
label150:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label141
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label150
	j label141
label32:
	lw a0, 0(s1)
	ble s2, a0, label293
	lw a1, 0(s1)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label293
	j label1000
label29:
	lw a0, 0(s1)
	ble s2, a0, label32
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label37
	j label992
label67:
	li a0, 5
	bne a2, a0, label73
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label69
	j label180
label69:
	sh2add a3, a1, s0
	li a4, 116
	lw a0, 0(a3)
	beq a0, a4, label70
	j label180
label73:
	li a0, 6
	bne a2, a0, label74
	lw a0, 0(s1)
	addiw a1, a0, 4
	bgt s2, a1, label81
	j label180
label34:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label37
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label34
	j label996
label93:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a2, a2, a3
	xori a0, a0, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a0, 1
	or a2, a2, a3
	beq a2, zero, label95
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label93
	j label531
label95:
	ble s2, a1, label97
	j label551
label97:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label98
	j label180
label98:
	lw a0, 0(s1)
	bgt s2, a0, label101
	j label561
label551:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	bne a0, a2, label97
	j label376
label1001:
	sh2add a2, a0, s0
	li a1, 43
	lw a0, 0(a2)
	bne a0, a1, label42
	j label1064
label561:
	lw a0, 0(s1)
	bgt s2, a0, label105
	j label180
label101:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 10
	xori a3, a1, 9
	xori a4, a1, 32
	xori a1, a1, 13
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label103
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label101
	j label561
label103:
	bgt s2, a0, label105
	j label180
label15:
	li a1, 116
	bne a0, a1, label17
	li a0, 5
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label17:
	li a1, 102
	bne a0, a1, label19
	li a0, 6
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label44:
	ble s2, a0, label46
	j label319
label1065:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label49
label319:
	lw a0, 0(s1)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label49
	j label1065
label47:
	addiw a0, a1, 1
	sw a0, 0(s1)
label49:
	ble s2, a0, label293
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label47
	j label293
label46:
	lw a0, 0(s1)
	ble s2, a0, label293
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label47
	j label293
label74:
	li a0, 7
	bne a2, a0, label180
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label76
	j label180
label105:
	sh2add a3, a0, s0
	li a2, 58
	lw a1, 0(a3)
	beq a1, a2, label106
	j label180
label106:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label109
	j label111
label109:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label111
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label109
label111:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label112
	j label180
label81:
	sh2add a3, a0, s0
	li a4, 102
	lw a2, 0(a3)
	beq a2, a4, label82
	j label180
label82:
	addiw a3, a0, 1
	sh2add a4, a3, s0
	li a3, 97
	lw a2, 0(a4)
	beq a2, a3, label83
	j label180
label70:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 114
	lw a0, 0(a4)
	beq a0, a3, label71
	j label180
label1064:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label44
label42:
	lw a0, 0(s1)
	ble s2, a0, label46
	lw a0, 0(s1)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label49
	j label1065
label19:
	li a1, 110
	bne a0, a1, label180
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label76:
	sh2add a3, a1, s0
	li a4, 110
	lw a0, 0(a3)
	beq a0, a4, label77
	j label180
label71:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label72
	j label180
label72:
	sh2add a2, a2, s0
	li a3, 101
	lw a0, 0(a2)
	beq a0, a3, label436
	j label180
label112:
	lw a0, 0(s1)
	bgt s2, a0, label131
label617:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label117
	j label624
label115:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label117
label624:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label129
	j label97
label117:
	lw a0, 0(s1)
	bgt s2, a0, label121
label629:
	lw a1, 0(s1)
	bgt s2, a1, label125
	j label180
label131:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a1, 13
	or a2, a2, a4
	sltiu a4, a3, 1
	or a1, a2, a4
	beq a1, zero, label115
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label131
	j label617
label129:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 13
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	or a1, a2, a3
	beq a1, zero, label97
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label129
	j label97
label752:
	lw a1, 0(s1)
	bgt s2, a1, label160
	j label180
label77:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label78
	j label180
label78:
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a0, 0(a3)
	beq a0, a4, label79
	j label180
label79:
	sh2add a2, a2, s0
	li a3, 108
	lw a0, 0(a2)
	beq a0, a3, label436
	j label180
label436:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s1)
	j label172
label84:
	addiw a3, a0, 3
	sh2add a4, a3, s0
	li a3, 115
	lw a2, 0(a4)
	beq a2, a3, label85
	j label180
label85:
	sh2add a2, a1, s0
	li a3, 101
	lw a1, 0(a2)
	beq a1, a3, label86
	j label180
label86:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s1)
	j label172
label121:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a0, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a0, 13
	or a2, a2, a4
	sltiu a0, a3, 1
	or a2, a2, a0
	beq a2, zero, label123
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label121
	j label629
label123:
	bgt s2, a1, label125
	j label180
label125:
	sh2add a2, a1, s0
	li a3, 125
	lw a0, 0(a2)
	beq a0, a3, label376
	j label180
.globl main
main:
	addi sp, sp, -40
	sd s1, 8(sp)
	addi s1, sp, 0
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd ra, 16(sp)
	sw zero, 0(sp)
	jal getch
pcrel1242:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1242)
	li a1, 35
	beq a0, a1, label1160
	mv s2, zero
	j label1132
label1160:
	mv a0, zero
	mv s2, zero
	j label1143
label1132:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	beq a0, a1, label1135
	j label1132
label1141:
	lw a0, 0(sp)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	beq a2, zero, label1143
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1141
label1143:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
	bgt s2, a0, label1146
	beq a1, zero, label1150
label1149:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
label1151:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
label1135:
	lw a0, 0(sp)
	bgt s2, a0, label1141
	j label1143
label1146:
	lw a0, 0(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a4, a2, 9
	xori a5, a2, 32
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	xori a4, a2, 10
	or a3, a3, a5
	xori a2, a2, 13
	sltiu a5, a4, 1
	sltiu a4, a2, 1
	or a3, a3, a5
	or a3, a3, a4
	beq a3, zero, label1148
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1146
	beq a1, zero, label1150
	j label1149
label1148:
	beq a1, zero, label1150
	j label1149
label1150:
	li a0, 110
	jal putch
	li a0, 111
	jal putch
	li a0, 116
	jal putch
	li a0, 32
	jal putch
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	li a0, 1
	j label1151
