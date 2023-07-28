.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
to:
	.zero	20020
.align 4
next:
	.zero	20020
.align 4
head:
	.zero	4020
.align 4
que:
	.zero	4020
.align 4
inq:
	.zero	4020
.text
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd s3, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s4, 64(sp)
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
pcrel587:
	auipc a3, %pcrel_hi(que)
	or a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel587)
pcrel588:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel588)
pcrel589:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel589)
pcrel590:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel590)
pcrel591:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel591)
	bne a1, zero, label88
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label5
.p2align 2
label4:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label4
label5:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label122
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label127
	mv a0, zero
	mv a1, zero
	mv s5, zero
label569:
	mv s5, a0
	mv a2, zero
	j label14
label122:
	mv s5, a0
	mv s6, zero
	j label85
label127:
	mv s5, a0
	mv s7, zero
.p2align 2
label9:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s7, a2
	addi a3, a4, -48
	addw s7, s5, a3
	bltu a1, a2, label136
	mv a0, s7
	subw a1, zero, s7
	mv s5, a1
	bne s6, zero, label509
	j label569
label136:
	mv s5, a0
	j label9
label509:
	mv a2, zero
.p2align 2
label14:
	sh2add a0, a2, s4
	li a1, -1
	addiw a2, a2, 16
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	li a0, 992
	blt a2, a0, label14
	sh2add a0, a2, s4
	mv s6, zero
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	bne s5, zero, label20
	j label84
.p2align 2
label85:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label529
	mv a1, s6
.p2align 2
label529:
	bne a2, zero, label399
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label127
	mv a0, zero
	mv a1, zero
	mv s5, zero
	bne s6, zero, label509
	j label569
label399:
	mv s5, a0
	mv s6, a1
	j label85
.p2align 2
label88:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label88
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label4
	j label5
.p2align 2
label321:
	mv a1, zero
.p2align 2
label64:
	sh2add a0, a1, s3
	addiw a1, a1, 1
	lw a5, 0(a0)
	sh2add a2, a5, s0
	sw zero, 0(a2)
	bge a4, a1, label64
.p2align 2
label66:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label20
	j label84
.p2align 2
label67:
	addiw a2, a2, 1
	li a1, 1
	sh2add t0, a2, s3
	lw a5, 0(t0)
	beq a0, a5, label525
	mv a1, a3
.p2align 2
label525:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label71
	mv a3, a1
	bgt a4, a2, label67
	bge a4, zero, label321
	j label66
.p2align 2
label71:
	sh2add t1, a3, s1
	lw a5, 0(t1)
	sh2add t0, a5, s0
	lw t1, 0(t0)
	beq t1, zero, label74
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label71
	mv a3, a1
	bgt a4, a2, label67
	bge a4, zero, label321
	j label66
.p2align 2
label74:
	addiw a4, a4, 1
	sh2add t1, a5, s0
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label71
	mv a3, a1
	bgt a4, a2, label67
	bge a4, zero, label321
	j label66
label84:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s4, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s3, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label20:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label20
	li a1, 81
	bne a0, a1, label22
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label278
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label292
	j label554
.p2align 2
label278:
	mv s9, a0
	mv s7, zero
.p2align 2
label46:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label519
	mv s8, s7
.p2align 2
label519:
	bne a1, zero, label287
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label292
	j label554
.p2align 2
label287:
	mv s9, a0
	mv s7, s8
	j label46
.p2align 2
label292:
	mv s7, a0
	mv s9, zero
.p2align 2
label81:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s9, a2
	addi a3, a4, -48
	addw s9, s7, a3
	bgeu a1, a2, label52
	mv s7, a0
	j label81
.p2align 2
label22:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label197
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label211
.p2align 2
label547:
	mv s9, zero
	j label32
.p2align 2
label197:
	mv s9, a0
	mv s7, zero
.p2align 2
label23:
	jal getch
	li a2, 57
	li s8, 1
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label511
	mv s8, s7
.p2align 2
label511:
	bne a1, zero, label206
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label211
	j label547
.p2align 2
label206:
	mv s9, a0
	mv s7, s8
	j label23
.p2align 2
label211:
	mv s7, a0
	mv s9, zero
.p2align 2
label29:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s9, a2
	addi a3, a4, -48
	addw s9, s7, a3
	bgeu a1, a2, label32
	mv s7, a0
	j label29
.p2align 2
label32:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label513
	mv s7, s9
.p2align 2
label513:
	bne a1, zero, label230
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label244
	mv a0, zero
	mv a2, zero
	mv a1, zero
label570:
	mv a1, a0
	j label517
.p2align 2
label230:
	mv s9, a0
	mv s8, zero
.p2align 2
label34:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label515
	mv a2, s8
.p2align 2
label515:
	bne a1, zero, label239
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label244
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s8, zero, label517
	j label570
.p2align 2
label239:
	mv s9, a0
	mv s8, a2
	j label34
.p2align 2
label244:
	mv s9, a0
	mv s10, zero
	j label42
.p2align 2
label517:
	sh2add a0, s6, s1
	addiw s5, s5, -1
	sh2add a3, s7, s4
	sw a1, 0(a0)
	sh2add a2, s6, s2
	lw a4, 0(a3)
	sh2add a1, a1, s4
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a0)
	addiw a0, s6, 1
	lw a3, 0(a1)
	addiw s6, s6, 2
	sw a3, 4(a2)
	sw a0, 0(a1)
	bne s5, zero, label20
	j label84
.p2align 2
label42:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s10, a2
	addi a4, a3, -48
	addw s10, s9, a4
	bltu a1, a2, label271
	mv a0, s10
	subw a2, zero, s10
	mv a1, a2
	bne s8, zero, label517
	j label570
.p2align 2
label271:
	mv s9, a0
	j label42
.p2align 2
label554:
	mv s9, zero
.p2align 2
label52:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label521
	mv s7, s9
.p2align 2
label521:
	bne a1, zero, label302
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label307
	mv a1, zero
	mv a2, zero
	mv a0, zero
label572:
	mv a0, a1
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
	j label59
.p2align 2
label302:
	mv s9, a0
	mv s8, zero
	j label78
.p2align 2
label307:
	mv s9, a0
	mv s10, zero
	j label75
.p2align 2
label523:
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
.p2align 2
label59:
	bgt a4, a2, label67
	bge a4, zero, label321
	j label66
.p2align 2
label75:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s10, a2
	addi a4, a3, -48
	addw s10, s9, a4
	bltu a1, a2, label372
	mv a1, s10
	subw a2, zero, s10
	mv a0, a2
	bne s8, zero, label523
	j label572
.p2align 2
label372:
	mv s9, a0
	j label75
.p2align 2
label78:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s9, a3, label527
	mv a2, s8
.p2align 2
label527:
	bne a1, zero, label381
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label307
	mv a1, zero
	mv a2, zero
	mv a0, zero
	bne s8, zero, label523
	j label572
.p2align 2
label381:
	mv s9, a0
	mv s8, a2
	j label78
