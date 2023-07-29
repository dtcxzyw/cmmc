.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	200000000
.text
detect_item:
.p2align 2
	addi sp, sp, -32
	sd s1, 24(sp)
	mv s1, a1
	sd s2, 16(sp)
	mv s2, a2
	sd s0, 8(sp)
	mv s0, a3
	sd ra, 0(sp)
	lw a1, 0(a3)
	mv a2, a0
label4:
	bgt s2, a1, label197
label198:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label12:
	bne a2, zero, label23
	lw a1, 0(s0)
	li a3, 123
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, a3, label14
	li a2, 4
	j label4
label14:
	li a1, 91
	bne a0, a1, label15
	li a0, 3
	lw a1, 0(s0)
	mv a2, a0
	j label4
label15:
	li a1, 34
	bne a0, a1, label16
	li a0, 2
	lw a1, 0(s0)
	mv a2, a0
	j label4
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
	lw a1, 0(s0)
	mv a2, a0
	j label4
label17:
	li a1, 116
	beq a0, a1, label22
	li a1, 102
	bne a0, a1, label20
	li a0, 6
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label20:
	li a1, 110
	beq a0, a1, label21
	j label198
label22:
	li a0, 5
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label23:
	li a1, 1
	beq a2, a1, label24
	li a1, 2
	bne a2, a1, label69
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label61
label58:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s0)
	j label7
label61:
	bgt s2, a0, label66
	lw a0, 0(s0)
label63:
	ble s2, a0, label198
	lw a0, 0(s0)
	li a3, 34
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bne a1, a3, label198
	j label58
label66:
	lw a0, 0(s0)
	li a2, 34
	sh2add a3, a0, s1
	lw a1, 0(a3)
	beq a1, a2, label63
	xori a2, a1, 92
	addiw a3, a0, 1
	sltiu a1, a2, 1
	addw a0, a1, a3
	sw a0, 0(s0)
	j label61
label69:
	li a1, 3
	bne a2, a1, label70
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label157
label70:
	li a0, 4
	bne a2, a0, label71
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label94
label71:
	li a0, 5
	beq a2, a0, label74
	j label79
label72:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s0)
	j label7
label74:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label198
	sh2add a4, a1, s1
	li a3, 116
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 1
	sh2add a4, a3, s1
	li a3, 114
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 2
	sh2add a3, a4, s1
	li a4, 117
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a2, a0, s1
	li a3, 101
	lw a0, 0(a2)
	bne a0, a3, label198
	j label72
label79:
	li a1, 6
	bne a2, a1, label87
	lw a0, 0(s0)
	addiw a1, a0, 4
	ble s2, a1, label198
	sh2add a3, a0, s1
	li a4, 102
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a0, 1
	sh2add a4, a3, s1
	li a3, 97
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a0, 2
	sh2add a4, a3, s1
	li a3, 108
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a0, 3
	sh2add a3, a4, s1
	li a4, 115
	lw a2, 0(a3)
	bne a2, a4, label198
	sh2add a2, a1, s1
	li a3, 101
	lw a1, 0(a2)
	bne a1, a3, label198
	addiw a1, a0, 5
	li a0, 1
	sw a1, 0(s0)
	j label7
label87:
	li a1, 7
	beq a2, a1, label88
	j label198
label94:
	ble s2, a0, label550
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label97
	j label98
label157:
	bgt s2, a0, label159
	lw a0, 0(s0)
	j label161
label159:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	bne a2, zero, label160
label161:
	bgt s2, a0, label187
	j label163
label88:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label198
	sh2add a4, a1, s1
	li a3, 110
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 1
	sh2add a3, a4, s1
	li a4, 117
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 2
	sh2add a4, a3, s1
	li a3, 108
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a2, a0, s1
	lw a0, 0(a2)
	bne a0, a3, label198
	j label72
label21:
	li a0, 7
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label197:
	lw a0, 0(s0)
label10:
	ble s2, a0, label12
	lw a1, 0(s0)
	sh2add a3, a1, s1
	lw a0, 0(a3)
	xori a4, a0, 9
	xori t0, a0, 10
	xori a5, a0, 32
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t0, 1
	or a3, a3, a5
	xori a5, a0, 13
	or a3, a3, a4
	sltiu a0, a5, 1
	or a3, a3, a0
	beq a3, zero, label12
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label10
label24:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 45
	xori a3, a1, 43
	sltiu a1, a4, 1
	sltiu a2, a3, 1
	or a2, a2, a1
	beq a2, zero, label26
	addiw a0, a0, 1
	sw a0, 0(s0)
label26:
	ble s2, a0, label198
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label198
label29:
	ble s2, a1, label278
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bgeu a1, a2, label33
	addiw a1, a0, 1
	sw a1, 0(s0)
	j label29
label278:
	lw a0, 0(s0)
label33:
	bgt s2, a0, label35
	lw a0, 0(s0)
	j label39
label35:
	lw a0, 0(s0)
	li a3, 46
	sh2add a2, a0, s1
	lw a1, 0(a2)
	beq a1, a3, label36
label39:
	bgt s2, a0, label41
label317:
	li a0, 1
	j label7
label41:
	lw a0, 0(s0)
	li a3, 101
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bne a1, a3, label317
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label52
label43:
	ble s2, a0, label334
	lw a1, 0(s0)
	li a2, 45
	sh2add a3, a1, s1
	lw a0, 0(a3)
	beq a0, a2, label347
	mv a0, a1
label45:
	bgt s2, a0, label47
	j label317
label347:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label45
label47:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label317
	j label347
label160:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label157
label36:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label39
	sh2add a3, a0, s1
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label36
	j label39
label163:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label810
label187:
	sh2add a3, a0, s1
	li a2, 93
	lw a1, 0(a3)
	beq a1, a2, label58
	j label163
label810:
	lw a0, 0(s0)
label165:
	ble s2, a0, label816
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	beq a1, zero, label170
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label165
label816:
	lw a0, 0(s0)
label170:
	sh2add a2, a0, s1
	li a3, 44
	lw a1, 0(a2)
	beq a1, a3, label172
	lw a0, 0(s0)
label179:
	bgt s2, a0, label185
	lw a0, 0(s0)
label181:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label198
	j label58
label185:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label186
	j label181
label172:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label177
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a5, a1, 9
	xori a3, a1, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	xori a1, a1, 13
	sltiu a4, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a4
	or a2, a2, a3
	bne a2, zero, label172
label177:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label810
	j label198
label97:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label94
label550:
	lw a0, 0(s0)
label98:
	bgt s2, a0, label154
label100:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label573
label154:
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label58
	j label100
label573:
	lw a0, 0(s0)
label102:
	ble s2, a0, label579
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	bne a2, zero, label105
	j label106
label579:
	lw a0, 0(s0)
label106:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 58
	lw a1, 0(a3)
	bne a1, a2, label198
label604:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label114
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a5, a3, 1
	sltiu a2, a4, 1
	xori a4, a1, 10
	or a2, a2, a5
	sltiu a3, a4, 1
	xori a4, a1, 13
	or a2, a2, a3
	sltiu a1, a4, 1
	or a2, a2, a1
	bne a2, zero, label604
	j label114
label52:
	sh2add a2, a0, s1
	li a1, 43
	lw a0, 0(a2)
	beq a0, a1, label53
	lw a0, 0(s0)
	j label43
label105:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label102
label334:
	lw a0, 0(s0)
	j label45
label53:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label43
label114:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
label629:
	lw a0, 0(s0)
label116:
	ble s2, a0, label118
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a1, zero, label152
	j label119
label118:
	lw a0, 0(s0)
label119:
	sh2add a3, a0, s1
	li a2, 44
	lw a1, 0(a3)
	beq a1, a2, label121
	lw a0, 0(s0)
	j label143
label121:
	addiw a0, a0, 1
	sw a0, 0(s0)
label122:
	bgt s2, a0, label140
label124:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label652
label140:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a0, 0(a2)
	xori a5, a0, 9
	xori a3, a0, 32
	sltiu a4, a5, 1
	sltiu a2, a3, 1
	xori a3, a0, 10
	or a2, a2, a4
	xori a0, a0, 13
	sltiu a4, a3, 1
	sltiu a3, a0, 1
	or a2, a2, a4
	or a2, a2, a3
	bne a2, zero, label141
	j label124
label143:
	bgt s2, a0, label149
	lw a0, 0(s0)
label145:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label198
	j label58
label149:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a1, zero, label150
	j label145
label652:
	lw a0, 0(s0)
label126:
	ble s2, a0, label128
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a4, a1, 9
	xori a3, a1, 32
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	xori a3, a1, 10
	or a2, a2, a5
	sltiu a4, a3, 1
	xori a5, a1, 13
	or a2, a2, a4
	sltiu a3, a5, 1
	or a1, a2, a3
	bne a1, zero, label130
	j label131
label128:
	lw a0, 0(s0)
label131:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
label684:
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label138
label137:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label629
	j label198
label138:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label684
	j label137
label152:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label116
label141:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label122
label186:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label179
label130:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label126
label150:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label143
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s1, 32(sp)
	addi s1, sp, 0
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd ra, 8(sp)
	sw zero, 0(sp)
	jal getch
pcrel1254:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1254)
	li a1, 35
	bne a0, a1, label1175
	mv a0, zero
	mv t1, zero
	j label1158
label1175:
	mv s2, zero
.p2align 2
label1147:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	bne a0, a1, label1147
	lw a0, 0(sp)
	mv t1, s2
	bgt s2, a0, label1156
label1158:
	mv a0, zero
	mv a1, s0
	mv a2, t1
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
label1159:
	ble t1, a0, label1163
	lw a0, 0(sp)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a4, a2, 9
	xori t0, a2, 10
	xori a5, a2, 32
	xori a2, a2, 13
	sltiu a3, a5, 1
	sltiu a5, a4, 1
	sltiu a4, t0, 1
	or a3, a3, a5
	or a3, a3, a4
	sltiu a4, a2, 1
	or a3, a3, a4
	bne a3, zero, label1162
	j label1163
label1156:
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
	beq a2, zero, label1158
	addiw a0, a0, 1
	sw a0, 0(sp)
	ble t1, a0, label1158
	j label1156
label1162:
	addiw a0, a0, 1
	sw a0, 0(sp)
	j label1159
label1163:
	bne a1, zero, label1167
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
label1165:
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label1167:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1165
