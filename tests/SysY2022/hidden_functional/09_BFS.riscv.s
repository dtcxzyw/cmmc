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
	li a2, 57
	slt a3, a2, a0
pcrel632:
	auipc a2, %pcrel_hi(que)
	or a1, a1, a3
	addi s3, a2, %pcrel_lo(pcrel632)
pcrel633:
	auipc a2, %pcrel_hi(inq)
	addi s0, a2, %pcrel_lo(pcrel633)
pcrel634:
	auipc a2, %pcrel_hi(head)
	addi s4, a2, %pcrel_lo(pcrel634)
pcrel635:
	auipc a2, %pcrel_hi(to)
	addi s1, a2, %pcrel_lo(pcrel635)
pcrel636:
	auipc a2, %pcrel_hi(next)
	addi s2, a2, %pcrel_lo(pcrel636)
	beq a1, zero, label2
label88:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label2
	j label88
label2:
	addiw a1, a0, -48
	li a0, 10
	bgeu a1, a0, label5
label4:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bgeu a0, a1, label5
	j label4
label5:
	jal getch
	li a1, 57
	mv s5, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label122
	mv s6, zero
	j label85
label122:
	mv s6, zero
	addiw a0, s5, -48
	li a1, 10
	bgeu a0, a1, label127
label126:
	mv s7, zero
	j label9
label127:
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label511
	mv s5, zero
	mv a1, zero
	j label14
label511:
	mv a1, zero
	j label14
label85:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label531
	mv a1, s6
label531:
	beq a2, zero, label409
	mv s5, a0
	mv s6, a1
	j label85
label409:
	mv s5, a0
	mv s6, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label127
	j label126
label14:
	sh2add a0, a1, s4
	li a2, -1
	addiw a1, a1, 16
	sw a2, 0(a0)
	sw a2, 4(a0)
	sw a2, 8(a0)
	sw a2, 12(a0)
	sw a2, 16(a0)
	sw a2, 20(a0)
	sw a2, 24(a0)
	sw a2, 28(a0)
	sw a2, 32(a0)
	sw a2, 36(a0)
	sw a2, 40(a0)
	sw a2, 44(a0)
	sw a2, 48(a0)
	sw a2, 52(a0)
	sw a2, 56(a0)
	sw a2, 60(a0)
	li a0, 992
	bge a1, a0, label16
	j label14
label16:
	sh2add a0, a1, s4
	mv s6, zero
	li a1, -1
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
	beq s5, zero, label84
label20:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	beq a1, zero, label21
	j label20
label21:
	li a1, 81
	bne a0, a1, label22
	j label45
label22:
	jal getch
	li a1, 57
	mv s7, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label199
	mv s8, zero
	j label23
label199:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label213
	j label545
label213:
	mv s9, zero
	j label32
label45:
	jal getch
	li a1, 57
	mv s7, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label284
	mv s8, zero
	j label46
label284:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label298
	j label549
label298:
	mv s9, zero
label52:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s9
	or a1, a1, a2
	mv s7, a3
	bne s8, zero, label523
	mv s7, s9
label523:
	beq a1, zero, label308
	mv s8, a0
	mv s9, zero
	j label78
label308:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label313
label312:
	mv s10, zero
	j label75
label313:
	mv s10, zero
label57:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label525
	mv a0, s10
label525:
	sh2add a1, s7, s0
	li a4, 1
	sw a4, 0(a1)
	mv a1, zero
	sw s7, 4(s3)
	mv a3, zero
	ble a4, zero, label63
	li a1, 1
	li a2, 1
	sh2add t0, a1, s3
	lw a5, 0(t0)
	beq a0, a5, label527
	mv a2, zero
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	j label603
label63:
	blt a4, zero, label66
	mv a0, zero
	mv a2, s3
	li a0, 1
	lw a1, 0(s3)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
label64:
	sh2add a2, a0, s3
	addiw a0, a0, 1
	lw a1, 0(a2)
	sh2add a5, a1, s0
	sw zero, 0(a5)
	blt a4, a0, label66
	j label64
label527:
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
label597:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	j label608
label351:
	mv a3, a2
	ble a4, a1, label63
	addiw a1, a1, 1
	li a2, 1
	sh2add t0, a1, s3
	lw a5, 0(t0)
	beq a0, a5, label527
	mv a2, a3
	sh2add a5, a5, s4
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	j label597
label75:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s10, s9, a3
	bgeu a1, a2, label57
	mv s9, a0
	j label75
label78:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s8, a3, label529
	mv a2, s9
label529:
	beq a1, zero, label389
	mv s8, a0
	mv s9, a2
	j label78
label389:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label313
	j label312
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
label608:
	addiw a4, a4, 1
	sh2add t1, a5, s0
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	j label608
label72:
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	j label608
label603:
	sh2add t0, a3, s1
	lw a5, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bne t0, zero, label72
	addiw a4, a4, 1
	li t2, 1
	sh2add t0, a4, s3
	sw t2, 0(t1)
	sw a5, 0(t0)
	sh2add a5, a3, s2
	lw a3, 0(a5)
	li a5, -1
	beq a3, a5, label351
	j label597
label545:
	mv s9, zero
	j label29
label23:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s7, a3, label513
	mv a2, s8
label513:
	beq a1, zero, label208
	mv s7, a0
	mv s8, a2
	j label23
label208:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label213
	j label545
label29:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label32
	mv s7, a0
	j label29
label549:
	mv s9, zero
	j label81
label46:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s7, a3, label521
	mv a2, s8
label521:
	beq a1, zero, label293
	mv s7, a0
	mv s8, a2
	j label46
label293:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label298
	j label549
label81:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label52
	mv s7, a0
	j label81
label32:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label515
	mv s7, s9
label515:
	beq a1, zero, label234
	mv s8, a0
	mv s9, zero
	j label34
label234:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label248
label546:
	mv s10, zero
	j label42
label34:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s8, a3, label517
	mv a2, s9
label517:
	beq a1, zero, label243
	mv s8, a0
	mv s9, a2
	j label34
label243:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label248
	j label546
label248:
	mv s10, zero
label40:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label519
	j label518
label42:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s10, s9, a4
	bgeu a1, a2, label40
	mv s9, a0
	j label42
label9:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s7, s5, a3
	bgeu a1, a2, label12
	mv s5, a0
	j label9
label66:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	beq s5, zero, label84
	j label20
label518:
	mv a0, s10
label519:
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
	beq s5, zero, label84
	j label20
label12:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label511
	mv s5, s7
	j label511