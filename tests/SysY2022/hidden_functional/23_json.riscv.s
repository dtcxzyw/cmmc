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
label21:
	li a1, 1
	bne a2, a1, label22
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 45
	xori a4, a1, 43
	sltiu a1, a3, 1
	sltiu a2, a4, 1
	or a2, a2, a1
	beq a2, zero, label138
	j label1047
label22:
	li a0, 2
	bne a2, a0, label25
	lw a2, 0(s1)
	addiw a0, a2, 1
	sw a0, 0(s1)
	ble s2, a0, label136
	j label675
label25:
	li a1, 3
	bne a2, a1, label58
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label29
label248:
	lw a1, 0(s1)
	ble s2, a1, label34
	j label268
label170:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori a4, a0, 9
	xori a5, a0, 32
	sltiu t0, a4, 1
	sltiu a3, a5, 1
	xori a5, a0, 10
	or a3, a3, t0
	xori a0, a0, 13
	sltiu a4, a5, 1
	or a3, a3, a4
	sltiu a4, a0, 1
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
label1047:
	addiw a0, a0, 1
	sw a0, 0(s1)
label138:
	bgt s2, a0, label140
	j label180
label675:
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label135
	j label1015
label136:
	lw a0, 0(s1)
	bgt s2, a0, label133
	j label180
label140:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label141
	j label180
label1015:
	bgt s2, a0, label133
	j label180
label135:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s1)
	ble s2, a0, label136
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label135
	j label1015
label141:
	ble s2, a1, label168
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label144
	j label1019
label1022:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label147
	j label1034
label168:
	lw a0, 0(s1)
	ble s2, a0, label167
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label147
	j label1022
label133:
	lw a1, 0(s1)
	li a2, 34
	sh2add a3, a1, s0
	lw a0, 0(a3)
	beq a0, a2, label23
	j label180
label34:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label35
	j label180
label35:
	lw a0, 0(s1)
	bgt s2, a0, label55
label278:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label46
label286:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label44
	j label34
label55:
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
	beq a2, zero, label39
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label55
	j label278
label1019:
	ble s2, a0, label167
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label147
	j label1022
label144:
	addiw a1, a0, 1
	sw a1, 0(s1)
	ble s2, a1, label168
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label144
	j label1019
label167:
	lw a0, 0(s1)
	ble s2, a0, label746
	lw a1, 0(s1)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label746
	j label1023
label746:
	li a0, 1
	j label172
label1034:
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label164
label1036:
	ble s2, a0, label746
	j label1038
label58:
	li a0, 4
	bne a2, a0, label106
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label63
label370:
	lw a1, 0(s1)
	ble s2, a1, label68
	j label390
label29:
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
	beq a0, zero, label32
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label29
	j label248
label32:
	ble s2, a1, label34
label268:
	sh2add a3, a1, s0
	li a2, 93
	lw a0, 0(a3)
	bne a0, a2, label34
label23:
	addiw a1, a1, 1
	li a0, 1
	sw a1, 0(s1)
	j label172
label44:
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
	beq a2, zero, label34
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label44
	j label34
label39:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label46
	j label286
label46:
	lw a0, 0(s1)
	bgt s2, a0, label53
	j label311
label63:
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
	beq a2, zero, label65
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label63
	j label370
label65:
	ble s2, a1, label68
	j label390
label106:
	li a1, 5
	bne a2, a1, label107
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label124
	j label180
label147:
	ble s2, a0, label746
	lw a1, 0(s1)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label746
label1023:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label151
	j label1024
label1038:
	lw a1, 0(s1)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label746
	j label1023
label164:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label147
	sh2add a3, a0, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label164
	j label1036
label68:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label69
	j label180
label151:
	ble s2, a0, label155
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label157
	j label1026
label153:
	addiw a0, a1, 1
	sw a0, 0(s1)
	ble s2, a0, label746
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label153
	j label746
label155:
	lw a0, 0(s1)
	ble s2, a0, label746
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label153
	j label746
label157:
	ble s2, a0, label746
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label153
	j label746
label1026:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label746
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bltu a0, a2, label153
	j label746
label161:
	lw a0, 0(s1)
	ble s2, a0, label155
	lw a0, 0(s1)
	li a2, 45
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label157
	j label1026
label1024:
	sh2add a2, a0, s0
	li a1, 43
	lw a0, 0(a2)
	bne a0, a1, label161
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label151
label107:
	li a0, 6
	bne a2, a0, label108
	lw a0, 0(s1)
	addiw a1, a0, 4
	bgt s2, a1, label115
	j label180
label390:
	sh2add a3, a1, s0
	li a2, 125
	lw a0, 0(a3)
	bne a0, a2, label68
	j label23
label69:
	lw a0, 0(s1)
	bgt s2, a0, label104
label407:
	lw a0, 0(s1)
	bgt s2, a0, label74
	j label180
label72:
	bgt s2, a0, label74
	j label180
label104:
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
	beq a1, zero, label72
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label104
	j label407
label15:
	li a1, 116
	bne a0, a1, label16
	li a0, 5
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label124:
	sh2add a4, a1, s0
	li a3, 116
	lw a0, 0(a4)
	beq a0, a3, label125
	j label180
label125:
	addiw a4, a1, 1
	sh2add a3, a4, s0
	li a4, 114
	lw a0, 0(a3)
	beq a0, a4, label126
	j label180
label126:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label127
	j label180
label108:
	li a0, 7
	bne a2, a0, label180
	lw a1, 0(s1)
	addiw a2, a1, 3
	bgt s2, a2, label110
	j label180
label110:
	sh2add a4, a1, s0
	li a3, 110
	lw a0, 0(a4)
	beq a0, a3, label111
	j label180
label74:
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	beq a1, a3, label75
	j label180
label75:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label101
	j label78
label16:
	li a1, 102
	bne a0, a1, label17
	li a0, 6
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label115:
	sh2add a4, a0, s0
	li a3, 102
	lw a2, 0(a4)
	beq a2, a3, label116
	j label180
label78:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label79
	j label180
label79:
	lw a0, 0(s1)
	bgt s2, a0, label99
label433:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label89
label440:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label87
	j label68
label101:
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
	sltiu a0, a4, 1
	or a2, a2, a0
	beq a2, zero, label78
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label101
	j label78
label17:
	li a1, 110
	bne a0, a1, label180
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label172
label116:
	addiw a4, a0, 1
	sh2add a3, a4, s0
	li a4, 97
	lw a2, 0(a3)
	beq a2, a4, label117
	j label180
label117:
	addiw a4, a0, 2
	sh2add a3, a4, s0
	li a4, 108
	lw a2, 0(a3)
	beq a2, a4, label118
	j label180
label118:
	addiw a3, a0, 3
	sh2add a4, a3, s0
	li a3, 115
	lw a2, 0(a4)
	beq a2, a3, label119
	j label180
label89:
	lw a0, 0(s1)
	bgt s2, a0, label96
label465:
	lw a1, 0(s1)
	bgt s2, a1, label95
	j label180
label87:
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
	beq a2, zero, label68
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label87
	j label68
label82:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label89
	j label440
label99:
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
	beq a2, zero, label82
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label99
	j label433
label311:
	lw a1, 0(s1)
	bgt s2, a1, label52
	j label180
label53:
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
	beq a2, zero, label50
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label53
	j label311
label50:
	bgt s2, a1, label52
	j label180
label127:
	sh2add a3, a2, s0
	li a2, 101
	lw a0, 0(a3)
	beq a0, a2, label588
	j label180
label111:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label112
	j label180
label112:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a0, 0(a4)
	beq a0, a3, label113
	j label180
label113:
	sh2add a2, a2, s0
	li a3, 108
	lw a0, 0(a2)
	beq a0, a3, label588
	j label180
label52:
	sh2add a2, a1, s0
	li a3, 93
	lw a0, 0(a2)
	beq a0, a3, label23
	j label180
label588:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s1)
	j label172
label119:
	sh2add a3, a1, s0
	li a2, 101
	lw a1, 0(a3)
	beq a1, a2, label120
	j label180
label120:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s1)
	j label172
label96:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a5, a0, 9
	xori a3, a0, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a5, a0, 13
	xori a3, a0, 10
	or a2, a2, a4
	sltiu a4, a3, 1
	sltiu a3, a5, 1
	or a2, a2, a4
	or a0, a2, a3
	beq a0, zero, label93
	addiw a0, a1, 1
	sw a0, 0(s1)
	bgt s2, a0, label96
	j label465
label93:
	bgt s2, a1, label95
	j label180
label95:
	sh2add a2, a1, s0
	li a3, 125
	lw a0, 0(a2)
	beq a0, a3, label23
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
pcrel1243:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1243)
	li a1, 35
	beq a0, a1, label1161
	mv s2, zero
	j label1133
label1161:
	mv a0, zero
	mv s2, zero
	j label1144
label1133:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	beq a0, a1, label1136
	j label1133
label1142:
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
	beq a2, zero, label1144
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1142
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
label1153:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1151
label1136:
	lw a0, 0(sp)
	bgt s2, a0, label1142
	j label1144
label1147:
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
	beq a3, zero, label1149
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1147
	beq a1, zero, label1150
	j label1153
label1149:
	beq a1, zero, label1150
	j label1153
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
label1151:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
