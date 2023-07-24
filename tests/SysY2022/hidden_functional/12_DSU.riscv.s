.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
fa:
	.zero	400020
.text
find:
	addi sp, sp, -48
pcrel68:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel68)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	beq s0, s2, label22
	sh2add a1, s2, a0
	lw s3, 0(a1)
	beq s2, s3, label29
	j label28
label22:
	mv a0, s0
	j label12
label28:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	beq s3, s4, label38
	j label37
label29:
	mv a0, s2
label3:
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label12
label37:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	beq s4, a0, label47
	j label11
label38:
	mv a0, s3
label6:
	sh2add a1, s2, s1
	sw a0, 0(a1)
	j label3
label47:
	mv a0, s4
label9:
	sh2add a1, s3, s1
	sw a0, 0(a1)
	j label6
label12:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label11:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	j label9
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
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label150
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label164
	j label163
label150:
	mv s1, a0
	mv s0, zero
label70:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s1, a3, label437
	mv a1, s0
label437:
	bne a2, zero, label159
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label164
	j label163
label159:
	mv s1, a0
	mv s0, a1
	j label70
label163:
	mv s2, zero
	j label76
label164:
	mv s1, a0
	mv s2, zero
	j label142
label76:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s2
	or a1, a1, a3
	mv s1, a2
	bne s0, zero, label439
	mv s1, s2
label439:
	bne a1, zero, label174
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label179
	j label178
label174:
	mv s2, a0
	mv s0, zero
	j label139
label178:
	mv s3, zero
	subw a1, zero, zero
	mv a0, a1
	bne s0, zero, label441
	j label440
label179:
	mv s2, a0
	mv s3, zero
	j label136
label440:
	mv a0, s3
label441:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label441)
	bgt s1, zero, label188
label187:
	mv s1, a0
	j label85
label188:
	li a1, 1
label83:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label83
	j label187
label85:
	bne s1, zero, label88
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
label136:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bltu a1, a3, label371
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label441
	j label440
label371:
	mv s2, a0
	j label136
label139:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s2, a3, label459
	mv a1, s0
label459:
	bne a2, zero, label380
	mv s0, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label179
	j label178
label380:
	mv s2, a0
	mv s0, a1
	j label139
label142:
	jal getch
	sh2add a4, s2, s2
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s2, s1, a2
	bgeu a1, a3, label76
	mv s1, a0
	j label142
label88:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	bne a1, zero, label88
	li a1, 81
	bne a0, a1, label90
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label292
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label306
	j label305
label292:
	mv s4, a0
	mv s2, zero
label114:
	jal getch
	li s3, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label451
	mv s3, s2
label451:
	bne a1, zero, label301
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label306
	j label305
label301:
	mv s4, a0
	mv s2, s3
	j label114
label305:
	mv s4, zero
	j label123
label306:
	mv s2, a0
	mv s4, zero
label120:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s4, s2, a2
	bgeu a1, a3, label123
	mv s2, a0
	j label120
label123:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s4
	or a1, a1, a3
	mv s2, a2
	bne s3, zero, label453
	mv s2, s4
label453:
	bne a1, zero, label327
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label332
	j label331
label327:
	mv s4, a0
	mv s3, zero
	j label133
label331:
	mv a2, zero
	j label128
label332:
	mv s4, a0
	mv s5, zero
	j label130
label128:
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label455
	mv a0, a2
label455:
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	j label85
label130:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	li a3, 10
	addw a2, s4, a4
	bgeu a1, a3, label128
	mv s4, a0
	mv s5, a2
	j label130
label133:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label457
	mv a2, s3
label457:
	bne a1, zero, label360
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label332
	j label331
label360:
	mv s4, a0
	mv s3, a2
	j label133
label90:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label217
	mv s2, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label231
	j label230
label217:
	mv s3, a0
	mv s2, zero
label91:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label443
	mv a2, s2
label443:
	bne a1, zero, label226
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label231
	j label230
label226:
	mv s3, a0
	mv s2, a2
	j label91
label230:
	mv s4, zero
	subw a1, zero, zero
	mv a0, a1
	bne s2, zero, label445
	j label444
label231:
	mv s3, a0
	mv s4, zero
	j label110
label444:
	mv a0, s4
label445:
	jal find
	mv s2, a0
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label242
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label256
	j label255
label242:
	mv s4, a0
	mv s3, zero
label99:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s4, a3, label447
	mv a2, s3
label447:
	bne a1, zero, label251
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label256
	j label255
label251:
	mv s4, a0
	mv s3, a2
	j label99
label255:
	mv s5, zero
	subw a1, zero, zero
	mv a0, a1
	bne s3, zero, label449
	j label448
label256:
	mv s4, a0
	mv s5, zero
	j label107
label448:
	mv a0, s5
label449:
	jal find
	addiw s1, s1, -1
	sh2add a1, s2, s0
	sw a0, 0(a1)
	j label85
label107:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label274
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label449
	j label448
label274:
	mv s4, a0
	j label107
label110:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s4, s3, a3
	bltu a1, a2, label285
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label445
	j label444
label285:
	mv s3, a0
	j label110
