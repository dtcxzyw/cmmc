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
pcrel608:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel608)
pcrel609:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel609)
pcrel610:
	auipc a0, %pcrel_hi(C)
	addi s0, a0, %pcrel_lo(pcrel610)
	mv s4, zero
	bge zero, s1, label4
	ble s1, zero, label55
	li a0, 8040
	mul a0, zero, a0
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
label520:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label546
label55:
	addiw s4, s4, 1
	bge s4, s1, label4
	ble s1, zero, label55
	li a0, 8040
	mul a0, s4, a0
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label520
label546:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
label572:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s1, label55
	j label572
label4:
	ble s1, zero, label7
	mv s4, zero
	slli a0, zero, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	j label550
label7:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label43
	j label42
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label12
	mv a4, zero
	bge zero, s1, label39
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, zero, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	j label551
label39:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s0, a3
	bge a1, s1, label12
	mv a4, zero
	bge zero, s1, label39
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, zero, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	j label510
label43:
	addiw a2, a1, 16
	bge a2, s1, label45
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
	bge a2, s1, label45
	j label50
label12:
	ble s1, zero, label91
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label15
	j label23
label91:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label32
	mv a4, zero
	bge zero, s1, label31
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, zero, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	j label478
label23:
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
	bge a2, s1, label15
	j label23
label510:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	j label536
label45:
	addiw a2, a1, 16
	bge a2, s1, label48
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
label48:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	j label568
label271:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s0, a3
	bge zero, s1, label12
	mv a4, zero
	bge zero, s1, label39
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, zero, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	j label510
label20:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	j label553
label130:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s2, a2
	slliw a3, zero, 2
	add a3, s3, a3
	bge zero, s1, label32
	mv a4, zero
	bge zero, s1, label31
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, zero, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
label478:
	addiw a4, a4, 1
	bge a4, s1, label31
	j label504
label30:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s0, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	j label530
label31:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s2, a2
	slliw a3, a1, 2
	add a3, s3, a3
	bge a1, s1, label32
	mv a4, zero
	bge zero, s1, label31
	slli a5, zero, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, zero, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	addiw a4, a4, 1
	bge a4, s1, label31
	j label504
label32:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label33
	ble s1, zero, label80
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label43
	j label42
label33:
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
label530:
	addiw a4, a4, 1
	bge a4, s1, label31
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	j label530
label504:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label30
	j label530
label551:
	addiw a4, a4, 1
	bge a4, s1, label39
	j label510
label536:
	addiw a4, a4, 1
	bge a4, s1, label39
	j label562
label37:
	lw t1, 0(a3)
	slliw t2, a4, 2
	add t2, s3, t2
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	addiw a4, a4, 1
	bge a4, s1, label39
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	j label536
label562:
	slli a5, a4, 2
	add a5, a2, a5
	lw a5, 0(a5)
	bne a5, zero, label37
	j label536
label553:
	slliw a2, a1, 2
	add a2, s3, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label130
	j label553
label568:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label271
	j label568
label15:
	addiw a2, a1, 16
	bge a2, s1, label18
label17:
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
	bge a2, s1, label18
	j label17
label18:
	addiw a2, a1, 16
	bge a2, s1, label20
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
	bge a2, s1, label20
	j label22
label42:
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
	bge a2, s1, label43
	j label42
label550:
	slli a0, s4, 2
	add s5, s3, a0
	jal getint
	sw a0, 0(s5)
	addiw s4, s4, 1
	bge s4, s1, label7
	j label550
