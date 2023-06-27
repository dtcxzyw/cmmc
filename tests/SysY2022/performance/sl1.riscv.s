.data
.align 4
x:
	.zero	864000000
.align 4
y:
	.zero	864000000
.text
.globl main
main:
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s3, 48(sp)
	sd s2, 40(sp)
	sd s0, 32(sp)
	sd s5, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	addiw s3, a0, -1
	jal getint
	mv s2, a0
	li a0, 13
	jal _sysy_starttime
pcrel882:
	auipc a0, %pcrel_hi(x)
	addi s0, a0, %pcrel_lo(pcrel882)
pcrel883:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel883)
	mv a1, zero
	li a2, 1440000
	mul a3, zero, a2
	add a3, s0, a3
	mul a2, zero, a2
	add a4, a0, a2
	bge zero, s1, label51
	mv a2, zero
	bge zero, s1, label17
	ble s1, zero, label16
	li t1, 2400
	mul a5, zero, t1
	add a5, a3, a5
	mul t1, zero, t1
	add t1, a4, t1
	mv t3, zero
	addiw t2, zero, 16
	bge t2, s1, label11
	j label10
label51:
	li s5, 1
	mv s4, s5
	li a0, 1440000
	mul a1, s5, a0
	add a1, s0, a1
	li a2, -1440000
	add a2, a1, a2
	add a3, a1, a0
	bge s5, s3, label21
	li a0, 1
	bge a0, s3, label24
	li a4, 1
	ble s3, a4, label26
	j label27
label10:
	slli t4, t3, 2
	add t4, a5, t4
	li t5, 1
	sw t5, 0(t4)
	slli t3, t3, 2
	add t3, t1, t3
	sw zero, 0(t3)
	sw t5, 4(t4)
	sw zero, 4(t3)
	sw t5, 8(t4)
	sw zero, 8(t3)
	sw t5, 12(t4)
	sw zero, 12(t3)
	sw t5, 16(t4)
	sw zero, 16(t3)
	sw t5, 20(t4)
	sw zero, 20(t3)
	sw t5, 24(t4)
	sw zero, 24(t3)
	sw t5, 28(t4)
	sw zero, 28(t3)
	sw t5, 32(t4)
	sw zero, 32(t3)
	sw t5, 36(t4)
	sw zero, 36(t3)
	sw t5, 40(t4)
	sw zero, 40(t3)
	sw t5, 44(t4)
	sw zero, 44(t3)
	sw t5, 48(t4)
	sw zero, 48(t3)
	sw t5, 52(t4)
	sw zero, 52(t3)
	sw t5, 56(t4)
	sw zero, 56(t3)
	sw t5, 60(t4)
	sw zero, 60(t3)
	mv t3, t2
	addiw t2, t2, 16
	bge t2, s1, label11
	j label10
label11:
	addiw t2, t3, 16
	bge t2, s1, label106
	j label15
label106:
	mv t2, t3
	slli t3, t3, 2
	add t3, a5, t3
	li t4, 1
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	slli t3, t2, 2
	add t3, a5, t3
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	j label879
label15:
	slli t4, t3, 2
	add t4, a5, t4
	li t5, 1
	sw t5, 0(t4)
	slli t3, t3, 2
	add t3, t1, t3
	sw zero, 0(t3)
	sw t5, 4(t4)
	sw zero, 4(t3)
	sw t5, 8(t4)
	sw zero, 8(t3)
	sw t5, 12(t4)
	sw zero, 12(t3)
	sw t5, 16(t4)
	sw zero, 16(t3)
	sw t5, 20(t4)
	sw zero, 20(t3)
	sw t5, 24(t4)
	sw zero, 24(t3)
	sw t5, 28(t4)
	sw zero, 28(t3)
	sw t5, 32(t4)
	sw zero, 32(t3)
	sw t5, 36(t4)
	sw zero, 36(t3)
	sw t5, 40(t4)
	sw zero, 40(t3)
	sw t5, 44(t4)
	sw zero, 44(t3)
	sw t5, 48(t4)
	sw zero, 48(t3)
	sw t5, 52(t4)
	sw zero, 52(t3)
	sw t5, 56(t4)
	sw zero, 56(t3)
	sw t5, 60(t4)
	sw zero, 60(t3)
	mv t3, t2
	addiw t2, t2, 16
	bge t2, s1, label106
	j label15
label16:
	addiw a2, a2, 1
	bge a2, s1, label17
	ble s1, zero, label16
	li t1, 2400
	mul a5, a2, t1
	add a5, a3, a5
	mul t1, a2, t1
	add t1, a4, t1
	mv t3, zero
	addiw t2, zero, 16
	bge t2, s1, label11
	j label10
label879:
	slli t3, t2, 2
	add t3, a5, t3
	li t4, 1
	sw t4, 0(t3)
	slli t3, t2, 2
	add t3, t1, t3
	sw zero, 0(t3)
	addiw t2, t2, 1
	bge t2, s1, label16
	j label879
label27:
	li t3, 2400
	mul a4, a0, t3
	add a4, a1, a4
	li a5, -2400
	add a5, a4, a5
	add t1, a4, t3
	mul t2, a0, t3
	add t2, a2, t2
	mul t3, a0, t3
	add t3, a3, t3
	li a7, 1
	addiw t4, a7, 16
	bge t4, s3, label31
	j label30
label31:
	addiw t4, a7, 16
	bge t4, s3, label461
	j label33
label461:
	mv t4, a7
label34:
	slli t5, t4, 2
	add t5, t2, t5
	lw t5, 0(t5)
	slli t6, t4, 2
	add t6, t3, t6
	lw t6, 0(t6)
	addw t5, t5, t6
	slli t6, t4, 2
	add t6, a5, t6
	lw t6, 0(t6)
	addw t5, t5, t6
	slli t6, t4, 2
	add t6, t1, t6
	lw t6, 0(t6)
	addw t6, t5, t6
	slli t5, t4, 2
	add t5, a4, t5
	lw a6, -4(t5)
	addw t6, t6, a6
	lw a6, 4(t5)
	addw t6, t6, a6
	divw t6, t6, s2
	sw t6, 0(t5)
	addiw t4, t4, 1
	bge t4, s3, label26
	j label34
label33:
	slli t5, a7, 2
	add t5, t2, t5
	lw a6, 0(t5)
	slli t6, a7, 2
	add t6, t3, t6
	lw s5, 0(t6)
	addw s5, a6, s5
	slli a6, a7, 2
	add a6, a5, a6
	lw s6, 0(a6)
	addw s6, s5, s6
	slli s5, a7, 2
	add s5, t1, s5
	lw s7, 0(s5)
	addw s6, s6, s7
	slli a7, a7, 2
	add a7, a4, a7
	lw s7, -4(a7)
	addw s6, s6, s7
	lw s7, 4(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 0(a7)
	lw s7, 4(t5)
	addw s6, s6, s7
	lw s7, 4(t6)
	addw s6, s6, s7
	lw s7, 4(a6)
	addw s6, s6, s7
	lw s7, 4(s5)
	addw s6, s6, s7
	lw s7, 8(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 4(a7)
	lw s7, 8(t5)
	addw s6, s6, s7
	lw s7, 8(t6)
	addw s6, s6, s7
	lw s7, 8(a6)
	addw s6, s6, s7
	lw s7, 8(s5)
	addw s6, s6, s7
	lw s7, 12(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 8(a7)
	lw s7, 12(t5)
	addw s6, s6, s7
	lw s7, 12(t6)
	addw s6, s6, s7
	lw s7, 12(a6)
	addw s6, s6, s7
	lw s7, 12(s5)
	addw s6, s6, s7
	lw s7, 16(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 12(a7)
	lw s7, 16(t5)
	addw s6, s6, s7
	lw s7, 16(t6)
	addw s6, s6, s7
	lw s7, 16(a6)
	addw s6, s6, s7
	lw s7, 16(s5)
	addw s6, s6, s7
	lw s7, 20(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 16(a7)
	lw s7, 20(t5)
	addw s6, s6, s7
	lw s7, 20(t6)
	addw s6, s6, s7
	lw s7, 20(a6)
	addw s6, s6, s7
	lw s7, 20(s5)
	addw s6, s6, s7
	lw s7, 24(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 20(a7)
	lw s7, 24(t5)
	addw s6, s6, s7
	lw s7, 24(t6)
	addw s6, s6, s7
	lw s7, 24(a6)
	addw s6, s6, s7
	lw s7, 24(s5)
	addw s6, s6, s7
	lw s7, 28(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 24(a7)
	lw s7, 28(t5)
	addw s6, s6, s7
	lw s7, 28(t6)
	addw s6, s6, s7
	lw s7, 28(a6)
	addw s6, s6, s7
	lw s7, 28(s5)
	addw s6, s6, s7
	lw s7, 32(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 28(a7)
	lw s7, 32(t5)
	addw s6, s6, s7
	lw s7, 32(t6)
	addw s6, s6, s7
	lw s7, 32(a6)
	addw s6, s6, s7
	lw s7, 32(s5)
	addw s6, s6, s7
	lw s7, 36(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 32(a7)
	lw s7, 36(t5)
	addw s6, s6, s7
	lw s7, 36(t6)
	addw s6, s6, s7
	lw s7, 36(a6)
	addw s6, s6, s7
	lw s7, 36(s5)
	addw s6, s6, s7
	lw s7, 40(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 36(a7)
	lw s7, 40(t5)
	addw s6, s6, s7
	lw s7, 40(t6)
	addw s6, s6, s7
	lw s7, 40(a6)
	addw s6, s6, s7
	lw s7, 40(s5)
	addw s6, s6, s7
	lw s7, 44(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 40(a7)
	lw s7, 44(t5)
	addw s6, s6, s7
	lw s7, 44(t6)
	addw s6, s6, s7
	lw s7, 44(a6)
	addw s6, s6, s7
	lw s7, 44(s5)
	addw s6, s6, s7
	lw s7, 48(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 44(a7)
	lw s7, 48(t5)
	addw s6, s6, s7
	lw s7, 48(t6)
	addw s6, s6, s7
	lw s7, 48(a6)
	addw s6, s6, s7
	lw s7, 48(s5)
	addw s6, s6, s7
	lw s7, 52(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 48(a7)
	lw s7, 52(t5)
	addw s6, s6, s7
	lw s7, 52(t6)
	addw s6, s6, s7
	lw s7, 52(a6)
	addw s6, s6, s7
	lw s7, 52(s5)
	addw s6, s6, s7
	lw s7, 56(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 52(a7)
	lw s7, 56(t5)
	addw s6, s6, s7
	lw s7, 56(t6)
	addw s6, s6, s7
	lw s7, 56(a6)
	addw s6, s6, s7
	lw s7, 56(s5)
	addw s6, s6, s7
	lw s7, 60(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 56(a7)
	lw t5, 60(t5)
	addw t5, s6, t5
	lw t6, 60(t6)
	addw t5, t5, t6
	lw t6, 60(a6)
	addw t5, t5, t6
	lw t6, 60(s5)
	addw t5, t5, t6
	lw t6, 64(a7)
	addw t5, t5, t6
	divw t5, t5, s2
	sw t5, 60(a7)
	mv a7, t4
	addiw t4, t4, 16
	bge t4, s3, label461
	j label33
label30:
	slli t5, a7, 2
	add t5, t2, t5
	lw a6, 0(t5)
	slli t6, a7, 2
	add t6, t3, t6
	lw s5, 0(t6)
	addw s5, a6, s5
	slli a6, a7, 2
	add a6, a5, a6
	lw s6, 0(a6)
	addw s6, s5, s6
	slli s5, a7, 2
	add s5, t1, s5
	lw s7, 0(s5)
	addw s6, s6, s7
	slli a7, a7, 2
	add a7, a4, a7
	lw s7, -4(a7)
	addw s6, s6, s7
	lw s7, 4(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 0(a7)
	lw s7, 4(t5)
	addw s6, s6, s7
	lw s7, 4(t6)
	addw s6, s6, s7
	lw s7, 4(a6)
	addw s6, s6, s7
	lw s7, 4(s5)
	addw s6, s6, s7
	lw s7, 8(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 4(a7)
	lw s7, 8(t5)
	addw s6, s6, s7
	lw s7, 8(t6)
	addw s6, s6, s7
	lw s7, 8(a6)
	addw s6, s6, s7
	lw s7, 8(s5)
	addw s6, s6, s7
	lw s7, 12(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 8(a7)
	lw s7, 12(t5)
	addw s6, s6, s7
	lw s7, 12(t6)
	addw s6, s6, s7
	lw s7, 12(a6)
	addw s6, s6, s7
	lw s7, 12(s5)
	addw s6, s6, s7
	lw s7, 16(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 12(a7)
	lw s7, 16(t5)
	addw s6, s6, s7
	lw s7, 16(t6)
	addw s6, s6, s7
	lw s7, 16(a6)
	addw s6, s6, s7
	lw s7, 16(s5)
	addw s6, s6, s7
	lw s7, 20(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 16(a7)
	lw s7, 20(t5)
	addw s6, s6, s7
	lw s7, 20(t6)
	addw s6, s6, s7
	lw s7, 20(a6)
	addw s6, s6, s7
	lw s7, 20(s5)
	addw s6, s6, s7
	lw s7, 24(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 20(a7)
	lw s7, 24(t5)
	addw s6, s6, s7
	lw s7, 24(t6)
	addw s6, s6, s7
	lw s7, 24(a6)
	addw s6, s6, s7
	lw s7, 24(s5)
	addw s6, s6, s7
	lw s7, 28(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 24(a7)
	lw s7, 28(t5)
	addw s6, s6, s7
	lw s7, 28(t6)
	addw s6, s6, s7
	lw s7, 28(a6)
	addw s6, s6, s7
	lw s7, 28(s5)
	addw s6, s6, s7
	lw s7, 32(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 28(a7)
	lw s7, 32(t5)
	addw s6, s6, s7
	lw s7, 32(t6)
	addw s6, s6, s7
	lw s7, 32(a6)
	addw s6, s6, s7
	lw s7, 32(s5)
	addw s6, s6, s7
	lw s7, 36(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 32(a7)
	lw s7, 36(t5)
	addw s6, s6, s7
	lw s7, 36(t6)
	addw s6, s6, s7
	lw s7, 36(a6)
	addw s6, s6, s7
	lw s7, 36(s5)
	addw s6, s6, s7
	lw s7, 40(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 36(a7)
	lw s7, 40(t5)
	addw s6, s6, s7
	lw s7, 40(t6)
	addw s6, s6, s7
	lw s7, 40(a6)
	addw s6, s6, s7
	lw s7, 40(s5)
	addw s6, s6, s7
	lw s7, 44(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 40(a7)
	lw s7, 44(t5)
	addw s6, s6, s7
	lw s7, 44(t6)
	addw s6, s6, s7
	lw s7, 44(a6)
	addw s6, s6, s7
	lw s7, 44(s5)
	addw s6, s6, s7
	lw s7, 48(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 44(a7)
	lw s7, 48(t5)
	addw s6, s6, s7
	lw s7, 48(t6)
	addw s6, s6, s7
	lw s7, 48(a6)
	addw s6, s6, s7
	lw s7, 48(s5)
	addw s6, s6, s7
	lw s7, 52(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 48(a7)
	lw s7, 52(t5)
	addw s6, s6, s7
	lw s7, 52(t6)
	addw s6, s6, s7
	lw s7, 52(a6)
	addw s6, s6, s7
	lw s7, 52(s5)
	addw s6, s6, s7
	lw s7, 56(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 52(a7)
	lw s7, 56(t5)
	addw s6, s6, s7
	lw s7, 56(t6)
	addw s6, s6, s7
	lw s7, 56(a6)
	addw s6, s6, s7
	lw s7, 56(s5)
	addw s6, s6, s7
	lw s7, 60(a7)
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 56(a7)
	lw t5, 60(t5)
	addw t5, s6, t5
	lw t6, 60(t6)
	addw t5, t5, t6
	lw t6, 60(a6)
	addw t5, t5, t6
	lw t6, 60(s5)
	addw t5, t5, t6
	lw t6, 64(a7)
	addw t5, t5, t6
	divw t5, t5, s2
	sw t5, 60(a7)
	mv a7, t4
	addiw t4, t4, 16
	bge t4, s3, label31
	j label30
label17:
	addiw a1, a1, 1
	li a2, 1440000
	mul a3, a1, a2
	add a3, s0, a3
	mul a2, a1, a2
	add a4, a0, a2
	bge a1, s1, label51
	mv a2, zero
	bge zero, s1, label17
	ble s1, zero, label16
	li t1, 2400
	mul a5, zero, t1
	add a5, a3, a5
	mul t1, zero, t1
	add t1, a4, t1
	mv t3, zero
	addiw t2, zero, 16
	bge t2, s1, label11
	j label10
label24:
	addiw s4, s4, 1
	mv s5, a0
	li a0, 1440000
	mul a1, s4, a0
	add a1, s0, a1
	li a2, -1440000
	add a2, a1, a2
	add a3, a1, a0
	bge s4, s3, label21
	li a0, 1
	bge a0, s3, label24
	li a4, 1
	ble s3, a4, label26
	j label27
label26:
	addiw a0, a0, 1
	bge a0, s3, label24
	li a4, 1
	ble s3, a4, label26
	j label27
label21:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a0, a0, 1
	li s3, 1440000
	mul a1, a0, s3
	add a1, s0, a1
	li s2, 2400
	mul a0, a0, s2
	add a1, a1, a0
	mv a0, s1
	jal putarray
	addiw a0, s4, -1
	mul a0, a0, s3
	add a0, s0, a0
	addiw a1, s5, -1
	mul a1, a1, s2
	add a1, a0, a1
	mv a0, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
