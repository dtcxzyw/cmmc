.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
fa:
	.zero	400020
.text
find:
.p2align 2
	addi sp, sp, -48
pcrel73:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel73)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label4
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label4:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label7
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label10
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
label10:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label13
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label154
	mv s0, zero
	li a2, 10
	bltu a1, a2, label159
	j label479
label154:
	mv s1, a0
	mv s2, zero
	j label147
label159:
	mv s1, a0
	mv s2, zero
.p2align 2
label78:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s2, s1, a2
	bgeu a1, a3, label81
	mv s1, a0
	j label78
label81:
	jal getch
	subw a2, zero, s2
	addiw a1, a0, -48
	mv s1, a2
	bne s0, zero, label449
	mv s1, s2
label449:
	li a2, 9
	bgtu a1, a2, label177
	mv s0, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label182
	mv s3, zero
	mv a1, zero
	mv a0, zero
label504:
	mv a0, s3
	j label451
label177:
	mv s2, a0
	mv s3, zero
	j label144
label182:
	mv s2, a0
	mv s3, zero
.p2align 2
label86:
	jal getch
	sh2add a4, s3, s3
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s3, s2, a2
	bltu a1, a3, label191
	subw a1, zero, s3
	mv a0, a1
	bne s0, zero, label451
	j label504
label191:
	mv s2, a0
	j label86
label451:
	auipc a1, %pcrel_hi(fa)
	addi s0, a1, %pcrel_lo(label451)
	bgt s1, zero, label200
	mv s1, a0
	bne a0, zero, label94
	j label93
.p2align 2
label200:
	li a1, 1
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label142
	mv s1, a0
	bne a0, zero, label94
	j label93
.p2align 2
label144:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s2, a2, label469
	mv s0, s3
.p2align 2
label469:
	li a2, 9
	bgtu a1, a2, label363
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label182
	mv s3, zero
	mv a1, zero
	mv a0, zero
	bne s0, zero, label451
	j label504
label363:
	mv s2, a0
	mv s3, s0
	j label144
.p2align 2
label147:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label471
	mv s0, s2
.p2align 2
label471:
	li a2, 9
	bgtu a1, a2, label371
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label159
	j label479
label371:
	mv s1, a0
	mv s2, s0
	j label147
label93:
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
.p2align 2
label495:
	mv s4, zero
.p2align 2
label126:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label461
	mv s2, s4
.p2align 2
label461:
	li a2, 9
	bgtu a1, a2, label311
	mv s3, zero
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label316
.p2align 2
label496:
	mv a2, zero
	j label131
.p2align 2
label311:
	mv s4, a0
	mv s3, zero
	j label136
.p2align 2
label316:
	mv s4, a0
	mv s5, zero
	j label133
.p2align 2
label131:
	mv a0, s2
	jal find
	subw a1, zero, a2
	mv a3, a0
	mv a0, a1
	bne s3, zero, label463
	mv a0, a2
.p2align 2
label463:
	jal find
	xor a1, a3, a0
	sltiu a0, a1, 1
	jal putint
	li a0, 10
	jal putch
	bne s1, zero, label94
	j label93
.p2align 2
label133:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	li a4, 10
	addw a2, s4, a3
	bgeu a1, a4, label131
	mv s4, a0
	mv s5, a2
	j label133
.p2align 2
label136:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label465
	mv a2, s3
.p2align 2
label465:
	li a3, 9
	bgtu a1, a3, label340
	mv s3, a2
	addiw a1, a0, -48
	li a3, 10
	bltu a1, a3, label316
	j label496
.p2align 2
label340:
	mv s4, a0
	mv s3, a2
	j label136
.p2align 2
label94:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label94
	addiw s1, s1, -1
	li a1, 81
	bne a0, a1, label96
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label288
	mv s3, zero
	li a2, 10
	bltu a1, a2, label293
	j label495
.p2align 2
label288:
	mv s4, a0
	mv s2, zero
	j label139
.p2align 2
label293:
	mv s2, a0
	mv s4, zero
.p2align 2
label123:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s4, s2, a3
	bgeu a1, a2, label126
	mv s2, a0
	j label123
.p2align 2
label139:
	jal getch
	li s3, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label467
	mv s3, s2
.p2align 2
label467:
	li a2, 9
	bgtu a1, a2, label348
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label293
	j label495
.p2align 2
label348:
	mv s4, a0
	mv s2, s3
	j label139
.p2align 2
label96:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label222
	mv s2, zero
	li a2, 10
	bltu a1, a2, label235
	mv s4, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label506:
	mv a0, s4
	j label455
.p2align 2
label222:
	mv s3, a0
	mv s2, zero
.p2align 2
label97:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s3, a3, label453
	mv a2, s2
.p2align 2
label453:
	li a3, 9
	bgtu a1, a3, label230
	mv s2, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label235
	mv s4, zero
	mv a1, zero
	mv a0, zero
	bne s2, zero, label455
	j label506
.p2align 2
label230:
	mv s3, a0
	mv s2, a2
	j label97
.p2align 2
label235:
	mv s3, a0
	mv s4, zero
	j label116
.p2align 2
label455:
	jal find
	mv s2, a0
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label245
	mv s3, zero
	li a2, 10
	bltu a1, a2, label258
	mv s5, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label508:
	mv a0, s5
	j label459
.p2align 2
label245:
	mv s4, a0
	mv s3, zero
.p2align 2
label105:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label457
	mv a2, s3
.p2align 2
label457:
	li a3, 9
	bgtu a1, a3, label253
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label258
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label459
	j label508
.p2align 2
label253:
	mv s4, a0
	mv s3, a2
	j label105
.p2align 2
label258:
	mv s4, a0
	mv s5, zero
	j label113
.p2align 2
label459:
	jal find
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne s1, zero, label94
	j label93
.p2align 2
label113:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label273
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label459
	j label508
.p2align 2
label273:
	mv s4, a0
	j label113
.p2align 2
label116:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s4, s3, a4
	bltu a1, a2, label282
	subw a1, zero, s4
	mv a0, a1
	bne s2, zero, label455
	j label506
.p2align 2
label282:
	mv s3, a0
	j label116
.p2align 2
label142:
	sh2add a2, a1, s0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge s1, a1, label142
	mv s1, a0
	bne a0, zero, label94
	j label93
.p2align 2
label479:
	mv s2, zero
	j label81
