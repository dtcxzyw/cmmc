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
label53:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label54
	j label180
label54:
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a0, 0(a3)
	beq a0, a4, label55
	j label180
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
label21:
	li a1, 1
	bne a2, a1, label22
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 43
	xori a1, a1, 45
	sltiu a2, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label138
	j label1047
label22:
	li a0, 2
	bne a2, a0, label32
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label31
	j label243
label32:
	li a1, 3
	bne a2, a1, label33
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label133
	j label587
label170:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori t0, a0, 9
	xori a4, a0, 32
	sltiu a5, t0, 1
	sltiu a3, a4, 1
	xori a4, a0, 10
	or a3, a3, a5
	xori a0, a0, 13
	sltiu a5, a4, 1
	sltiu a4, a0, 1
	or a3, a3, a5
	or a3, a3, a4
	beq a3, zero, label10
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label170
	j label185
label983:
	li a2, 4
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
label14:
	addiw a2, a0, -48
	xori a3, a0, 43
	sltiu a1, a2, 10
	sltiu a4, a3, 1
	xori a2, a0, 45
	or a1, a1, a4
	sltiu a3, a2, 1
	or a1, a1, a3
	beq a1, zero, label15
	li a0, 1
	lw a1, 0(s1)
	mv a2, a0
	bgt s2, a1, label7
	j label180
label138:
	bgt s2, a0, label140
	j label180
label140:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label141
	j label180
label1047:
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label138
label243:
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label27
label989:
	bgt s2, a0, label30
	j label180
label27:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s1)
	ble s2, a0, label31
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label27
	j label989
label31:
	lw a0, 0(s1)
	bgt s2, a0, label30
	j label180
label141:
	ble s2, a1, label145
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label144
label1021:
	ble s2, a0, label152
	j label1022
label144:
	addiw a1, a0, 1
	sw a1, 0(s1)
	ble s2, a1, label145
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label144
	j label1021
label145:
	lw a0, 0(s1)
	ble s2, a0, label152
	j label742
label33:
	li a0, 4
	bne a2, a0, label34
	lw a2, 0(s1)
	addiw a0, a2, 1
	sw a0, 0(s1)
	bgt s2, a0, label60
	j label412
label587:
	lw a1, 0(s1)
	ble s2, a1, label109
label592:
	sh2add a3, a1, s0
	li a2, 93
	lw a0, 0(a3)
	bne a0, a2, label109
	j label268
label133:
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
	beq a0, zero, label107
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label133
	j label587
label109:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label110
	j label180
label110:
	lw a0, 0(s1)
	bgt s2, a0, label113
	j label602
label1022:
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label153
label1024:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label153
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label149
label1027:
	ble s2, a0, label769
	lw a1, 0(s1)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label769
	j label1031
label152:
	lw a0, 0(s1)
label153:
	ble s2, a0, label769
	j label768
label769:
	li a0, 1
	j label172
label30:
	lw a1, 0(s1)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label268
	j label180
label107:
	ble s2, a1, label109
	j label592
label268:
	addiw a1, a1, 1
	li a0, 1
	sw a1, 0(s1)
	j label172
label602:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label123
	j label625
label113:
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
	beq a2, zero, label116
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label113
	j label602
label116:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label123
label625:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label121
	j label109
label123:
	lw a0, 0(s1)
	bgt s2, a0, label127
	j label650
label127:
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
	beq a0, zero, label129
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label127
	j label650
label129:
	bgt s2, a1, label131
	j label180
label121:
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
	sltiu a1, a3, 1
	or a2, a2, a1
	beq a2, zero, label109
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label121
	j label109
label34:
	li a0, 5
	bne a2, a0, label42
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label38
	j label180
label42:
	li a0, 6
	bne a2, a0, label50
	lw a0, 0(s1)
	addiw a1, a0, 4
	bgt s2, a1, label44
	j label180
label44:
	sh2add a4, a0, s0
	li a3, 102
	lw a2, 0(a4)
	beq a2, a3, label45
	j label180
label45:
	addiw a3, a0, 1
	sh2add a4, a3, s0
	li a3, 97
	lw a2, 0(a4)
	beq a2, a3, label46
	j label180
label46:
	addiw a3, a0, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a2, 0(a4)
	beq a2, a3, label47
	j label180
label47:
	addiw a3, a0, 3
	sh2add a4, a3, s0
	li a3, 115
	lw a2, 0(a4)
	beq a2, a3, label48
	j label180
label48:
	sh2add a3, a1, s0
	li a2, 101
	lw a1, 0(a3)
	beq a1, a2, label49
	j label180
label49:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s1)
	j label172
label742:
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label153
	j label1024
label768:
	lw a1, 0(s1)
	li a3, 101
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label769
label1031:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label160
	j label1032
label412:
	lw a1, 0(s1)
	ble s2, a1, label65
	j label432
label60:
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
	beq a2, zero, label62
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label60
	j label412
label62:
	ble s2, a1, label65
label432:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	bne a0, a2, label65
	j label268
label149:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label153
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label149
	j label1027
label1032:
	sh2add a2, a0, s0
	li a1, 43
	lw a0, 0(a2)
	bne a0, a1, label158
	j label1104
label158:
	lw a0, 0(s1)
	ble s2, a0, label167
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label162
	j label1036
label160:
	ble s2, a0, label167
	j label795
label1036:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label769
	j label1040
label167:
	lw a0, 0(s1)
	ble s2, a0, label769
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label165
	j label769
label1040:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label165
	j label769
label162:
	ble s2, a0, label769
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label165
	j label769
label65:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label66
	j label180
label165:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label769
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label165
	j label769
label66:
	lw a0, 0(s1)
	bgt s2, a0, label101
label449:
	lw a0, 0(s1)
	bgt s2, a0, label71
	j label180
label69:
	bgt s2, a0, label71
	j label180
label71:
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	beq a1, a3, label72
	j label180
label101:
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
	beq a1, zero, label69
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label101
	j label449
label15:
	li a1, 116
	bne a0, a1, label16
	li a0, 5
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label50:
	li a1, 7
	bne a2, a1, label180
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label52
	j label180
label38:
	sh2add a4, a1, s0
	li a3, 116
	lw a0, 0(a4)
	beq a0, a3, label39
	j label180
label795:
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label162
	j label1036
label16:
	li a1, 102
	bne a0, a1, label18
	li a0, 6
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label18:
	li a1, 110
	bne a0, a1, label180
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label39:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 114
	lw a0, 0(a4)
	beq a0, a3, label40
	j label180
label40:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label41
	j label180
label1104:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label160
label72:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label98
label75:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label76
	j label180
label76:
	lw a0, 0(s1)
	bgt s2, a0, label79
label475:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label89
	j label498
label79:
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
	sltiu a1, a3, 1
	or a2, a2, a1
	beq a2, zero, label82
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label79
	j label475
label498:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label87
	j label65
label98:
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
	beq a1, zero, label75
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label98
	j label75
label52:
	sh2add a4, a1, s0
	li a3, 110
	lw a0, 0(a4)
	beq a0, a3, label53
	j label180
label82:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label89
	j label498
label89:
	lw a0, 0(s1)
	bgt s2, a0, label95
	j label523
label87:
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
	beq a2, zero, label65
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label87
	j label65
label650:
	lw a1, 0(s1)
	bgt s2, a1, label131
	j label180
label41:
	sh2add a2, a2, s0
	li a3, 101
	lw a0, 0(a2)
	beq a0, a3, label35
	j label180
label131:
	sh2add a3, a1, s0
	li a2, 93
	lw a0, 0(a3)
	beq a0, a2, label268
	j label180
label35:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s1)
	j label172
label55:
	sh2add a2, a2, s0
	li a3, 108
	lw a0, 0(a2)
	beq a0, a3, label35
	j label180
label92:
	bgt s2, a1, label94
	j label180
label94:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	beq a0, a2, label268
	j label180
label95:
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
	beq a2, zero, label92
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label95
label523:
	lw a1, 0(s1)
	bgt s2, a1, label94
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
	beq a1, zero, label1149
label1152:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1150
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
	beq a1, zero, label1149
	j label1152
label1148:
	beq a1, zero, label1149
	j label1152
label1149:
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
label1150:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
