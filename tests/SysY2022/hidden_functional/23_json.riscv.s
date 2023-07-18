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
label127:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a0, 0(a4)
	beq a0, a3, label128
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
	li a3, 123
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label14
	j label983
label14:
	li a1, 91
	bne a0, a1, label15
	li a0, 3
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
	j label1050
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
	li a3, 123
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label14
label983:
	li a2, 4
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
label1050:
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label25
label57:
	li a1, 2
	bne a2, a1, label58
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label171
	lw a0, 0(s1)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label167
	j label1041
label171:
	lw a0, 0(s1)
	bgt s2, a0, label170
	j label180
label58:
	li a0, 3
	bne a2, a0, label59
	lw a2, 0(s1)
	addiw a0, a2, 1
	sw a0, 0(s1)
	bgt s2, a0, label132
	j label675
label1041:
	bgt s2, a0, label170
	j label180
label167:
	xori a2, a1, 92
	addiw a3, a0, 1
	sltiu a1, a2, 1
	addw a0, a1, a3
	sw a0, 0(s1)
	ble s2, a0, label171
	lw a0, 0(s1)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label167
	j label1041
label28:
	ble s2, a1, label32
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label31
label990:
	ble s2, a0, label39
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label40
	j label993
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
	j label990
label32:
	lw a0, 0(s1)
	ble s2, a0, label39
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label40
label993:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label40
	j label994
label39:
	lw a0, 0(s1)
label40:
	ble s2, a0, label302
	j label301
label675:
	lw a1, 0(s1)
	ble s2, a1, label136
	j label694
label136:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label137
	j label180
label150:
	lw a0, 0(s1)
	bgt s2, a0, label157
label752:
	lw a1, 0(s1)
	bgt s2, a1, label155
	j label180
label153:
	bgt s2, a1, label155
	j label180
label157:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a2, a2, a3
	sltiu a5, a4, 1
	xori a3, a0, 13
	or a2, a2, a5
	sltiu a0, a3, 1
	or a2, a2, a0
	beq a2, zero, label153
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label157
	j label752
label59:
	li a0, 4
	bne a2, a0, label107
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label105
	j label370
label107:
	li a1, 5
	bne a2, a1, label115
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label109
	j label180
label109:
	sh2add a3, a1, s0
	li a4, 116
	lw a0, 0(a3)
	beq a0, a4, label110
	j label180
label110:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 114
	lw a0, 0(a4)
	beq a0, a3, label111
	j label180
label994:
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label36
label996:
	ble s2, a0, label302
	j label998
label170:
	lw a1, 0(s1)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label1011
	j label180
label132:
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
	beq a0, zero, label134
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label132
	j label675
label134:
	ble s2, a1, label136
label694:
	sh2add a2, a1, s0
	li a3, 93
	lw a0, 0(a2)
	bne a0, a3, label136
label1011:
	addiw a2, a1, 1
	li a0, 1
	sw a2, 0(s1)
	j label7
label137:
	lw a0, 0(s1)
	bgt s2, a0, label141
label704:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label150
	j label727
label141:
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
	beq a2, zero, label143
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label141
	j label704
label143:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label150
label727:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label148
	j label136
label148:
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
	beq a1, zero, label136
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label148
	j label136
label370:
	lw a1, 0(s1)
	ble s2, a1, label66
	j label374
label301:
	lw a1, 0(s1)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label302
	j label1000
label36:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label40
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label36
	j label996
label998:
	lw a1, 0(s1)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label302
label1000:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label47
	j label1001
label47:
	ble s2, a0, label49
	j label328
label63:
	ble s2, a1, label66
	j label374
label105:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a0, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a4, a0, 13
	or a2, a2, a3
	sltiu a3, a4, 1
	or a0, a2, a3
	beq a0, zero, label63
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label105
	j label370
label66:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label67
	j label180
label67:
	lw a0, 0(s1)
	bgt s2, a0, label102
label391:
	lw a0, 0(s1)
	bgt s2, a0, label73
	j label180
label102:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	xori a4, a1, 10
	or a2, a2, a3
	sltiu a5, a4, 1
	xori a3, a1, 13
	or a2, a2, a5
	sltiu a4, a3, 1
	or a1, a2, a4
	beq a1, zero, label71
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label102
	j label391
label1069:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label52
label328:
	lw a0, 0(s1)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label52
	j label1069
label50:
	addiw a0, a1, 1
	sw a0, 0(s1)
label52:
	ble s2, a0, label302
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label50
	j label302
label374:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	bne a0, a2, label66
	j label1011
label115:
	li a1, 6
	bne a2, a1, label123
	lw a0, 0(s1)
	addiw a1, a0, 4
	bgt s2, a1, label117
	j label180
label1001:
	sh2add a2, a0, s0
	li a1, 43
	lw a0, 0(a2)
	bne a0, a1, label45
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label47
label49:
	lw a0, 0(s1)
	ble s2, a0, label302
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label50
	j label302
label71:
	bgt s2, a0, label73
	j label180
label73:
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	beq a1, a3, label74
	j label180
label74:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label100
label77:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label78
	j label180
label100:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a5, a0, 9
	xori a3, a0, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a0, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	xori a3, a0, 13
	or a2, a2, a4
	sltiu a0, a3, 1
	or a2, a2, a0
	beq a2, zero, label77
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label100
	j label77
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
	bne a0, a1, label21
	li a0, 6
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label123:
	li a1, 7
	bne a2, a1, label180
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label125
	j label180
label45:
	lw a0, 0(s1)
	ble s2, a0, label49
	lw a0, 0(s1)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label52
	j label1069
label117:
	sh2add a3, a0, s0
	li a4, 102
	lw a2, 0(a3)
	beq a2, a4, label118
	j label180
label118:
	addiw a4, a0, 1
	sh2add a3, a4, s0
	li a4, 97
	lw a2, 0(a3)
	beq a2, a4, label119
	j label180
label119:
	addiw a4, a0, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a2, 0(a3)
	beq a2, a4, label120
	j label180
label125:
	sh2add a4, a1, s0
	li a3, 110
	lw a0, 0(a4)
	beq a0, a3, label126
	j label180
label21:
	li a1, 110
	bne a0, a1, label180
	j label22
label111:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label112
	j label180
label112:
	sh2add a2, a2, s0
	li a3, 101
	lw a0, 0(a2)
	beq a0, a3, label113
	j label180
label78:
	lw a0, 0(s1)
	bgt s2, a0, label98
label418:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label83
	j label425
label81:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label83
label425:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label95
	j label66
label83:
	lw a0, 0(s1)
	bgt s2, a0, label90
label430:
	lw a1, 0(s1)
	bgt s2, a1, label88
	j label180
label86:
	bgt s2, a1, label88
	j label180
label90:
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
	beq a2, zero, label86
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label90
	j label430
label98:
	lw a0, 0(s1)
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
	beq a2, zero, label81
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label98
	j label418
label95:
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
	beq a2, zero, label66
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label95
	j label66
label22:
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label126:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label127
	j label180
label155:
	sh2add a2, a1, s0
	li a3, 93
	lw a0, 0(a2)
	beq a0, a3, label1011
	j label180
label113:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s1)
	j label7
label120:
	addiw a4, a0, 3
	sh2add a3, a4, s0
	li a4, 115
	lw a2, 0(a3)
	beq a2, a4, label121
	j label180
label121:
	sh2add a2, a1, s0
	li a3, 101
	lw a1, 0(a2)
	beq a1, a3, label122
	j label180
label128:
	sh2add a2, a2, s0
	li a3, 108
	lw a0, 0(a2)
	beq a0, a3, label113
	j label180
label122:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s1)
	j label7
label88:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	beq a0, a2, label1011
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
pcrel1245:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1245)
	li a1, 35
	beq a0, a1, label1163
	mv s2, zero
	j label1135
label1163:
	mv a0, zero
	mv s2, zero
	j label1144
label1135:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	beq a0, a1, label1138
	j label1135
label1138:
	lw a0, 0(sp)
	bgt s2, a0, label1154
label1144:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
	bgt s2, a0, label1147
	beq a1, zero, label1150
	j label1151
label1154:
	lw a1, 0(sp)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	xori a3, a0, 10
	or a2, a2, a5
	xori a0, a0, 13
	sltiu a4, a3, 1
	sltiu a3, a0, 1
	or a2, a2, a4
	or a2, a2, a3
	beq a2, zero, label1144
	addiw a0, a1, 1
	sw a0, 0(sp)
	bgt s2, a0, label1154
	j label1144
label1147:
	lw a0, 0(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a5, a2, 9
	xori a4, a2, 32
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	xori a5, a2, 10
	or a3, a3, a4
	xori a2, a2, 13
	sltiu a4, a5, 1
	or a3, a3, a4
	sltiu a4, a2, 1
	or a3, a3, a4
	beq a3, zero, label1149
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1147
	beq a1, zero, label1150
	j label1151
label1149:
	beq a1, zero, label1150
label1151:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
label1152:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
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
	j label1152
