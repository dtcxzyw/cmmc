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
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 8(sp)
	mv s2, a3
	sd ra, 0(sp)
	lw a1, 0(a3)
	mv a2, a0
	bgt s1, a1, label7
label203:
	mv a0, zero
	j label195
label70:
	lw a0, 0(s2)
	bgt s1, a0, label67
	j label203
label345:
	li a0, 1
label195:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label7:
	lw a0, 0(s2)
	bgt s1, a0, label10
label208:
	bne a2, zero, label27
	j label1094
label10:
	lw a0, 0(s2)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t0, a1, 10
	xori a4, a1, 9
	xori a5, a1, 32
	xori a1, a1, 13
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t0, 1
	or a3, a3, a5
	or a3, a3, a4
	sltiu a4, a1, 1
	or a3, a3, a4
	beq a3, zero, label12
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label10
	j label208
label12:
	bne a2, zero, label27
	lw a1, 0(s2)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label14
	j label1097
label14:
	li a1, 91
	bne a0, a1, label15
	li a0, 3
	lw a1, 0(s2)
	mv a2, a0
	bgt s1, a1, label7
	j label203
label15:
	li a1, 34
	bne a0, a1, label16
	li a0, 2
	lw a1, 0(s2)
	mv a2, a0
	bgt s1, a1, label7
	j label203
label1097:
	li a2, 4
	bgt s1, a1, label7
	j label203
label1171:
	addiw a0, a0, 1
	sw a0, 0(s2)
	j label30
label27:
	li a1, 1
	bne a2, a1, label61
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 45
	xori a3, a1, 43
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a2, a2, a1
	beq a2, zero, label30
	j label1171
label30:
	bgt s1, a0, label32
	j label203
label16:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label17
	li a0, 1
	lw a1, 0(s2)
	mv a2, a0
	bgt s1, a1, label7
	j label203
label17:
	li a1, 43
	bne a0, a1, label19
label18:
	li a0, 1
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label19:
	li a1, 45
	bne a0, a1, label21
	j label18
label21:
	li a1, 116
	bne a0, a1, label23
	j label22
label1094:
	lw a1, 0(s2)
	li a2, 123
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label14
	j label1097
label61:
	li a1, 2
	bne a2, a1, label71
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label70
	lw a0, 0(s2)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label69
label1130:
	bgt s1, a0, label67
	j label203
label69:
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s2)
	ble s1, a0, label70
	lw a0, 0(s2)
	li a2, 34
	sh2add a3, a0, s0
	lw a1, 0(a3)
	bne a1, a2, label69
	j label1130
label71:
	li a1, 3
	bne a2, a1, label72
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label162
	j label813
label32:
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label33
	j label203
label33:
	ble s1, a1, label60
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label36
	j label1107
label43:
	ble s1, a0, label345
	lw a1, 0(s2)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label345
	j label1117
label60:
	lw a0, 0(s2)
	ble s1, a0, label59
	lw a0, 0(s2)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label43
	j label1110
label67:
	lw a1, 0(s2)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	beq a0, a3, label419
	j label203
label72:
	li a0, 4
	bne a2, a0, label73
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label98
	j label575
label73:
	li a0, 5
	bne a2, a0, label74
	lw a1, 0(s2)
	addiw a2, a1, 3
	bgt s1, a2, label89
	j label203
label74:
	li a0, 6
	bne a2, a0, label75
	lw a0, 0(s2)
	addiw a1, a0, 4
	bgt s1, a1, label82
	j label203
label575:
	lw a0, 0(s2)
	ble s1, a0, label102
	j label594
label813:
	lw a0, 0(s2)
	ble s1, a0, label168
	j label832
label162:
	lw a0, 0(s2)
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
	beq a2, zero, label164
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label162
	j label813
label164:
	ble s1, a0, label168
	j label832
label1107:
	ble s1, a0, label59
	lw a0, 0(s2)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label43
	j label1110
label36:
	addiw a1, a0, 1
	sw a1, 0(s2)
	ble s1, a1, label60
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label36
	j label1107
label1110:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label43
	j label1111
label168:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label169
	j label203
label169:
	lw a0, 0(s2)
	bgt s1, a0, label172
label850:
	lw a0, 0(s2)
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label182
	j label872
label172:
	lw a0, 0(s2)
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
	beq a2, zero, label174
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label172
	j label850
label174:
	sh2add a3, a0, s0
	li a2, 44
	lw a1, 0(a3)
	bne a1, a2, label182
label872:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label179
	j label181
label179:
	lw a0, 0(s2)
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
	beq a2, zero, label181
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label179
label181:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label169
	j label203
label182:
	lw a0, 0(s2)
	bgt s1, a0, label189
	j label902
label419:
	addiw a1, a1, 1
	li a0, 1
	sw a1, 0(s2)
	j label195
label832:
	sh2add a3, a0, s0
	li a2, 93
	lw a1, 0(a3)
	bne a1, a2, label168
	j label1207
label98:
	lw a0, 0(s2)
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
	beq a1, zero, label100
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label98
	j label575
label100:
	ble s1, a0, label102
label594:
	sh2add a3, a0, s0
	li a2, 125
	lw a1, 0(a3)
	bne a1, a2, label102
	j label1207
label59:
	lw a0, 0(s2)
	ble s1, a0, label345
	lw a1, 0(s2)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label345
label1117:
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label50
	j label1118
label1111:
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label40
	j label1113
label40:
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label43
	sh2add a2, a0, s0
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bltu a1, a2, label40
label1113:
	ble s1, a0, label345
	lw a1, 0(s2)
	li a2, 101
	sh2add a3, a1, s0
	lw a0, 0(a3)
	bne a0, a2, label345
	j label1117
label1207:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s2)
	j label195
label102:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label103
	j label203
label1118:
	sh2add a1, a0, s0
	li a2, 43
	lw a0, 0(a1)
	bne a0, a2, label49
	lw a1, 0(s2)
	addiw a0, a1, 1
	sw a0, 0(s2)
	j label50
label49:
	lw a0, 0(s2)
	j label50
label103:
	lw a0, 0(s2)
	bgt s1, a0, label106
label604:
	lw a0, 0(s2)
	bgt s1, a0, label110
	j label203
label106:
	lw a0, 0(s2)
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
	beq a1, zero, label108
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label106
	j label604
label108:
	bgt s1, a0, label110
	j label203
label75:
	li a0, 7
	bne a2, a0, label203
	lw a1, 0(s2)
	addiw a2, a1, 3
	bgt s1, a2, label77
	j label203
label89:
	sh2add a3, a1, s0
	li a4, 116
	lw a0, 0(a3)
	beq a0, a4, label90
	j label203
label50:
	ble s1, a0, label52
	j label371
label52:
	lw a0, 0(s2)
label53:
	ble s1, a0, label345
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label56
	j label345
label1122:
	mv a1, a0
	addiw a0, a0, 1
	sw a0, 0(s2)
	ble s1, a0, label345
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label56
	j label345
label56:
	addiw a0, a1, 1
	sw a0, 0(s2)
	ble s1, a0, label345
	lw a1, 0(s2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	li a3, 10
	addiw a0, a2, -48
	bltu a0, a3, label56
	j label345
label371:
	lw a0, 0(s2)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label53
	j label1122
label110:
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	beq a1, a3, label111
	j label203
label22:
	li a0, 5
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label23:
	li a1, 102
	bne a0, a1, label25
	j label24
label82:
	sh2add a4, a0, s0
	li a3, 102
	lw a2, 0(a4)
	beq a2, a3, label83
	j label203
label83:
	addiw a3, a0, 1
	sh2add a4, a3, s0
	li a3, 97
	lw a2, 0(a4)
	beq a2, a3, label84
	j label203
label84:
	addiw a3, a0, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a2, 0(a4)
	beq a2, a3, label85
	j label203
label90:
	addiw a4, a1, 1
	sh2add a3, a4, s0
	li a4, 114
	lw a0, 0(a3)
	beq a0, a4, label91
	j label203
label91:
	addiw a4, a1, 2
	sh2add a3, a4, s0
	li a4, 117
	lw a0, 0(a3)
	beq a0, a4, label92
	j label203
label111:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label114
label116:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label117
	j label203
label114:
	lw a0, 0(s2)
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
	beq a1, zero, label116
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label114
	j label116
label24:
	li a0, 6
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label25:
	li a1, 110
	bne a0, a1, label203
	li a0, 7
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	j label195
label77:
	sh2add a4, a1, s0
	li a3, 110
	lw a0, 0(a4)
	beq a0, a3, label78
	j label203
label117:
	lw a0, 0(s2)
	bgt s1, a0, label152
label660:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label143
label667:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label141
label125:
	li a0, 2
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label126
	j label203
label126:
	lw a0, 0(s2)
	bgt s1, a0, label139
label682:
	lw a0, 0(s2)
	bgt s1, a0, label132
	j label203
label139:
	lw a0, 0(s2)
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
	beq a2, zero, label130
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label139
	j label682
label120:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label143
	j label667
label143:
	lw a0, 0(s2)
	bgt s1, a0, label147
label754:
	lw a1, 0(s2)
	bgt s1, a1, label151
	j label203
label147:
	lw a1, 0(s2)
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
	sltiu a0, a4, 1
	or a2, a2, a0
	beq a2, zero, label149
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label147
	j label754
label149:
	bgt s1, a1, label151
	j label203
label152:
	lw a0, 0(s2)
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
	beq a2, zero, label120
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label152
	j label660
label141:
	lw a1, 0(s2)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori a4, a0, 9
	xori a3, a0, 32
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	xori a3, a0, 10
	or a2, a2, a5
	sltiu a4, a3, 1
	xori a3, a0, 13
	or a2, a2, a4
	sltiu a0, a3, 1
	or a2, a2, a0
	beq a2, zero, label125
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label141
	j label125
label902:
	lw a1, 0(s2)
	bgt s1, a1, label187
	j label203
label185:
	bgt s1, a1, label187
	j label203
label189:
	lw a1, 0(s2)
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
	beq a0, zero, label185
	addiw a0, a1, 1
	sw a0, 0(s2)
	bgt s1, a0, label189
	j label902
label92:
	sh2add a2, a2, s0
	li a3, 101
	lw a0, 0(a2)
	beq a0, a3, label488
	j label203
label78:
	addiw a3, a1, 1
	sh2add a4, a3, s0
	li a3, 117
	lw a0, 0(a4)
	beq a0, a3, label79
	j label203
label79:
	addiw a3, a1, 2
	sh2add a4, a3, s0
	li a3, 108
	lw a0, 0(a4)
	beq a0, a3, label80
	j label203
label130:
	bgt s1, a0, label132
	j label203
label187:
	sh2add a2, a1, s0
	li a3, 93
	lw a0, 0(a2)
	beq a0, a3, label419
	j label203
label488:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s2)
	j label195
label85:
	addiw a3, a0, 3
	sh2add a4, a3, s0
	li a3, 115
	lw a2, 0(a4)
	beq a2, a3, label86
	j label203
label86:
	sh2add a3, a1, s0
	li a2, 101
	lw a1, 0(a3)
	beq a1, a2, label87
	j label203
label132:
	sh2add a2, a0, s0
	li a3, 58
	lw a1, 0(a2)
	beq a1, a3, label133
	j label203
label80:
	sh2add a2, a2, s0
	li a3, 108
	lw a0, 0(a2)
	beq a0, a3, label488
	j label203
label133:
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label137
label136:
	mv a0, zero
	mv a1, s0
	mv a2, s1
	mv a3, s2
	jal detect_item
	bne a0, zero, label117
	j label203
label137:
	lw a0, 0(s2)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	xori a3, a1, 10
	or a2, a2, a5
	sltiu a4, a3, 1
	xori a3, a1, 13
	or a2, a2, a4
	sltiu a4, a3, 1
	or a1, a2, a4
	beq a1, zero, label136
	addiw a0, a0, 1
	sw a0, 0(s2)
	bgt s1, a0, label137
	j label136
label87:
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s2)
	j label195
label151:
	sh2add a2, a1, s0
	li a3, 125
	lw a0, 0(a2)
	beq a0, a3, label419
	j label203
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
pcrel1370:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1370)
	li a1, 35
	beq a0, a1, label1288
	mv s2, zero
	j label1260
label1288:
	mv a0, zero
	mv s2, zero
	j label1271
label1260:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	beq a0, a1, label1263
	j label1260
label1269:
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
	beq a2, zero, label1271
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1269
label1271:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
	bgt s2, a0, label1274
	beq a1, zero, label1279
label1280:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1277
label1263:
	lw a0, 0(sp)
	bgt s2, a0, label1269
	j label1271
label1274:
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
	beq a3, zero, label1276
	addiw a0, a0, 1
	sw a0, 0(sp)
	bgt s2, a0, label1274
	beq a1, zero, label1279
	j label1280
label1276:
	beq a1, zero, label1279
	j label1280
label1277:
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s1, 8(sp)
	addi sp, sp, 40
	ret
label1279:
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
	j label1277
