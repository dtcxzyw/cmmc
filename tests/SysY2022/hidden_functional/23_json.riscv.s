.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 3
__cmmc_jumptable209:
	.word	label105-__cmmc_jumptable209
	.word	label21-__cmmc_jumptable209
	.word	label56-__cmmc_jumptable209
	.word	label72-__cmmc_jumptable209
	.word	label113-__cmmc_jumptable209
	.word	label176-__cmmc_jumptable209
	.word	label65-__cmmc_jumptable209
	.word	label14-__cmmc_jumptable209
.bss
.p2align 3
buffer:
	.zero	200000000
.text
.p2align 2
detect_item:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s2, 16(sp)
	mv a1, a0
	mv s2, a2
	sd s1, 24(sp)
	mv s1, a3
	lw a0, 0(a3)
label4:
	bgt s2, a0, label9
label188:
	mv a0, zero
label7:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label9:
	bgt s2, a0, label11
label13:
	auipc a4, %pcrel_hi(__cmmc_jumptable209)
	addi a2, a4, %pcrel_lo(label13)
	sh2add a0, a1, a2
	lw a3, 0(a0)
	add a4, a2, a3
	jr a4
label14:
	lw a1, 0(s1)
	addiw a2, a1, 3
	ble s2, a2, label188
	sh2add a2, a1, s0
	li a4, 110
	lw a3, 0(a2)
	bne a3, a4, label188
	lw a3, 4(a2)
	li a4, 117
	bne a3, a4, label188
	lw a3, 8(a2)
	li a4, 108
	bne a3, a4, label188
	lw a3, 12(a2)
	li a0, 108
	bne a3, a0, label188
	j label245
label11:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a2, 0(a3)
	xori a4, a2, 9
	xori t0, a2, 32
	sltiu t1, a4, 1
	sltiu a5, t0, 1
	xori t0, a2, 10
	or a3, a5, t1
	sltiu a4, t0, 1
	xori t1, a2, 13
	sltiu a5, t1, 1
	or t0, a4, a5
	or a2, a3, t0
	beq a2, zero, label13
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label9
label56:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
label57:
	ble s2, a0, label371
	lw a1, 0(s1)
	li a3, 34
	sh2add a2, a1, s0
	lw a0, 0(a2)
	bne a0, a3, label60
label61:
	ble s2, a1, label188
	lw a0, 0(s1)
	li a3, 34
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label188
	j label54
label72:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
label73:
	bgt s2, a0, label75
	lw a0, 0(s1)
label77:
	bgt s2, a0, label79
label80:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
label471:
	lw a0, 0(s1)
label82:
	bgt s2, a0, label102
	lw a0, 0(s1)
label84:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label483
label86:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label89
label91:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label471
	j label188
label113:
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
label114:
	bgt s2, a0, label174
	lw a0, 0(s1)
label116:
	bgt s2, a0, label172
label118:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
	lw a0, 0(s1)
label120:
	bgt s2, a0, label122
	lw a1, 0(s1)
label125:
	ble s2, a1, label188
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label188
	addiw a0, a1, 1
	sw a0, 0(s1)
label129:
	ble s2, a0, label133
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori a5, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu t0, a3, 1
	sltiu a4, a2, 1
	sltiu a3, a5, 1
	or a2, a4, t0
	xori t0, a1, 13
	sltiu t1, t0, 1
	or a4, a3, t1
	or a1, a2, a4
	beq a1, zero, label133
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label129
label60:
	xori a3, a0, 92
	addi a4, a1, 1
	sltiu a2, a3, 1
	addw a0, a2, a4
	sw a0, 0(s1)
	j label57
label75:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori t1, a1, 10
	xori a4, a1, 9
	xori t0, a1, 32
	sltiu a5, a4, 1
	sltiu a3, t0, 1
	sltiu a4, t1, 1
	or a2, a3, a5
	xori a3, a1, 13
	sltiu t0, a3, 1
	or a5, a4, t0
	or a1, a2, a5
	beq a1, zero, label77
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label73
label174:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori t1, a1, 10
	xori a4, a1, 9
	xori t0, a1, 32
	sltiu a5, a4, 1
	sltiu a3, t0, 1
	sltiu a4, t1, 1
	xori t0, a1, 13
	or a2, a3, a5
	sltiu a5, t0, 1
	or a3, a4, a5
	or a1, a2, a3
	beq a1, zero, label116
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label114
label21:
	lw a1, 0(s1)
	sh2add a4, a1, s0
	lw a0, 0(a4)
	xori a4, a0, 45
	xori a3, a0, 43
	sltiu a5, a4, 1
	sltiu a2, a3, 1
	or a3, a2, a5
	beq a3, zero, label22
	addiw a1, a1, 1
	sw a1, 0(s1)
label22:
	ble s2, a1, label188
	lw a1, 0(s1)
	li a4, 10
	sh2add a2, a1, s0
	lw a3, 0(a2)
	addiw a0, a3, -48
	bgeu a0, a4, label188
label25:
	ble s2, a1, label273
	lw a0, 0(s1)
	li a4, 10
	sh2add a3, a0, s0
	lw a2, 0(a3)
	addiw a1, a2, -48
	bgeu a1, a4, label30
	addiw a1, a0, 1
	sw a1, 0(s1)
	j label25
label102:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t0, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t0, 1
	or a2, a4, a5
	xori a4, a1, 13
	sltiu a5, a4, 1
	or t0, a3, a5
	or a1, a2, t0
	beq a1, zero, label84
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label82
label89:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori t0, a1, 10
	xori t1, a1, 9
	xori a4, a1, 32
	sltiu a5, t1, 1
	sltiu a3, a4, 1
	sltiu a4, t0, 1
	or a2, a3, a5
	xori a5, a1, 13
	sltiu t1, a5, 1
	or a3, a4, t1
	or a1, a2, a3
	bne a1, zero, label86
	j label91
label176:
	lw a1, 0(s1)
	addiw a2, a1, 3
	ble s2, a2, label188
	sh2add a2, a1, s0
	li a4, 116
	lw a3, 0(a2)
	bne a3, a4, label188
	lw a3, 4(a2)
	li a4, 114
	bne a3, a4, label188
	lw a3, 8(a2)
	li a4, 117
	bne a3, a4, label188
	lw a3, 12(a2)
	li a0, 101
	bne a3, a0, label188
label245:
	addiw a2, a1, 4
	li a0, 1
	sw a2, 0(s1)
	j label7
label65:
	lw a0, 0(s1)
	addiw a1, a0, 4
	ble s2, a1, label188
	sh2add a1, a0, s0
	li a3, 102
	lw a2, 0(a1)
	bne a2, a3, label188
	lw a2, 4(a1)
	li a3, 97
	bne a2, a3, label188
	lw a2, 8(a1)
	li a3, 108
	bne a2, a3, label188
	lw a2, 12(a1)
	li a3, 115
	bne a2, a3, label188
	lw a2, 16(a1)
	li a3, 101
	bne a2, a3, label188
	addi a1, a0, 5
	li a0, 1
	sw a1, 0(s1)
	j label7
label105:
	lw a0, 0(s1)
	li a3, 123
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label106
	li a1, 4
	j label4
label106:
	li a0, 91
	bne a1, a0, label107
	li a1, 3
	lw a0, 0(s1)
	j label4
label122:
	lw a1, 0(s1)
	sh2add a2, a1, s0
	lw a0, 0(a2)
	xori t1, a0, 13
	xori a4, a0, 9
	xori t0, a0, 32
	sltiu a5, a4, 1
	sltiu a3, t0, 1
	xori t0, a0, 10
	or a2, a3, a5
	sltiu a4, t0, 1
	sltiu a3, t1, 1
	or a5, a4, a3
	or a0, a2, a5
	beq a0, zero, label125
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label120
label172:
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	beq a1, a3, label54
	j label118
label107:
	li a0, 34
	beq a1, a0, label574
	xori a2, a1, 43
	xori a3, a1, 45
	addiw a5, a1, -48
	sltiu a0, a2, 1
	sltiu a4, a3, 1
	sltiu a3, a5, 10
	or a2, a0, a4
	or a0, a2, a3
	beq a0, zero, label109
	li a1, 1
	lw a0, 0(s1)
	j label4
label79:
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label80
label54:
	addiw a2, a0, 1
	li a0, 1
	sw a2, 0(s1)
	j label7
label273:
	lw a0, 0(s1)
label30:
	bgt s2, a0, label33
	lw a0, 0(s1)
label37:
	ble s2, a0, label314
	lw a0, 0(s1)
	li a3, 101
	sh2add a1, a0, s0
	lw a2, 0(a1)
	bne a2, a3, label314
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label41
	lw a2, 4(a1)
	li a0, 43
	bne a2, a0, label360
	lw a1, 0(s1)
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label41
label314:
	li a0, 1
	j label7
label33:
	lw a0, 0(s1)
	li a3, 46
	sh2add a2, a0, s0
	lw a1, 0(a2)
	bne a1, a3, label37
label34:
	addiw a0, a0, 1
	sw a0, 0(s1)
	ble s2, a0, label37
	sh2add a2, a0, s0
	li a4, 10
	lw a3, 0(a2)
	addiw a1, a3, -48
	bltu a1, a4, label34
	j label37
label133:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
label667:
	lw a0, 0(s1)
label135:
	ble s2, a0, label171
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori a5, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu t0, a3, 1
	sltiu a4, a2, 1
	sltiu a3, a5, 1
	or a2, a4, t0
	xori t0, a1, 13
	sltiu t1, t0, 1
	or a4, a3, t1
	or a1, a2, a4
	beq a1, zero, label137
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label135
label171:
	lw a0, 0(s1)
label137:
	sh2add a2, a0, s0
	li a3, 44
	lw a1, 0(a2)
	bne a1, a3, label679
label139:
	addiw a0, a0, 1
	sw a0, 0(s1)
	bgt s2, a0, label142
label144:
	li a0, 2
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	beq a0, zero, label188
	lw a0, 0(s1)
label146:
	bgt s2, a0, label149
	lw a1, 0(s1)
label151:
	ble s2, a1, label188
	sh2add a3, a1, s0
	li a4, 58
	lw a2, 0(a3)
	bne a2, a4, label188
	addiw a0, a1, 1
	sw a0, 0(s1)
label155:
	bgt s2, a0, label157
label159:
	mv a0, zero
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	bne a0, zero, label667
	j label188
label142:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t0, a1, 13
	xori t1, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t1, 1
	or a2, a4, a5
	sltiu a4, t0, 1
	or a5, a3, a4
	or a1, a2, a5
	bne a1, zero, label139
	j label144
label41:
	bgt s2, a0, label47
	lw a0, 0(s1)
	j label43
label344:
	addiw a0, a0, 1
	sw a0, 0(s1)
label43:
	ble s2, a0, label314
	lw a0, 0(s1)
	li a4, 10
	sh2add a2, a0, s0
	lw a3, 0(a2)
	addiw a1, a3, -48
	bgeu a1, a4, label314
	j label344
label149:
	lw a1, 0(s1)
	sh2add a3, a1, s0
	lw a0, 0(a3)
	xori t1, a0, 10
	xori a3, a0, 9
	xori a2, a0, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t1, 1
	or a2, a4, a5
	xori a5, a0, 13
	sltiu t0, a5, 1
	or a4, a3, t0
	or a0, a2, a4
	beq a0, zero, label151
	addiw a0, a1, 1
	sw a0, 0(s1)
	j label146
label109:
	li a0, 116
	bne a1, a0, label110
	li a1, 5
	lw a0, 0(s1)
	j label4
label47:
	lw a0, 0(s1)
	li a3, 45
	sh2add a2, a0, s0
	lw a1, 0(a2)
	beq a1, a3, label344
	j label43
label483:
	lw a0, 0(s1)
label93:
	bgt s2, a0, label96
	lw a0, 0(s1)
label98:
	ble s2, a0, label188
	sh2add a2, a0, s0
	li a3, 93
	lw a1, 0(a2)
	bne a1, a3, label188
	j label54
label96:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori t1, a1, 10
	xori t0, a1, 9
	xori a3, a1, 32
	sltiu a5, t0, 1
	sltiu a4, a3, 1
	xori t0, a1, 13
	sltiu a3, t1, 1
	or a2, a4, a5
	sltiu a5, t0, 1
	or a4, a3, a5
	or a1, a2, a4
	beq a1, zero, label98
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label93
label110:
	li a0, 102
	beq a1, a0, label591
	li a2, 110
	bne a1, a2, label188
	li a0, 7
	mv a1, s0
	mv a2, s2
	mv a3, s1
	jal detect_item
	j label7
label157:
	lw a0, 0(s1)
	sh2add a3, a0, s0
	lw a1, 0(a3)
	xori t0, a1, 10
	xori a3, a1, 9
	xori a2, a1, 32
	sltiu a5, a3, 1
	sltiu a4, a2, 1
	sltiu a3, t0, 1
	or a2, a4, a5
	xori a4, a1, 13
	sltiu a5, a4, 1
	or t0, a3, a5
	or a1, a2, t0
	beq a1, zero, label159
	addiw a0, a0, 1
	sw a0, 0(s1)
	j label155
label360:
	lw a0, 0(s1)
	j label41
label591:
	li a1, 6
	lw a0, 0(s1)
	j label4
label679:
	lw a0, 0(s1)
	j label161
label163:
	lw a0, 0(s1)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a3, a1, 9
	xori a5, a1, 32
	sltiu t0, a3, 1
	sltiu a4, a5, 1
	xori a5, a1, 10
	or a2, a4, t0
	sltiu a3, a5, 1
	xori a4, a1, 13
	sltiu t0, a4, 1
	or a5, a3, t0
	or a1, a2, a5
	beq a1, zero, label165
	addiw a0, a0, 1
	sw a0, 0(s1)
label161:
	bgt s2, a0, label163
	lw a0, 0(s1)
label165:
	ble s2, a0, label188
	sh2add a2, a0, s0
	li a3, 125
	lw a1, 0(a2)
	bne a1, a3, label188
	j label54
label371:
	lw a1, 0(s1)
	j label61
label574:
	li a1, 2
	lw a0, 0(s1)
	j label4
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[4] RegSpill[0] CalleeSaved[48]
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 48
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	sw zero, 48(sp)
	jal getch
	li s3, 35
pcrel1216:
	auipc a1, %pcrel_hi(buffer)
	addi s0, a1, %pcrel_lo(pcrel1216)
	beq a0, s3, label1133
	mv s2, s0
	mv s4, zero
.p2align 2
label1104:
	sw a0, 0(s2)
	jal getch
	addiw a1, s4, 1
	beq a0, s3, label1139
	addi s2, s2, 4
	mv s4, a1
	j label1104
label1139:
	lw a0, 48(sp)
	mv t2, a1
label1113:
	bgt t2, a0, label1115
label1117:
	mv a0, zero
	mv a1, s0
	mv a2, t2
	mv a3, s1
	jal detect_item
	mv a1, a0
	lw a0, 48(sp)
label1118:
	ble t2, a0, label1122
	lw a0, 48(sp)
	sh2add a5, a0, s0
	lw a2, 0(a5)
	xori a5, a2, 9
	xori t0, a2, 10
	xori a3, a2, 32
	sltiu t1, a5, 1
	sltiu a4, a3, 1
	sltiu a5, t0, 1
	or a3, a4, t1
	xori t1, a2, 13
	sltiu a4, t1, 1
	or t0, a5, a4
	or a2, a3, t0
	beq a2, zero, label1122
	addiw a0, a0, 1
	sw a0, 48(sp)
	j label1118
label1115:
	lw a0, 48(sp)
	sh2add a2, a0, s0
	lw a1, 0(a2)
	xori a4, a1, 9
	xori t0, a1, 32
	sltiu a5, a4, 1
	sltiu a3, t0, 1
	xori t0, a1, 10
	or a2, a3, a5
	sltiu a4, t0, 1
	xori a5, a1, 13
	sltiu t1, a5, 1
	or a3, a4, t1
	or a1, a2, a3
	beq a1, zero, label1117
	addiw a0, a0, 1
	sw a0, 48(sp)
	j label1113
label1122:
	bne a1, zero, label1125
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
	j label1123
label1125:
	li a0, 111
	jal putch
	li a0, 107
	jal putch
	li a0, 10
	jal putch
	mv a0, zero
label1123:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 56
	ret
label1133:
	mv a0, zero
	mv t2, zero
	j label1113
