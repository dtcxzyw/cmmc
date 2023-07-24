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
	ble s2, a1, label198
	lw a0, 0(s0)
	j label10
label198:
	mv a0, zero
	j label7
label10:
	ble s2, a0, label12
	lw a1, 0(s0)
	sh2add a3, a1, s1
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
	bne a3, zero, label190
label12:
	beq a2, zero, label179
	li a0, 1
	beq a2, a0, label14
	li a1, 2
	beq a2, a1, label334
	li a0, 3
	beq a2, a0, label338
	li a0, 4
	beq a2, a0, label342
	li a0, 5
	beq a2, a0, label51
	li a1, 6
	beq a2, a1, label65
	li a1, 7
	beq a2, a1, label60
	j label198
label65:
	lw a1, 0(s0)
	addiw a0, a1, 4
	ble s2, a0, label198
	sh2add a4, a1, s1
	li a3, 102
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a3, a1, 1
	sh2add a4, a3, s1
	li a3, 97
	lw a2, 0(a4)
	bne a2, a3, label198
	addiw a4, a1, 2
	sh2add a3, a4, s1
	li a4, 108
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 3
	sh2add a4, a3, s1
	li a3, 115
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a3, a0, s1
	li a2, 101
	lw a0, 0(a3)
	bne a0, a2, label198
	j label470
label179:
	lw a1, 0(s0)
	li a3, 123
	sh2add a2, a1, s1
	lw a0, 0(a2)
	bne a0, a3, label180
	li a2, 4
	j label4
label180:
	li a1, 91
	bne a0, a1, label181
	li a0, 3
	lw a1, 0(s0)
	mv a2, a0
	j label4
label181:
	li a1, 34
	bne a0, a1, label182
	li a0, 2
	lw a1, 0(s0)
	mv a2, a0
	j label4
label182:
	addiw a2, a0, -48
	xori a3, a0, 43
	sltiu a1, a2, 10
	sltiu a2, a3, 1
	xori a3, a0, 45
	or a1, a1, a2
	sltiu a2, a3, 1
	or a1, a1, a2
	beq a1, zero, label183
	li a0, 1
	lw a1, 0(s0)
	mv a2, a0
	j label4
label183:
	li a1, 116
	bne a0, a1, label185
	li a0, 5
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label185:
	li a1, 102
	beq a0, a1, label186
	li a1, 110
	beq a0, a1, label188
	j label198
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label470:
	addiw a1, a1, 5
	li a0, 1
	sw a1, 0(s0)
	j label7
label381:
	addiw a1, a1, 4
	li a0, 1
	sw a1, 0(s0)
	j label7
label60:
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
	j label381
label51:
	lw a1, 0(s0)
	addiw a0, a1, 3
	ble s2, a0, label198
	sh2add a3, a1, s1
	li a4, 116
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a4, a1, 1
	sh2add a3, a4, s1
	li a4, 114
	lw a2, 0(a3)
	bne a2, a4, label198
	addiw a3, a1, 2
	sh2add a4, a3, s1
	li a3, 117
	lw a2, 0(a4)
	bne a2, a3, label198
	sh2add a3, a0, s1
	li a2, 101
	lw a0, 0(a3)
	bne a0, a2, label198
	j label381
label188:
	li a0, 7
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label334:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label171
label571:
	addiw a1, a0, 1
	li a0, 1
	sw a1, 0(s0)
	j label7
label171:
	bgt s2, a0, label173
	lw a0, 0(s0)
	j label176
label173:
	lw a0, 0(s0)
	li a2, 34
	sh2add a3, a0, s1
	lw a1, 0(a3)
	beq a1, a2, label176
	xori a3, a1, 92
	addiw a2, a0, 1
	sltiu a1, a3, 1
	addw a0, a1, a2
	sw a0, 0(s0)
	j label171
label176:
	ble s2, a0, label198
	lw a0, 0(s0)
	li a2, 34
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label198
	j label571
label14:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 43
	xori a1, a1, 45
	sltiu a2, a3, 1
	sltiu a3, a1, 1
	or a2, a2, a3
	beq a2, zero, label15
	addiw a0, a0, 1
	sw a0, 0(s0)
label15:
	ble s2, a0, label198
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label198
label18:
	ble s2, a1, label237
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a1, a3, -48
	bgeu a1, a2, label20
	addiw a1, a0, 1
	sw a1, 0(s0)
	j label18
label190:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label10
label237:
	lw a0, 0(s0)
label20:
	bgt s2, a0, label22
	lw a0, 0(s0)
label26:
	bgt s2, a0, label28
label266:
	li a0, 1
	j label7
label28:
	lw a0, 0(s0)
	li a2, 101
	sh2add a3, a0, s1
	lw a1, 0(a3)
	bne a1, a2, label266
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label30
label33:
	bgt s2, a0, label41
	j label293
label338:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label136:
	bgt s2, a0, label165
	lw a0, 0(s0)
label138:
	bgt s2, a0, label164
	j label140
label165:
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
	sltiu a3, a4, 1
	or a1, a2, a3
	beq a1, zero, label138
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label136
label140:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label723
label164:
	sh2add a2, a0, s1
	li a3, 93
	lw a1, 0(a2)
	beq a1, a3, label571
	j label140
label723:
	lw a0, 0(s0)
label142:
	ble s2, a0, label144
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
	beq a2, zero, label147
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label142
label144:
	lw a0, 0(s0)
label147:
	sh2add a2, a0, s1
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label751
label149:
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label153
label152:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label723
	j label198
label153:
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
	bne a2, zero, label149
	j label152
label751:
	lw a0, 0(s0)
label156:
	ble s2, a0, label782
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
	bne a2, zero, label163
	j label158
label782:
	lw a0, 0(s0)
label158:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 93
	lw a1, 0(a3)
	bne a1, a2, label198
	j label571
label342:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
label73:
	bgt s2, a0, label133
	lw a0, 0(s0)
label75:
	bgt s2, a0, label131
	j label77
label133:
	lw a0, 0(s0)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a4, a1, 32
	sltiu a2, a4, 1
	sltiu a4, a3, 1
	xori a3, a1, 10
	or a2, a2, a4
	sltiu a5, a3, 1
	xori a4, a1, 13
	or a2, a2, a5
	sltiu a3, a4, 1
	or a1, a2, a3
	bne a1, zero, label134
	j label75
label77:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label486
label131:
	sh2add a2, a0, s1
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label571
	j label77
label486:
	lw a0, 0(s0)
label79:
	bgt s2, a0, label81
	lw a0, 0(s0)
	j label83
label81:
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
	bne a2, zero, label82
label83:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 58
	lw a1, 0(a3)
	bne a1, a2, label198
	addiw a0, a0, 1
	sw a0, 0(s0)
label87:
	bgt s2, a0, label128
label89:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	j label527
label128:
	lw a1, 0(s0)
	sh2add a2, a1, s1
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
	bne a2, zero, label129
	j label89
label527:
	lw a0, 0(s0)
label91:
	bgt s2, a0, label126
	lw a0, 0(s0)
label93:
	sh2add a3, a0, s1
	li a2, 44
	lw a1, 0(a3)
	beq a1, a2, label540
	lw a0, 0(s0)
label96:
	bgt s2, a0, label99
	lw a0, 0(s0)
	j label101
label99:
	lw a0, 0(s0)
	sh2add a2, a0, s1
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
	bne a2, zero, label100
label101:
	ble s2, a0, label198
	sh2add a3, a0, s1
	li a2, 125
	lw a1, 0(a3)
	bne a1, a2, label198
	j label571
label126:
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
	bne a2, zero, label127
	j label93
label22:
	lw a0, 0(s0)
	li a3, 46
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bne a1, a3, label26
label23:
	addiw a0, a0, 1
	sw a0, 0(s0)
	ble s2, a0, label26
	sh2add a3, a0, s1
	lw a2, 0(a3)
	li a3, 10
	addiw a1, a2, -48
	bltu a1, a3, label23
	j label26
label134:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label73
label30:
	sh2add a2, a0, s1
	li a1, 43
	lw a0, 0(a2)
	beq a0, a1, label31
	lw a0, 0(s0)
	j label33
label31:
	lw a1, 0(s0)
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label33
label82:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label79
label293:
	lw a0, 0(s0)
label35:
	bgt s2, a0, label37
	j label266
label306:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label35
label37:
	lw a1, 0(s0)
	sh2add a2, a1, s1
	lw a3, 0(a2)
	li a2, 10
	addiw a0, a3, -48
	bgeu a0, a2, label266
	j label306
label41:
	lw a1, 0(s0)
	li a2, 45
	sh2add a3, a1, s1
	lw a0, 0(a3)
	beq a0, a2, label306
	mv a0, a1
	j label35
label129:
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label87
label186:
	li a0, 6
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	j label7
label127:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label91
label540:
	addiw a0, a0, 1
	sw a0, 0(s0)
label105:
	ble s2, a0, label107
	lw a1, 0(s0)
	sh2add a2, a1, s1
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
	sltiu a0, a4, 1
	or a2, a2, a0
	beq a2, zero, label107
	addiw a0, a1, 1
	sw a0, 0(s0)
	j label105
label107:
	li a0, 2
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	beq a0, zero, label198
	lw a0, 0(s0)
label109:
	bgt s2, a0, label120
	lw a0, 0(s0)
label111:
	ble s2, a0, label198
	sh2add a2, a0, s1
	li a3, 58
	lw a1, 0(a2)
	bne a1, a3, label198
label597:
	addiw a0, a0, 1
	sw a0, 0(s0)
	bgt s2, a0, label118
label117:
	mv a0, zero
	mv a1, s1
	mv a2, s2
	mv a3, s0
	jal detect_item
	bne a0, zero, label527
	j label198
label118:
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
	bne a2, zero, label597
	j label117
label120:
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
	bne a1, zero, label121
	j label111
label163:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label156
label121:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label109
label100:
	addiw a0, a0, 1
	sw a0, 0(s0)
	j label96
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s1, 32(sp)
	addi s1, sp, 0
	sd s0, 24(sp)
	sd s2, 8(sp)
	sd ra, 16(sp)
	sw zero, 0(sp)
	jal getch
pcrel1207:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1207)
	li a1, 35
	bne a0, a1, label1131
	mv a0, zero
	mv t1, zero
	j label1114
label1131:
	mv s2, zero
label1103:
.p2align 2
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a1, 35
	addiw s2, s2, 1
	bne a0, a1, label1103
	lw a0, 0(sp)
	mv t1, s2
	bgt s2, a0, label1112
label1114:
	mv a0, zero
	mv a1, s0
	mv a2, t1
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 0(sp)
label1115:
	ble t1, a0, label1119
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
	bne a3, zero, label1118
	j label1119
label1112:
	lw a0, 0(sp)
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
	beq a2, zero, label1114
	addiw a0, a0, 1
	sw a0, 0(sp)
	ble t1, a0, label1114
	j label1112
label1118:
	addiw a0, a0, 1
	sw a0, 0(sp)
	j label1115
label1119:
	bne a1, zero, label1123
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
label1121:
	ld ra, 16(sp)
	ld s2, 8(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label1123:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
	j label1121
