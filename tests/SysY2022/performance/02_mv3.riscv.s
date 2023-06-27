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
pcrel620:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel620)
pcrel621:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel621)
pcrel622:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel622)
	mv s4, zero
	bge zero, s1, label4
	ble s1, zero, label55
	li a0, 8040
	mul a0, zero, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
label527:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label554
label55:
	addiw s4, s4, 1
	bge s4, s1, label4
	ble s1, zero, label55
	li a0, 8040
	mul a0, s4, a0
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label527
label554:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
label581:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label581
label4:
	ble s1, zero, label7
	mv s4, zero
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
label558:
	jal getint
	slli a1, s4, 2
	add a1, s3, a1
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s1, label7
	j label558
label7:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label13
	j label12
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label29
	mv a4, zero
	bge zero, s1, label25
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, zero, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	j label482
label536:
	addiw a4, a4, 1
	bge a4, s1, label25
	j label563
label28:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, a5, t1
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	j label536
label17:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	j label560
label119:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label29
	mv a4, zero
	bge zero, s1, label25
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, zero, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
label482:
	addiw a4, a4, 1
	bge a4, s1, label25
	j label509
label29:
	ble s1, zero, label183
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label32
	j label40
label183:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label49
	mv a4, zero
	bge zero, s1, label48
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, zero, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	j label492
label49:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label50
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label13
	j label12
label50:
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
label519:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	j label546
label48:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s3, a3
	bge a1, s1, label49
	mv a4, zero
	bge zero, s1, label48
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, zero, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	j label519
label546:
	addiw a4, a4, 1
	bge a4, s1, label48
	j label573
label47:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s0, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, a5, t1
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	j label546
label573:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	j label546
label239:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label49
	mv a4, zero
	bge zero, s1, label48
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, zero, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
	addiw a4, a4, 1
	bge a4, s1, label48
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label47
label492:
	addiw a4, a4, 1
	bge a4, s1, label48
	j label519
label509:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	j label536
label25:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s0, a3
	bge a1, s1, label29
	mv a4, zero
	bge zero, s1, label25
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, zero, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	addiw a4, a4, 1
	bge a4, s1, label25
	j label509
label563:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label28
	j label536
label570:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	j label570
label560:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label119
	j label560
label32:
	addiw a2, a1, 16
	bge a2, s1, label35
label34:
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
	bge a2, s1, label35
	j label34
label35:
	addiw a2, a1, 16
	bge a2, s1, label38
label37:
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
	bge a2, s1, label38
	j label37
label38:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label239
	j label570
label40:
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
	bge a2, s1, label32
	j label40
label12:
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
	bge a2, s1, label13
	j label12
label13:
	addiw a2, a1, 16
	bge a2, s1, label15
	j label20
label15:
	addiw a2, a1, 16
	bge a2, s1, label17
	j label19
label20:
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
	bge a2, s1, label15
	j label20
label19:
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
	bge a2, s1, label17
	j label19
