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
	slti a1, a0, 48
	li a3, 57
	slt a2, a3, a0
pcrel577:
	auipc a3, %pcrel_hi(que)
	or a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel577)
pcrel578:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel578)
pcrel579:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel579)
pcrel580:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel580)
pcrel581:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel581)
	bne a1, zero, label88
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label5
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
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
label559:
	mv s5, s7
	mv a2, zero
	j label14
label122:
	mv s5, a0
	mv s6, zero
	j label85
label127:
	mv s5, a0
	mv s7, zero
label9:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s7, s5, a2
	bltu a1, a3, label138
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label499
	j label559
label138:
	mv s5, a0
	j label9
label499:
	mv a2, zero
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
label85:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label519
	mv a1, s6
label519:
	bne a2, zero, label409
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label127
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label499
	j label559
label409:
	mv s5, a0
	mv s6, a1
	j label85
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
label327:
	mv a1, zero
label64:
	sh2add a0, a1, s3
	addiw a1, a1, 1
	lw a5, 0(a0)
	sh2add a2, a5, s0
	sw zero, 0(a2)
	bge a4, a1, label64
label66:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label20
	j label84
label67:
	addiw a2, a2, 1
	li a1, 1
	sh2add t0, a2, s3
	lw a5, 0(t0)
	beq a0, a5, label515
	mv a1, a3
label515:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label71
	mv a3, a1
	bgt a4, a2, label67
	bge a4, zero, label327
	j label66
label71:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	beq t0, zero, label74
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	bne a3, a5, label71
	mv a3, a1
	bgt a4, a2, label67
	bge a4, zero, label327
	j label66
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
	bge a4, zero, label327
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
	bne a1, zero, label284
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label298
	j label544
label284:
	mv s9, a0
	mv s7, zero
label46:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label509
	mv s8, s7
label509:
	bne a1, zero, label293
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label298
	j label544
label293:
	mv s9, a0
	mv s7, s8
	j label46
label298:
	mv s7, a0
	mv s9, zero
label81:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label52
	mv s7, a0
	j label81
label22:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label199
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label213
label537:
	mv s9, zero
	j label32
label199:
	mv s9, a0
	mv s7, zero
label23:
	jal getch
	li a2, 57
	li s8, 1
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label501
	mv s8, s7
label501:
	bne a1, zero, label208
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label213
	j label537
label208:
	mv s9, a0
	mv s7, s8
	j label23
label213:
	mv s7, a0
	mv s9, zero
label29:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label32
	mv s7, a0
	j label29
label32:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s9
	or a1, a1, a2
	mv s7, a3
	bne s8, zero, label503
	mv s7, s9
label503:
	bne a1, zero, label234
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label248
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
label560:
	mv a0, s10
	j label507
label234:
	mv s9, a0
	mv s8, zero
label34:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label505
	mv a2, s8
label505:
	bne a1, zero, label243
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label248
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
	bne s8, zero, label507
	j label560
label243:
	mv s9, a0
	mv s8, a2
	j label34
label248:
	mv s9, a0
	mv s10, zero
	j label42
label507:
	sh2add a1, s6, s1
	addiw s5, s5, -1
	sh2add a3, s7, s4
	sw a0, 0(a1)
	sh2add a2, s6, s2
	lw a4, 0(a3)
	sh2add a0, a0, s4
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a1)
	addiw a1, s6, 1
	lw a3, 0(a0)
	addiw s6, s6, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	bne s5, zero, label20
	j label84
label42:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s9, a3
	bltu a1, a2, label277
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label507
	j label560
label277:
	mv s9, a0
	j label42
label544:
	mv s9, zero
label52:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s9
	or a1, a1, a2
	mv s7, a3
	bne s8, zero, label511
	mv s7, s9
label511:
	bne a1, zero, label308
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label313
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
label562:
	mv a0, s10
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
	j label59
label308:
	mv s9, a0
	mv s8, zero
	j label78
label313:
	mv s9, a0
	mv s10, zero
	j label75
label513:
	sh2add a1, s7, s0
	li a4, 1
	mv a2, zero
	sw a4, 0(a1)
	sw s7, 4(s3)
	mv a3, zero
label59:
	bgt a4, a2, label67
	bge a4, zero, label327
	j label66
label75:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bltu a1, a3, label380
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label513
	j label562
label380:
	mv s9, a0
	j label75
label78:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label517
	mv a2, s8
label517:
	bne a1, zero, label389
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label313
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
	bne s8, zero, label513
	j label562
label389:
	mv s9, a0
	mv s8, a2
	j label78
