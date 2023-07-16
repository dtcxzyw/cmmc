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
	bgt s2, a1, label9
label180:
	mv a0, zero
	j label7
label121:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	beq a0, a2, label1016
	j label180
label7:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label302:
	li a0, 1
	j label7
label9:
	lw a0, 0(s1)
	bgt s2, a0, label172
	j label185
label12:
	bne a2, zero, label23
	lw a1, 0(s1)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label14
	j label983
label14:
	li a1, 91
	bne a0, a1, label15
	li a0, 3
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label9
	j label180
label15:
	li a1, 34
	bne a0, a1, label16
	li a0, 2
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label9
	j label180
label23:
	li a1, 1
	bne a2, a1, label57
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 43
	xori a1, a1, 45
	sltiu a2, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label25
	j label1049
label57:
	li a1, 2
	bne a2, a1, label58
	lw a2, 0(s1)
	addiw a0, a2, 1
	sw a0, 0(s1)
	ble s2, a0, label169
	j label793
label58:
	li a0, 3
	bne a2, a0, label59
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label158
	j label675
label59:
	li a0, 4
	bne a2, a0, label60
	lw a2, 0(s1)
	addiw a0, a2, 1
	sw a0, 0(s1)
	bgt s2, a0, label127
	j label500
label60:
	li a0, 5
	bne a2, a0, label68
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label62
	j label180
label68:
	li a1, 6
	bne a2, a1, label76
	lw a0, 0(s1)
	addiw a1, a0, 4
	bgt s2, a1, label70
	j label180
label76:
	li a1, 7
	bne a2, a1, label180
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label78
	j label180
label172:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori t0, a0, 10
	xori a4, a0, 9
	xori a5, a0, 32
	xori a0, a0, 13
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t0, 1
	or a3, a3, a5
	or a3, a3, a4
	sltiu a4, a0, 1
	or a3, a3, a4
	beq a3, zero, label12
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label172
label185:
	bne a2, zero, label23
	lw a1, 0(s1)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label14
label983:
	li a2, 4
	bgt s2, a1, label9
	j label180
label16:
	addiw a2, a0, -48
	xori a3, a0, 43
	sltiu a1, a2, 10
	sltiu a2, a3, 1
	xori a3, a0, 45
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label17
	li a0, 1
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label9
	j label180
label1049:
	addiw a0, a0, 1
	sw a0, 0(s1)
label25:
	bgt s2, a0, label27
	j label180
label27:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label28
	j label180
label793:
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label168
label1040:
	bgt s2, a0, label166
	j label180
label166:
	lw a1, 0(s1)
	li a2, 34
	sh2add a3, a1, s0
	lw a0, 0(a3)
	beq a0, a2, label1016
	j label180
label168:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s1)
	ble s2, a0, label169
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label168
	j label1040
label169:
	lw a0, 0(s1)
	bgt s2, a0, label166
	j label180
label28:
	ble s2, a1, label32
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label31
	j label989
label32:
	lw a0, 0(s1)
	ble s2, a0, label39
	j label275
label39:
	lw a0, 0(s1)
label40:
	ble s2, a0, label302
	j label301
label989:
	ble s2, a0, label39
	j label990
label31:
	addiw a1, a0, 1
	sw a1, 0(s1)
	ble s2, a1, label32
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label31
	j label989
label675:
	lw a1, 0(s1)
	ble s2, a1, label134
	j label679
label132:
	ble s2, a1, label134
	j label679
label158:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a0, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a0, a2, a3
	beq a0, zero, label132
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label158
	j label675
label134:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label135
	j label180
label135:
	lw a0, 0(s1)
	bgt s2, a0, label139
	j label689
label146:
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
	beq a1, zero, label134
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label146
	j label134
label990:
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label40
label992:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label40
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label36
label995:
	ble s2, a0, label302
	j label997
label1016:
	addiw a1, a1, 1
	li a0, 1
	sw a1, 0(s1)
	j label7
label689:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label148
	j label712
label139:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 10
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a1, a2, a3
	beq a1, zero, label141
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label139
	j label689
label141:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label148
label712:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label146
	j label134
label148:
	lw a0, 0(s1)
	bgt s2, a0, label152
	j label737
label275:
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label40
	j label992
label301:
	lw a1, 0(s1)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label302
	j label999
label679:
	sh2add a3, a1, s0
	li a2, 93
	lw a0, 0(a3)
	bne a0, a2, label134
	j label1016
label997:
	lw a1, 0(s1)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label302
label999:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label47
	j label1000
label500:
	lw a1, 0(s1)
	ble s2, a1, label88
label505:
	sh2add a2, a1, s0
	li a3, 125
	lw a0, 0(a2)
	bne a0, a3, label88
	j label1016
label127:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a5, a0, 10
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	or a2, a2, a3
	xori a3, a0, 13
	or a2, a2, a4
	sltiu a0, a3, 1
	or a2, a2, a0
	beq a2, zero, label86
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label127
	j label500
label1000:
	sh2add a1, a0, s0
	li a2, 43
	lw a0, 0(a1)
	bne a0, a2, label45
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label47
label45:
	lw a0, 0(s1)
	ble s2, a0, label54
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label49
label1004:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label302
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label52
	j label302
label49:
	ble s2, a0, label302
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label52
	j label302
label86:
	ble s2, a1, label88
	j label505
label36:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label40
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label36
	j label995
label88:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label89
	j label180
label52:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label302
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label52
	j label302
label47:
	ble s2, a0, label54
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label49
	j label1004
label54:
	lw a0, 0(s1)
	ble s2, a0, label302
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label52
	j label302
label89:
	lw a0, 0(s1)
	bgt s2, a0, label93
label515:
	lw a0, 0(s1)
	bgt s2, a0, label97
	j label180
label93:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 9
	xori a3, a1, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a1, 13
	or a2, a2, a4
	sltiu a4, a3, 1
	or a1, a2, a4
	beq a1, zero, label95
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label93
	j label515
label95:
	bgt s2, a0, label97
	j label180
label97:
	sh2add a3, a0, s0
	li a2, 58
	lw a1, 0(a3)
	beq a1, a2, label98
	j label180
label98:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label124
	j label101
label17:
	li a1, 116
	bne a0, a1, label19
	li a0, 5
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label19:
	li a1, 102
	bne a0, a1, label20
	j label22
label20:
	li a1, 110
	bne a0, a1, label180
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label22:
	li a0, 6
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label62:
	sh2add a3, a1, s0
	li a4, 116
	lw a0, 0(a3)
	beq a0, a4, label63
	j label180
label63:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 114
	lw a0, 0(a4)
	beq a0, a3, label64
	j label180
label64:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label65
	j label180
label70:
	sh2add a4, a0, s0
	li a3, 102
	lw a2, 0(a4)
	beq a2, a3, label71
	j label180
label71:
	addiw a3, a0, 1
	sh2add a4, a3, s0
	li a3, 97
	lw a2, 0(a4)
	beq a2, a3, label72
	j label180
label78:
	sh2add a4, a1, s0
	li a3, 110
	lw a0, 0(a4)
	beq a0, a3, label79
	j label180
label79:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label80
	j label180
label101:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label102
	j label180
label102:
	lw a0, 0(s1)
	bgt s2, a0, label106
label557:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label115
label580:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label113
	j label88
label124:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a5, a0, 10
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	or a2, a2, a3
	xori a3, a0, 13
	or a2, a2, a4
	sltiu a4, a3, 1
	or a0, a2, a4
	beq a0, zero, label101
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label124
	j label101
label113:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a5, a1, 10
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	or a2, a2, a3
	xori a3, a1, 13
	or a2, a2, a4
	sltiu a1, a3, 1
	or a2, a2, a1
	beq a2, zero, label88
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label113
	j label88
label106:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	xori a1, a1, 13
	sltiu a3, a4, 1
	or a2, a2, a3
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label108
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label106
	j label557
label108:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label115
	j label580
label115:
	lw a0, 0(s1)
	bgt s2, a0, label122
	j label605
label737:
	lw a1, 0(s1)
	bgt s2, a1, label156
	j label180
label152:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a2, a2, a3
	sltiu a3, a4, 1
	xori a4, a0, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a0, a2, a3
	beq a0, zero, label154
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label152
	j label737
label154:
	bgt s2, a1, label156
	j label180
label72:
	addiw a3, a0, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a2, 0(a4)
	beq a2, a3, label73
	j label180
label65:
	sh2add a3, a2, s0
	li a2, 101
	lw a0, 0(a3)
	beq a0, a2, label66
	j label180
label156:
	sh2add a3, a1, s0
	li a2, 93
	lw a0, 0(a3)
	beq a0, a2, label1016
	j label180
label66:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s1)
	j label7
label80:
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a0, 0(a3)
	beq a0, a4, label81
	j label180
label81:
	sh2add a3, a2, s0
	li a2, 108
	lw a0, 0(a3)
	beq a0, a2, label66
	j label180
label73:
	addiw a4, a0, 3
	sh2add a3, a4, s0
	li a4, 115
	lw a2, 0(a3)
	beq a2, a4, label74
	j label180
label74:
	sh2add a2, a1, s0
	li a3, 101
	lw a1, 0(a2)
	beq a1, a3, label75
	j label180
label75:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s1)
	j label7
label605:
	lw a1, 0(s1)
	bgt s2, a1, label121
	j label180
label122:
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
	beq a0, zero, label119
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label122
	j label605
label119:
	bgt s2, a1, label121
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
pcrel1244:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1244)
	li a1, 35
	beq a0, a1, label1162
	mv s2, zero
	j label1134
label1162:
	mv a0, zero
	mv s2, zero
	j label1145
label1134:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	beq a0, a1, label1137
	j label1134
label1143:
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
	beq a2, zero, label1145
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1143
label1145:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
	bgt s2, a0, label1148
	beq a1, zero, label1152
label1151:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
label1153:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
label1137:
	lw a0, 0(sp)
	bgt s2, a0, label1143
	j label1145
label1148:
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
	beq a3, zero, label1150
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1148
	beq a1, zero, label1152
	j label1151
label1150:
	beq a1, zero, label1152
	j label1151
label1152:
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
	j label1153
