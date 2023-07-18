.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
.text
find:
	addi sp, sp, -48
pcrel67:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel67)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label2
	mv a0, s0
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label2:
	sh2add a0, s2, s1
	lw s3, 0(a0)
	bne s2, s3, label5
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label12
label5:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label8
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label12
label8:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label11
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label12
label11:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label12
.globl main
main:
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a1, 57
	mv s0, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label149
	mv s1, zero
	j label141
label149:
	mv s1, s0
	mv s0, zero
	addiw a0, s1, -48
	li a1, 10
	bgeu a0, a1, label154
	j label153
label154:
	mv s2, zero
label75:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s2
	or a1, a1, a2
	mv s1, a3
	bne s0, zero, label447
	mv s1, s2
label447:
	beq a1, zero, label175
	mv s0, a0
	mv s2, zero
	j label138
label175:
	mv s2, a0
	mv s0, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label180
label179:
	mv s3, zero
	j label80
label180:
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
	bne s0, zero, label449
	mv a0, zero
pcrel512:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(pcrel512)
	ble s1, zero, label200
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	j label500
label449:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label449)
	ble s1, zero, label200
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
label500:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	j label85
label200:
	mv s1, a0
	beq a0, zero, label89
	j label90
label207:
	mv s1, a0
	beq a0, zero, label89
	j label90
label89:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
label90:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label91
	j label90
label91:
	li a1, 81
	bne a0, a1, label92
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label304
	mv s3, zero
	j label116
label304:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bgeu a0, a1, label318
	j label485
label318:
	mv s4, zero
label122:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label461
	mv s2, s4
label461:
	beq a1, zero, label328
	mv s3, a0
	mv s4, zero
	j label132
label328:
	mv s4, a0
	mv s3, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label333
	j label332
label333:
	mv s5, zero
	j label127
label138:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label467
	mv a1, s2
label467:
	beq a2, zero, label381
	mv s0, a0
	mv s2, a1
	j label138
label381:
	mv s2, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label180
	j label179
label332:
	mv s5, zero
	j label129
label132:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label465
	mv a2, s4
label465:
	beq a1, zero, label361
	mv s3, a0
	mv s4, a2
	j label132
label361:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label333
	j label332
label129:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s5, s4, a3
	bgeu a1, a2, label127
	mv s4, a0
	j label129
label92:
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label229
	mv s3, zero
	j label93
label229:
	mv s3, s2
	mv s2, zero
	addiw a0, s3, -48
	li a1, 10
	bgeu a0, a1, label243
label480:
	mv s4, zero
	j label112
label93:
	jal getch
	li a2, 57
	li a3, 45
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label451
	mv a2, s3
label451:
	beq a1, zero, label238
	mv s2, a0
	mv s3, a2
	j label93
label238:
	mv s3, a0
	mv s2, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label243
	j label480
label243:
	mv s4, zero
label99:
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label453
	j label452
label112:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s4, s3, a2
	bgeu a1, a3, label99
	mv s3, a0
	j label112
label485:
	mv s4, zero
	j label135
label116:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label459
	mv a2, s3
label459:
	beq a1, zero, label313
	mv s2, a0
	mv s3, a2
	j label116
label313:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label318
	j label485
label135:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label122
	mv s2, a0
	j label135
label452:
	mv a0, s4
label453:
	jal find
	mv s2, a0
	jal getch
	li a2, 57
	mv s3, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label254
	mv s4, zero
	j label109
label254:
	mv s4, s3
	mv s3, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label259
label258:
	mv s5, zero
	j label106
label259:
	mv s5, zero
label104:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label455
	j label454
label455:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	beq s1, zero, label89
	j label90
label106:
	jal getch
	sh2add a3, s5, s5
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addiw a2, a4, -48
	addw s5, s4, a2
	bgeu a1, a3, label104
	mv s4, a0
	j label106
label109:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label457
	mv a2, s4
label457:
	beq a1, zero, label286
	mv s3, a0
	mv s4, a2
	j label109
label286:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label259
	j label258
label85:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	blt s1, a1, label207
	j label85
label153:
	mv s2, zero
	j label72
label141:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s0, a3, label469
	mv a1, s1
label469:
	beq a2, zero, label390
	mv s0, a0
	mv s1, a1
	j label141
label390:
	mv s1, a0
	mv s0, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label154
	j label153
label80:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bgeu a1, a3, label83
	mv s2, a0
	j label80
label72:
	jal getch
	sh2add a2, s2, s2
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s2, s1, a4
	bgeu a1, a2, label75
	mv s1, a0
	j label72
label127:
	mv a0, s2
	jal find
	subw a1, zero, s5
	mv a2, a0
	mv a0, a1
	bne s3, zero, label463
	mv a0, s5
label463:
	jal find
	xor a1, a2, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label89
	j label90
label454:
	mv a0, s5
	j label455
label83:
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label449
	mv a0, s3
	j label449
