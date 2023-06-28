.data
.section .rodata
.bss
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
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel1590:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1590)
pcrel1591:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1591)
pcrel1592:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1592)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label8
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1513
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label114
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1480
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
	bge zero, s0, label109
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, zero, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	j label1440
label233:
	mv a1, zero
	bge zero, s0, label237
	slliw a2, zero, 12
	add a3, s1, a2
	ble s0, zero, label88
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label79
	j label87
label237:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label56
	mv a2, zero
	bge zero, s0, label55
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, zero, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	j label1523
label56:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label600
	mv a1, zero
	bge zero, s0, label148
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label28
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label20
	j label19
label600:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label60
	ble s0, zero, label74
	slli a0, zero, 12
	add a4, s1, a0
	mv a1, zero
	mv a0, zero
	addiw a3, zero, 16
	bge a3, s0, label66
	j label73
label1440:
	addiw a2, a2, 1
	bge a2, s0, label109
	j label1471
label109:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label233
	mv a2, zero
	bge zero, s0, label109
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, zero, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	j label1471
label92:
	ble s0, zero, label108
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 16
	ble s0, a5, label827
	j label1260
label101:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label108
	j label101
label108:
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	j label1502
label1471:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
label1502:
	addiw a2, a2, 1
	bge a2, s0, label109
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label92
	j label1502
label1523:
	addiw a2, a2, 1
	bge a2, s0, label55
label1462:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
label1493:
	addiw a2, a2, 1
	bge a2, s0, label55
	j label1524
label38:
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	j label1493
label49:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label38
	j label49
label1524:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	j label1493
label1283:
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 16
	mv t4, zero
	j label52
label39:
	ble s0, zero, label38
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 16
	ble s0, a5, label265
	j label1283
label55:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label56
	mv a2, zero
	bge zero, s0, label55
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, zero, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label55
	j label1462
label1532:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	j label1532
label88:
	addiw a1, a1, 1
	bge a1, s0, label237
	slliw a2, a1, 12
	add a3, s1, a2
	ble s0, zero, label88
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label79
	j label87
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
	j label1521
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
label1521:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label28
	j label1521
label1260:
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 16
	mv t4, zero
	j label105
label827:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 16
	bge t1, s0, label98
	j label103
label98:
	addiw t1, t3, 16
	bge t1, s0, label840
	j label100
label840:
	mv t1, t3
	j label101
label100:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label840
	j label100
label103:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label98
	j label103
label105:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label1155
	mv t4, a5
	mv a5, t3
	j label105
label1155:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 16
	bge t1, s0, label98
	j label103
label45:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label46
	j label45
label52:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t6, 12(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 12(t3)
	lw t5, 16(t3)
	lw t6, 16(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 16(t3)
	lw t5, 20(t3)
	lw t6, 20(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 20(t3)
	lw t5, 24(t3)
	lw t6, 24(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 24(t3)
	lw t5, 28(t3)
	lw t6, 28(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 28(t3)
	lw t5, 32(t3)
	lw t6, 32(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 32(t3)
	lw t5, 36(t3)
	lw t6, 36(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 36(t3)
	lw t5, 40(t3)
	lw t6, 40(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 40(t3)
	lw t5, 44(t3)
	lw t6, 44(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 44(t3)
	lw t5, 48(t3)
	lw t6, 48(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 48(t3)
	lw t5, 52(t3)
	lw t6, 52(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 52(t3)
	lw t5, 56(t3)
	lw t6, 56(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 56(t3)
	lw t5, 60(t3)
	lw t4, 60(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 60(t3)
	addiw t3, a5, 16
	bge t3, s0, label593
	mv t4, a5
	mv a5, t3
	j label52
label593:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 16
	bge t1, s0, label46
	j label45
label265:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 16
	bge t1, s0, label46
	j label45
label46:
	addiw t1, t3, 16
	bge t1, s0, label376
label48:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 12(t2)
	lw t4, 16(t2)
	lw t5, 16(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 16(t2)
	lw t4, 20(t2)
	lw t5, 20(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 20(t2)
	lw t4, 24(t2)
	lw t5, 24(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 24(t2)
	lw t4, 28(t2)
	lw t5, 28(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 28(t2)
	lw t4, 32(t2)
	lw t5, 32(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 32(t2)
	lw t4, 36(t2)
	lw t5, 36(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 36(t2)
	lw t4, 40(t2)
	lw t5, 40(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 40(t2)
	lw t4, 44(t2)
	lw t5, 44(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 44(t2)
	lw t4, 48(t2)
	lw t5, 48(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 48(t2)
	lw t4, 52(t2)
	lw t5, 52(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 52(t2)
	lw t4, 56(t2)
	lw t5, 56(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 56(t2)
	lw t4, 60(t2)
	lw t3, 60(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 60(t2)
	mv t3, t1
	addiw t1, t1, 16
	bge t1, s0, label376
	j label48
label376:
	mv t1, t3
	j label49
label69:
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	j label1531
label628:
	mv s2, a1
	addiw a2, a2, 1
	bge a2, s0, label60
	ble s0, zero, label74
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, zero
	addiw a3, zero, 16
	bge a3, s0, label66
label73:
	slli a0, a0, 2
	add a0, a4, a0
	lw t1, 0(a0)
	lw a5, 4(a0)
	addw a1, a1, t1
	addw a1, a1, a5
	lw a5, 8(a0)
	addw a1, a1, a5
	lw a5, 12(a0)
	addw a1, a1, a5
	lw a5, 16(a0)
	addw a1, a1, a5
	lw a5, 20(a0)
	addw a1, a1, a5
	lw a5, 24(a0)
	addw a1, a1, a5
	lw a5, 28(a0)
	addw a1, a1, a5
	lw a5, 32(a0)
	addw a1, a1, a5
	lw a5, 36(a0)
	addw a1, a1, a5
	lw a5, 40(a0)
	addw a1, a1, a5
	lw a5, 44(a0)
	addw a1, a1, a5
	lw a5, 48(a0)
	addw a1, a1, a5
	lw a5, 52(a0)
	addw a1, a1, a5
	lw a5, 56(a0)
	addw a1, a1, a5
	lw a0, 60(a0)
	addw a1, a1, a0
	mv a0, a3
	addiw a3, a3, 16
	bge a3, s0, label66
	j label73
label1531:
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a1, a1, a3
	addiw a0, a0, 1
	bge a0, s0, label628
	j label1531
label1513:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
label1455:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1486
label8:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label8
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1455
label1486:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
label1517:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1517
label1480:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1511
label114:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label114
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1480
label1511:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
label1542:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label114
	j label1542
label79:
	addiw a4, a2, 16
	bge a4, s0, label81
	j label86
label81:
	addiw a4, a2, 16
	bge a4, s0, label83
	j label85
label83:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label88
	j label1532
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
	bge a4, s0, label79
	j label87
label86:
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
	bge a4, s0, label81
	j label86
label85:
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
	j label85
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
label20:
	addiw a4, a2, 16
	bge a4, s0, label23
	j label22
label23:
	addiw a4, a2, 16
	bge a4, s0, label25
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
	bge a4, s0, label25
	j label27
label22:
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
	bge a4, s0, label23
	j label22
label66:
	addiw a3, a0, 16
	bge a3, s0, label69
label72:
	slli a0, a0, 2
	add a0, a4, a0
	lw t1, 0(a0)
	lw a5, 4(a0)
	addw a1, a1, t1
	addw a1, a1, a5
	lw a5, 8(a0)
	addw a1, a1, a5
	lw a5, 12(a0)
	addw a1, a1, a5
	lw a5, 16(a0)
	addw a1, a1, a5
	lw a5, 20(a0)
	addw a1, a1, a5
	lw a5, 24(a0)
	addw a1, a1, a5
	lw a5, 28(a0)
	addw a1, a1, a5
	lw a5, 32(a0)
	addw a1, a1, a5
	lw a5, 36(a0)
	addw a1, a1, a5
	lw a5, 40(a0)
	addw a1, a1, a5
	lw a5, 44(a0)
	addw a1, a1, a5
	lw a5, 48(a0)
	addw a1, a1, a5
	lw a5, 52(a0)
	addw a1, a1, a5
	lw a5, 56(a0)
	addw a1, a1, a5
	lw a0, 60(a0)
	addw a1, a1, a0
	mv a0, a3
	addiw a3, a3, 16
	bge a3, s0, label69
	j label72
label74:
	addiw a2, a2, 1
	bge a2, s0, label60
	ble s0, zero, label74
	slli a0, a2, 12
	add a4, s1, a0
	mv a1, s2
	mv a0, zero
	addiw a3, zero, 16
	bge a3, s0, label66
	j label73
label60:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
