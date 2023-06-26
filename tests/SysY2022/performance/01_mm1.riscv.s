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
pcrel1599:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1599)
pcrel1600:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1600)
pcrel1601:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1601)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label8
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1518
label126:
	mv s4, zero
	bge zero, s0, label16
	ble s0, zero, label15
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	j label1463
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a1, zero
	bge zero, s0, label162
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label33
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label24
	j label32
label162:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s1, a2
	bge zero, s0, label247
	mv a2, zero
	bge zero, s0, label56
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, zero, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, zero, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	j label1436
label247:
	mv a1, zero
	bge zero, s0, label599
	slliw a2, zero, 12
	add a3, s1, a2
	ble s0, zero, label103
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label107
	j label106
label1436:
	addiw a2, a2, 1
	bge a2, s0, label56
	j label1468
label599:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label82
	mv a2, zero
	bge zero, s0, label81
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, zero, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, zero, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	j label1539
label1292:
	lw t2, 0(t1)
	li a5, 16
	mv t4, zero
	j label78
label65:
	ble s0, zero, label64
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 16
	ble s0, a5, label627
	j label1292
label82:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label958
	mv a1, zero
	bge zero, s0, label162
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label33
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label24
	j label32
label958:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label86
	ble s0, zero, label100
	slli a0, zero, 12
	add a4, s1, a0
	mv a0, zero
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label92
	j label99
label86:
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
label100:
	addiw a2, a2, 1
	bge a2, s0, label86
	ble s0, zero, label100
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label92
	j label99
label107:
	addiw a4, a2, 16
	bge a4, s0, label109
	j label114
label64:
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	j label1508
label75:
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
	bge t1, s0, label64
	j label75
label1468:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
label1500:
	addiw a2, a2, 1
	bge a2, s0, label56
	j label1532
label268:
	mv t3, zero
	lw a5, 0(t1)
	addiw t1, zero, 16
	bge t1, s0, label46
	j label45
label46:
	addiw t1, t3, 16
	bge t1, s0, label377
	j label50
label377:
	mv t1, t3
label48:
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
	bge t1, s0, label55
	j label48
label55:
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	j label1500
label1532:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	j label1500
label56:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label247
	mv a2, zero
	bge zero, s0, label56
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, zero, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label39
	addiw a2, a2, 1
	bge a2, s0, label56
	j label1468
label1476:
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	j label1508
label81:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label82
	mv a2, zero
	bge zero, s0, label81
	slliw a4, zero, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, zero, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	addiw a2, a2, 1
	bge a2, s0, label81
	j label1476
label1508:
	addiw a2, a2, 1
	bge a2, s0, label81
	slliw a4, a2, 12
	add a4, s2, a4
	slli a5, a1, 2
	add t1, a4, a5
	lw a4, 0(t1)
	bne a4, zero, label65
	j label1508
label1539:
	addiw a2, a2, 1
	bge a2, s0, label81
	j label1476
label29:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	j label1530
label33:
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 12
	add a3, s3, a2
	ble s0, zero, label33
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label24
	j label32
label1530:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label33
	j label1530
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
	bge t1, s0, label377
	j label50
label45:
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
	bge t1, s0, label46
	j label45
label39:
	ble s0, zero, label55
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 16
	ble s0, a5, label268
	j label1231
label71:
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
	bge t1, s0, label72
	j label71
label78:
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
	bge t3, s0, label951
	mv t4, a5
	mv a5, t3
	j label78
label951:
	mv t3, a5
	lw a5, 0(t1)
	addiw t1, t3, 16
	bge t1, s0, label72
	j label71
label627:
	mv t3, zero
	lw a5, 0(t1)
	addiw t1, zero, 16
	bge t1, s0, label72
	j label71
label72:
	addiw t1, t3, 16
	bge t1, s0, label736
label74:
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
	bge t1, s0, label736
	j label74
label736:
	mv t1, t3
	j label75
label109:
	addiw a4, a2, 16
	bge a4, s0, label112
label111:
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
	bge a4, s0, label112
	j label111
label112:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
label1549:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label103
	j label1549
label1231:
	lw t2, 0(t1)
	li a5, 16
	mv t4, zero
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
	bge t3, s0, label592
	mv t4, a5
	mv a5, t3
	j label52
label592:
	mv t3, a5
	lw a5, 0(t1)
	addiw t1, t3, 16
	bge t1, s0, label46
	j label45
label1518:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
label1458:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
label1522:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1522
label1463:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
label1527:
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	j label1527
label8:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label8
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label8
	j label1458
label15:
	addiw s4, s4, 1
	bge s4, s0, label16
	ble s0, zero, label15
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	slli a0, zero, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	slli a0, s5, 2
	add s7, s6, a0
	jal getint
	sw a0, 0(s7)
	addiw s5, s5, 1
	bge s5, s0, label15
	j label1463
label24:
	addiw a4, a2, 16
	bge a4, s0, label27
	j label26
label27:
	addiw a4, a2, 16
	bge a4, s0, label29
label31:
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
	bge a4, s0, label29
	j label31
label106:
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
	bge a4, s0, label107
	j label106
label103:
	addiw a1, a1, 1
	bge a1, s0, label599
	slliw a2, a1, 12
	add a3, s1, a2
	ble s0, zero, label103
	mv a2, zero
	addiw a4, zero, 16
	bge a4, s0, label107
	j label106
label114:
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
	bge a4, s0, label109
	j label114
label32:
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
	bge a4, s0, label24
	j label32
label26:
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
	bge a4, s0, label27
	j label26
label92:
	addiw a3, a1, 16
	bge a3, s0, label95
label98:
	slli a1, a1, 2
	add t4, a4, a1
	lw s6, 0(t4)
	lw s7, 4(t4)
	lw s4, 8(t4)
	lw s5, 12(t4)
	lw t3, 16(t4)
	lw t2, 20(t4)
	lw t1, 24(t4)
	lw a5, 28(t4)
	lw a7, 32(t4)
	lw a6, 36(t4)
	lw s3, 40(t4)
	lw s2, 44(t4)
	lw t6, 48(t4)
	lw t5, 52(t4)
	lw a1, 56(t4)
	lw t4, 60(t4)
	addw a0, a0, s6
	addw a0, a0, s7
	addw a0, a0, s4
	addw a0, a0, s5
	addw a0, a0, t3
	addw a0, a0, t2
	addw a0, a0, t1
	addw a0, a0, a5
	addw a0, a0, a7
	addw a0, a0, a6
	addw a0, a0, s3
	addw a0, a0, s2
	addw a0, a0, t6
	addw a0, a0, t5
	addw a0, a0, a1
	addw a0, a0, t4
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label95
	j label98
label95:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	j label1547
label986:
	mv s2, a0
	addiw a2, a2, 1
	bge a2, s0, label86
	ble s0, zero, label100
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label92
	j label99
label1547:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label986
	j label1547
label99:
	slli a1, a1, 2
	add t1, a4, a1
	lw s2, 0(t1)
	lw s3, 4(t1)
	lw a7, 8(t1)
	lw s4, 12(t1)
	lw t6, 16(t1)
	lw t5, 20(t1)
	lw a6, 24(t1)
	lw s7, 28(t1)
	lw t3, 32(t1)
	lw t2, 36(t1)
	lw t4, 40(t1)
	lw s6, 44(t1)
	lw a5, 48(t1)
	lw s5, 52(t1)
	lw a1, 56(t1)
	lw t1, 60(t1)
	addw a0, a0, s2
	addw a0, a0, s3
	addw a0, a0, a7
	addw a0, a0, s4
	addw a0, a0, t6
	addw a0, a0, t5
	addw a0, a0, a6
	addw a0, a0, s7
	addw a0, a0, t3
	addw a0, a0, t2
	addw a0, a0, t4
	addw a0, a0, s6
	addw a0, a0, a5
	addw a0, a0, s5
	addw a0, a0, a1
	addw a0, a0, t1
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label92
	j label99
