.data
.section .rodata
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -64
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s0, 24(sp)
	sd s5, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel625:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel625)
pcrel626:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel626)
pcrel627:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel627)
	mv s4, zero
	bge zero, s1, label9
	ble s1, zero, label8
	li a0, 8040
	mul a0, zero, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	j label560
label9:
	ble s1, zero, label12
	mv s4, zero
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	j label566
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s1, zero, label94
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label48
	j label47
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label17
	mv a3, zero
	bge zero, s1, label44
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, zero, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label568
label42:
	slliw a5, a1, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a3, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label552
label44:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	bge a1, s1, label17
	mv a3, zero
	bge zero, s1, label44
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, zero, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	j label524
label47:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label48
	j label47
label17:
	ble s1, zero, label103
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label20
	j label28
label103:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label31
	mv a3, zero
	bge zero, s1, label38
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label490
label546:
	addiw a3, a3, 1
	bge a3, s1, label38
	j label574
label37:
	slliw a5, a1, 2
	add a5, s3, a5
	lw t1, 0(a5)
	slliw t2, a3, 2
	add t2, s0, t2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label546
label524:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label552
label586:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	j label586
label302:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label17
	mv a3, zero
	bge zero, s1, label44
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, zero, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	addiw a3, a3, 1
	bge a3, s1, label44
	j label524
label571:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	j label571
label142:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	bge zero, s1, label31
	mv a3, zero
	bge zero, s1, label38
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
label490:
	addiw a3, a3, 1
	bge a3, s1, label38
label518:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label546
label38:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	bge a1, s1, label31
	mv a3, zero
	bge zero, s1, label38
	slli a4, zero, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, zero, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	addiw a3, a3, 1
	bge a3, s1, label38
	j label518
label574:
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label37
	j label546
label568:
	addiw a3, a3, 1
	bge a3, s1, label44
	j label524
label552:
	addiw a3, a3, 1
	bge a3, s1, label44
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bne a4, zero, label42
	j label552
label560:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
label508:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
label564:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	j label564
label8:
	addiw s4, s4, 1
	bge s4, s1, label9
	ble s1, zero, label8
	li a0, 8040
	mul a0, s4, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label8
	j label508
label20:
	addiw a2, a1, 16
	bge a2, s1, label22
label27:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label22
	j label27
label22:
	addiw a2, a1, 16
	bge a2, s1, label25
	j label24
label25:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label142
	j label571
label28:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label20
	j label28
label24:
	slliw a1, a1, 2
	add a1, s3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label25
	j label24
label48:
	addiw a2, a1, 16
	bge a2, s1, label51
label50:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label51
	j label50
label51:
	addiw a2, a1, 16
	bge a2, s1, label54
label53:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label54
	j label53
label54:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label302
	j label586
label31:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label32
	ble s1, zero, label94
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label48
	j label47
label32:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
label566:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
label567:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label12
	j label567
