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
	j label180
label9:
	lw a0, 0(s1)
	bgt s2, a0, label12
label185:
	bne a2, zero, label25
	lw a1, 0(s1)
	li a3, 123
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label16
	j label985
label12:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori a5, a1, 9
	xori a4, a1, 32
	sltiu a3, a4, 1
	sltiu a4, a5, 1
	xori a5, a1, 10
	or a3, a3, a4
	xori a1, a1, 13
	sltiu a4, a5, 1
	or a3, a3, a4
	sltiu a4, a1, 1
	or a3, a3, a4
	beq a3, zero, label14
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label12
	j label185
label14:
	bne a2, zero, label25
	lw a1, 0(s1)
	li a3, 123
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label16
label985:
	li a2, 4
	bgt s2, a1, label9
	j label180
label25:
	li a1, 1
	bne a2, a1, label59
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 45
	xori a3, a1, 43
	sltiu a2, a3, 1
	sltiu a3, a4, 1
	or a1, a2, a3
	beq a1, zero, label27
	j label1053
label180:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label317:
	li a0, 1
	j label7
label51:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label317
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label51
	j label317
label53:
	lw a0, 0(s1)
label54:
	ble s2, a0, label317
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label51
	j label317
label16:
	li a1, 91
	bne a0, a1, label17
	li a0, 3
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label9
	j label180
label17:
	li a1, 34
	bne a0, a1, label18
	li a0, 2
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label9
	j label180
label18:
	addiw a2, a0, -48
	xori a3, a0, 43
	sltiu a1, a2, 10
	sltiu a2, a3, 1
	xori a3, a0, 45
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label19
	li a0, 1
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label9
	j label180
label1053:
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label27
label59:
	li a1, 2
	bne a2, a1, label69
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label68
	j label377
label69:
	li a1, 3
	bne a2, a1, label70
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label143
	j label721
label27:
	bgt s2, a0, label29
	j label180
label377:
	lw a0, 0(s1)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label64
	j label1015
label68:
	lw a0, 0(s1)
	bgt s2, a0, label67
	j label180
label29:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label30
	j label180
label1015:
	bgt s2, a0, label67
	j label180
label64:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s1)
	ble s2, a0, label68
	lw a0, 0(s1)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label64
	j label1015
label30:
	ble s2, a1, label34
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label33
label992:
	ble s2, a0, label41
	j label993
label33:
	addiw a1, a0, 1
	sw a1, 0(s1)
	ble s2, a1, label34
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label33
	j label992
label34:
	lw a0, 0(s1)
	ble s2, a0, label41
	lw a0, 0(s1)
	li a2, 46
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label42
	j label995
label41:
	lw a0, 0(s1)
label42:
	ble s2, a0, label317
	lw a1, 0(s1)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label317
	j label1002
label67:
	lw a1, 0(s1)
	li a2, 34
	sh2add a3, a1, s0
	lw a0, 0(a3)
	beq a0, a2, label402
	j label180
label70:
	li a0, 4
	bne a2, a0, label71
	lw a2, 0(s1)
	addiw a0, a2, 1
	sw a0, 0(s1)
	bgt s2, a0, label97
label546:
	lw a1, 0(s1)
	ble s2, a1, label102
label566:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	bne a0, a2, label102
	j label402
label721:
	lw a1, 0(s1)
	ble s2, a1, label148
	j label740
label143:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a3, a0, 9
	xori a4, a0, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a0, 10
	or a2, a2, a4
	xori a0, a0, 13
	sltiu a4, a3, 1
	sltiu a3, a0, 1
	or a2, a2, a4
	or a2, a2, a3
	beq a2, zero, label145
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label143
	j label721
label145:
	ble s2, a1, label148
label740:
	sh2add a3, a1, s0
	li a2, 93
	lw a0, 0(a3)
	bne a0, a2, label148
	j label402
label148:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label149
	j label180
label149:
	lw a0, 0(s1)
	bgt s2, a0, label152
label757:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label162
label780:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label160
	j label148
label993:
	lw a0, 0(s1)
	li a2, 46
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label42
label995:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label42
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label38
	j label998
label38:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label42
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label38
label998:
	ble s2, a0, label317
	lw a1, 0(s1)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label317
	j label1002
label402:
	addiw a2, a1, 1
	li a0, 1
	sw a2, 0(s1)
	j label7
label162:
	lw a0, 0(s1)
	bgt s2, a0, label166
	j label805
label166:
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
	beq a0, zero, label168
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label166
	j label805
label168:
	bgt s2, a1, label170
	j label180
label152:
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
	sltiu a1, a4, 1
	or a2, a2, a1
	beq a2, zero, label155
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label152
	j label757
label155:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label162
	j label780
label160:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	xori a1, a1, 13
	sltiu a4, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a4
	or a2, a2, a3
	beq a2, zero, label148
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label160
	j label148
label71:
	li a0, 5
	bne a2, a0, label72
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label89
	j label180
label1002:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label49
	sh2add a1, a0, s0
	li a2, 43
	lw a0, 0(a1)
	bne a0, a2, label47
	j label1071
label97:
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
	beq a2, zero, label99
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label97
	j label546
label99:
	ble s2, a1, label102
	j label566
label47:
	lw a0, 0(s1)
	ble s2, a0, label53
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label54
label1007:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label317
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label51
	j label317
label102:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label103
	j label180
label72:
	li a0, 6
	bne a2, a0, label73
	lw a0, 0(s1)
	addiw a1, a0, 4
	bgt s2, a1, label80
	j label180
label80:
	sh2add a3, a0, s0
	li a4, 102
	lw a2, 0(a3)
	beq a2, a4, label81
	j label180
label81:
	addiw a4, a0, 1
	sh2add a3, a4, s0
	li a4, 97
	lw a2, 0(a3)
	beq a2, a4, label82
	j label180
label82:
	addiw a4, a0, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a2, 0(a3)
	beq a2, a4, label83
	j label180
label83:
	addiw a3, a0, 3
	sh2add a4, a3, s0
	li a3, 115
	lw a2, 0(a4)
	beq a2, a3, label84
	j label180
label103:
	lw a0, 0(s1)
	bgt s2, a0, label138
label583:
	lw a0, 0(s1)
	bgt s2, a0, label108
	j label180
label106:
	bgt s2, a0, label108
	j label180
label138:
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
	sltiu a3, a4, 1
	or a1, a2, a3
	beq a1, zero, label106
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label138
	j label583
label19:
	li a1, 116
	bne a0, a1, label21
	li a0, 5
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label21:
	li a1, 102
	bne a0, a1, label23
	li a0, 6
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label23:
	li a1, 110
	bne a0, a1, label180
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label1071:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
label49:
	ble s2, a0, label53
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label54
	j label1007
label89:
	sh2add a4, a1, s0
	li a3, 116
	lw a0, 0(a4)
	beq a0, a3, label90
	j label180
label90:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 114
	lw a0, 0(a4)
	beq a0, a3, label91
	j label180
label91:
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 117
	lw a0, 0(a3)
	beq a0, a4, label92
	j label180
label73:
	li a0, 7
	bne a2, a0, label180
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label75
	j label180
label75:
	sh2add a4, a1, s0
	li a3, 110
	lw a0, 0(a4)
	beq a0, a3, label76
	j label180
label108:
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	beq a1, a3, label109
	j label180
label109:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label135
label112:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label113
	j label180
label113:
	lw a0, 0(s1)
	bgt s2, a0, label132
label609:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label118
	j label616
label116:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label118
label616:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label130
	j label102
label132:
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
	beq a1, zero, label116
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label132
	j label609
label135:
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
	beq a2, zero, label112
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label135
	j label112
label118:
	lw a0, 0(s1)
	bgt s2, a0, label124
label621:
	lw a1, 0(s1)
	bgt s2, a1, label123
	j label180
label121:
	bgt s2, a1, label123
	j label180
label124:
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
	beq a0, zero, label121
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label124
	j label621
label130:
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
	sltiu a3, a4, 1
	or a1, a2, a3
	beq a1, zero, label102
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label130
	j label102
label805:
	lw a1, 0(s1)
	bgt s2, a1, label170
	j label180
label76:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label77
	j label180
label77:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a0, 0(a4)
	beq a0, a3, label78
	j label180
label78:
	sh2add a2, a2, s0
	li a3, 108
	lw a0, 0(a2)
	beq a0, a3, label459
	j label180
label92:
	sh2add a2, a2, s0
	li a3, 101
	lw a0, 0(a2)
	beq a0, a3, label459
	j label180
label170:
	sh2add a2, a1, s0
	li a3, 93
	lw a0, 0(a2)
	beq a0, a3, label402
	j label180
label459:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s1)
	j label7
label84:
	sh2add a2, a1, s0
	li a3, 101
	lw a1, 0(a2)
	beq a1, a3, label85
	j label180
label85:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s1)
	j label7
label123:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	beq a0, a2, label402
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
pcrel1241:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1241)
	li a1, 35
	beq a0, a1, label1159
	mv s2, zero
	j label1131
label1159:
	mv a0, zero
	mv s2, zero
	j label1142
label1131:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	beq a0, a1, label1134
	j label1131
label1140:
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
	beq a2, zero, label1142
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1140
label1142:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
	bgt s2, a0, label1145
	beq a1, zero, label1148
label1151:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1149
label1134:
	lw a0, 0(sp)
	bgt s2, a0, label1140
	j label1142
label1145:
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
	beq a3, zero, label1147
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1145
	beq a1, zero, label1148
	j label1151
label1147:
	beq a1, zero, label1148
	j label1151
label1148:
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
label1149:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
