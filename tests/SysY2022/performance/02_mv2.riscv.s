.data
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
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s2, 48(sp)
	sd s3, 40(sp)
	sd s0, 32(sp)
	sd s5, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel599:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel599)
pcrel600:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel600)
pcrel601:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel601)
	mv s4, zero
	bge zero, s1, label9
	ble s1, zero, label5
	li a0, 8040
	mul a0, zero, a0
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
label493:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	j label518
label9:
	ble s1, zero, label12
	mv s4, zero
	slli a0, zero, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	j label545
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
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label17
	mv a4, zero
	bge zero, s1, label44
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, zero, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	j label547
label17:
	ble s1, zero, label105
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label20
	j label28
label105:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label31
	mv a4, zero
	bge zero, s1, label35
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, zero, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	j label477
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
label477:
	addiw a4, a4, 1
	bge a4, s1, label35
	j label502
label527:
	addiw a4, a4, 1
	bge a4, s1, label35
	j label552
label38:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s0, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	j label527
label52:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	j label562
label268:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label17
	mv a4, zero
	bge zero, s1, label44
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, zero, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	j label507
label502:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	j label527
label552:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	j label527
label35:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s3, a3
	bge a1, s1, label31
	mv a4, zero
	bge zero, s1, label35
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, zero, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	j label502
label547:
	addiw a4, a4, 1
	bge a4, s1, label44
label507:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	j label532
label44:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s0, a3
	bge a1, s1, label17
	mv a4, zero
	bge zero, s1, label44
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, zero, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	j label507
label532:
	addiw a4, a4, 1
	bge a4, s1, label44
	j label557
label42:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	addiw a4, a4, 1
	bge a4, s1, label44
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	j label532
label557:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label42
	j label532
label562:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label268
	j label562
label518:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
label543:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	j label543
label5:
	addiw s4, s4, 1
	bge s4, s1, label9
	ble s1, zero, label5
	li a0, 8040
	mul a0, s4, a0
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label5
	j label493
label20:
	addiw a2, a1, 16
	bge a2, s1, label23
label22:
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
	bge a2, s1, label23
	j label22
label23:
	addiw a2, a1, 16
	bge a2, s1, label25
	j label27
label25:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	j label549
label144:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label31
	mv a4, zero
	bge zero, s1, label35
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, zero, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	addiw a4, a4, 1
	bge a4, s1, label35
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label38
	j label477
label549:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label144
	j label549
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
	bge a2, s1, label25
	j label27
label48:
	addiw a2, a1, 16
	bge a2, s1, label50
	j label55
label50:
	addiw a2, a1, 16
	bge a2, s1, label52
label54:
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
	bge a2, s1, label52
	j label54
label55:
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
	bge a2, s1, label50
	j label55
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
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
label545:
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
label546:
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label12
	j label546
