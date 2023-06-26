.data
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -72
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s2, 48(sp)
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel1564:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1564)
pcrel1565:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1565)
pcrel1566:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1566)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label114
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1494
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label10
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1495
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label148:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s1, a2
	bge zero, s0, label233
	mv a2, zero
	bge zero, s0, label91
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, zero, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, zero, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	j label1427
label19:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label20
	j label19
label233:
	mv a1, zero
	bge zero, s0, label237
	slliw a2, zero, 12
	add a3, s1, a2
	ble s0, zero, label77
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label80
	j label88
label237:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label56
	mv a2, zero
	bge zero, s0, label55
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, zero, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, zero, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	j label1504
label56:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label596
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label88:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label80
	j label88
label1427:
	addiw a2, a2, 1
	bge a2, s0, label91
label1456:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	j label1485
label91:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label233
	mv a2, zero
	bge zero, s0, label91
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, zero, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	j label1456
label93:
	ble s0, zero, label109
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 16
	ble s0, a5, label824
	j label1255
label1485:
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	j label1485
label109:
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	addiw a2, a2, 1
	bge a2, s0, label91
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label93
	j label1485
label1447:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	j label1476
label55:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label56
	mv a2, zero
	bge zero, s0, label55
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, zero, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	j label1447
label1476:
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	j label1476
label1504:
	addiw a2, a2, 1
	bge a2, s0, label55
	j label1447
label39:
	ble s0, zero, label38
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 16
	ble s0, a5, label265
	j label1278
label38:
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	j label1476
label47:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, t4, a5
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label38
	j label47
label1502:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1502
label28:
	addiw a1, a1, 1
	bge a1, s0, label148
	slliw a2, a1, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label1255:
	lw t2, 0(t1)
	li a5, 16
	mv t4, zero
	j label96
label824:
	mv t3, zero
	lw a5, 0(t1)
	addiw t1, zero, 16
	bge t1, s0, label104
label103:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label104
	j label103
label96:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t4, t2
	addw t4, t5, t4
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label928
	mv t4, a5
	mv a5, t3
	j label96
label928:
	mv t3, a5
	lw a5, 0(t1)
	addiw t1, t3, 16
	bge t1, s0, label104
	j label103
label104:
	addiw t1, t3, 16
	bge t1, s0, label1038
	j label106
label1038:
	mv t1, t3
label107:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, t4, a5
	addw t3, t3, t4
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label109
	j label107
label106:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label1038
	j label106
label1278:
	lw t2, 0(t1)
	li a5, 16
	mv t4, zero
	j label52
label265:
	mv t3, zero
	lw a5, 0(t1)
	addiw t1, zero, 16
	bge t1, s0, label45
label50:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label45
	j label50
label45:
	addiw t1, t3, 16
	bge t1, s0, label276
	j label49
label276:
	mv t1, t3
	j label47
label49:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label276
	j label49
label52:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t6, t2
	addw t5, t5, t6
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t4, t2
	addw t4, t5, t4
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label589
	mv t4, a5
	mv a5, t3
	j label52
label589:
	mv t3, a5
	lw a5, 0(t1)
	addiw t1, t3, 16
	bge t1, s0, label45
	j label50
label1494:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
label1463:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1492
label114:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label114
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1463
label1492:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
label1521:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1521
label1495:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
label1440:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
label1498:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1498
label10:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label10
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label10
	j label1440
label80:
	addiw a4, a2, 16
	bge a4, s0, label83
label82:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label83
	j label82
label83:
	addiw a4, a2, 16
	bge a4, s0, label85
label87:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label85
	j label87
label85:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
label1513:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label77
	j label1513
label77:
	addiw a1, a1, 1
	bge a1, s0, label237
	slliw a2, a1, 12
	add a3, s1, a2
	ble s0, zero, label77
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label80
	j label88
label596:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label60
	ble s0, zero, label74
	slli a0, zero, 12
	add a4, s1, a0
	mv a0, zero
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label67
	j label66
label60:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	addi sp, sp, 72
	ret
label66:
	slli a1, a1, 2
	add t6, a4, a1
	lw s5, 0(t6)
	lw s2, 4(t6)
	lw s3, 8(t6)
	lw s4, 12(t6)
	lw t3, 16(t6)
	lw a1, 20(t6)
	lw s7, 24(t6)
	lw t5, 28(t6)
	lw s6, 32(t6)
	lw a6, 36(t6)
	lw a5, 40(t6)
	lw t2, 44(t6)
	lw t1, 48(t6)
	lw a7, 52(t6)
	lw t4, 56(t6)
	lw t6, 60(t6)
	addw a0, a0, s5
	addw a0, a0, s2
	addw a0, a0, s3
	addw a0, a0, s4
	addw a0, a0, t3
	addw a0, a0, a1
	addw a0, a0, s7
	addw a0, a0, t5
	addw a0, a0, s6
	addw a0, a0, a6
	addw a0, a0, a5
	addw a0, a0, t2
	addw a0, a0, t1
	addw a0, a0, a7
	addw a0, a0, t4
	addw a0, a0, t6
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label67
	j label66
label70:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	j label1512
label673:
	mv s2, a0
	addiw a2, a2, 1
	bge a2, s0, label60
	ble s0, zero, label74
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label67
	j label66
label1512:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label673
	j label1512
label20:
	addiw a4, a2, 16
	bge a4, s0, label22
	j label27
label22:
	addiw a4, a2, 16
	bge a4, s0, label25
	j label24
label25:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1502
label24:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label25
	j label24
label27:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	mv a2, a4
	addiw a4, a4, 16
	bge a4, s0, label22
	j label27
label67:
	addiw a3, a1, 16
	bge a3, s0, label70
label73:
	slli a1, a1, 2
	add a1, a4, a1
	lw a7, 0(a1)
	lw s3, 4(a1)
	lw s2, 8(a1)
	lw s7, 12(a1)
	lw a5, 16(a1)
	lw t2, 20(a1)
	lw t5, 24(a1)
	lw t6, 28(a1)
	lw t3, 32(a1)
	lw t1, 36(a1)
	lw s6, 40(a1)
	lw a6, 44(a1)
	lw s5, 48(a1)
	lw t4, 52(a1)
	lw s4, 56(a1)
	lw a1, 60(a1)
	addw a0, a0, a7
	addw a0, a0, s3
	addw a0, a0, s2
	addw a0, a0, s7
	addw a0, a0, a5
	addw a0, a0, t2
	addw a0, a0, t5
	addw a0, a0, t6
	addw a0, a0, t3
	addw a0, a0, t1
	addw a0, a0, s6
	addw a0, a0, a6
	addw a0, a0, s5
	addw a0, a0, t4
	addw a0, a0, s4
	addw a0, a0, a1
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label70
	j label73
label74:
	addiw a2, a2, 1
	bge a2, s0, label60
	ble s0, zero, label74
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label67
	j label66
