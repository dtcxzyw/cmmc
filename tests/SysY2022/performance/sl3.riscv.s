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
	addi sp, sp, -104
	sd s1, 96(sp)
	sd s6, 88(sp)
	sd s2, 80(sp)
	sd s0, 72(sp)
	sd s5, 64(sp)
	sd s4, 56(sp)
	sd s3, 48(sp)
	sd s7, 40(sp)
	sd s8, 32(sp)
	sd s9, 24(sp)
	sd s11, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 13
	jal _sysy_starttime
pcrel884:
	auipc a0, %pcrel_hi(x)
	addi s0, a0, %pcrel_lo(pcrel884)
pcrel885:
	auipc a0, %pcrel_hi(y)
	addi a1, a0, %pcrel_lo(pcrel885)
	addiw a0, s1, -1
	mv a2, zero
	li a3, 1440000
	mul a4, zero, a3
	add a4, s0, a4
	mul a3, zero, a3
	add a5, a1, a3
	bge zero, s1, label51
	mv a3, zero
	bge zero, s1, label17
	ble s1, zero, label16
	li t2, 2400
	mul t1, zero, t2
	add t1, a4, t1
	mul t2, zero, t2
	add t2, a5, t2
	mv t4, zero
	addiw t3, zero, 16
	bge t3, s1, label10
	j label15
label51:
	li s4, 1
	mv s3, s4
	li a1, 1440000
	mul a2, s4, a1
	add a2, s0, a2
	li a3, -1440000
	add a3, a2, a3
	add a4, a2, a1
	bge s4, a0, label21
	li a1, 1
	bge a1, a0, label24
	li a5, 1
	ble a0, a5, label26
	j label27
label17:
	addiw a2, a2, 1
	li a3, 1440000
	mul a4, a2, a3
	add a4, s0, a4
	mul a3, a2, a3
	add a5, a1, a3
	bge a2, s1, label51
	mv a3, zero
	bge zero, s1, label17
	ble s1, zero, label16
	li t2, 2400
	mul t1, zero, t2
	add t1, a4, t1
	mul t2, zero, t2
	add t2, a5, t2
	mv t4, zero
	addiw t3, zero, 16
	bge t3, s1, label10
	j label15
label881:
	slli t4, t3, 2
	add t4, t1, t4
	li t5, 1
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	j label881
label16:
	addiw a3, a3, 1
	bge a3, s1, label17
	ble s1, zero, label16
	li t2, 2400
	mul t1, a3, t2
	add t1, a4, t1
	mul t2, a3, t2
	add t2, a5, t2
	mv t4, zero
	addiw t3, zero, 16
	bge t3, s1, label10
	j label15
label10:
	addiw t3, t4, 16
	bge t3, s1, label72
	j label14
label72:
	mv t3, t4
	slli t4, t4, 2
	add t4, t1, t4
	li t5, 1
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	slli t4, t3, 2
	add t4, t1, t4
	sw t5, 0(t4)
	slli t4, t3, 2
	add t4, t2, t4
	sw zero, 0(t4)
	addiw t3, t3, 1
	bge t3, s1, label16
	j label881
label14:
	slli t5, t4, 2
	add t5, t1, t5
	li t6, 1
	sw t6, 0(t5)
	slli t4, t4, 2
	add t4, t2, t4
	sw zero, 0(t4)
	sw t6, 4(t5)
	sw zero, 4(t4)
	sw t6, 8(t5)
	sw zero, 8(t4)
	sw t6, 12(t5)
	sw zero, 12(t4)
	sw t6, 16(t5)
	sw zero, 16(t4)
	sw t6, 20(t5)
	sw zero, 20(t4)
	sw t6, 24(t5)
	sw zero, 24(t4)
	sw t6, 28(t5)
	sw zero, 28(t4)
	sw t6, 32(t5)
	sw zero, 32(t4)
	sw t6, 36(t5)
	sw zero, 36(t4)
	sw t6, 40(t5)
	sw zero, 40(t4)
	sw t6, 44(t5)
	sw zero, 44(t4)
	sw t6, 48(t5)
	sw zero, 48(t4)
	sw t6, 52(t5)
	sw zero, 52(t4)
	sw t6, 56(t5)
	sw zero, 56(t4)
	sw t6, 60(t5)
	sw zero, 60(t4)
	mv t4, t3
	addiw t3, t3, 16
	bge t3, s1, label72
	j label14
label15:
	slli t5, t4, 2
	add t5, t1, t5
	li t6, 1
	sw t6, 0(t5)
	slli t4, t4, 2
	add t4, t2, t4
	sw zero, 0(t4)
	sw t6, 4(t5)
	sw zero, 4(t4)
	sw t6, 8(t5)
	sw zero, 8(t4)
	sw t6, 12(t5)
	sw zero, 12(t4)
	sw t6, 16(t5)
	sw zero, 16(t4)
	sw t6, 20(t5)
	sw zero, 20(t4)
	sw t6, 24(t5)
	sw zero, 24(t4)
	sw t6, 28(t5)
	sw zero, 28(t4)
	sw t6, 32(t5)
	sw zero, 32(t4)
	sw t6, 36(t5)
	sw zero, 36(t4)
	sw t6, 40(t5)
	sw zero, 40(t4)
	sw t6, 44(t5)
	sw zero, 44(t4)
	sw t6, 48(t5)
	sw zero, 48(t4)
	sw t6, 52(t5)
	sw zero, 52(t4)
	sw t6, 56(t5)
	sw zero, 56(t4)
	sw t6, 60(t5)
	sw zero, 60(t4)
	mv t4, t3
	addiw t3, t3, 16
	bge t3, s1, label10
	j label15
label27:
	li t4, 2400
	mul a5, a1, t4
	add a5, a2, a5
	mul t1, a1, t4
	add t1, a3, t1
	mul t2, a1, t4
	add t2, a4, t2
	li t3, -2400
	add t3, a5, t3
	add t4, a5, t4
	li s5, 1
	addiw t5, s5, 16
	bge t5, a0, label30
	j label35
label30:
	addiw t5, s5, 16
	bge t5, a0, label197
	j label34
label197:
	mv t6, s5
label32:
	slli t5, t6, 2
	add t5, a5, t5
	slli a6, t6, 2
	add a6, t1, a6
	lw a6, 0(a6)
	slli a7, t6, 2
	add a7, t2, a7
	lw a7, 0(a7)
	slli s4, t6, 2
	add s4, t3, s4
	lw s4, 0(s4)
	slli s5, t6, 2
	add s5, t4, s5
	lw s5, 0(s5)
	lw s6, -4(t5)
	addiw t6, t6, 1
	lw s7, 4(t5)
	addw s4, s4, s5
	addw s4, s4, s6
	addw s4, s4, s7
	addw a6, s4, a6
	addw a6, a6, a7
	divw a6, a6, s2
	sw a6, 0(t5)
	bge t6, a0, label26
	j label32
label35:
	slli t6, s5, 2
	add t6, a5, t6
	slli a6, s5, 2
	add a6, t1, a6
	lw s6, 0(a6)
	slli a7, s5, 2
	add a7, t2, a7
	lw s7, 0(a7)
	slli s4, s5, 2
	add s4, t3, s4
	lw s8, 0(s4)
	slli s5, s5, 2
	add s5, t4, s5
	lw s11, 0(s5)
	lw s10, -4(t6)
	lw s9, 4(t6)
	addw s6, s6, s7
	addw s6, s6, s8
	addw s6, s6, s11
	addw s6, s6, s10
	addw s6, s6, s9
	divw s6, s6, s2
	sw s6, 0(t6)
	lw s10, 4(a6)
	lw s7, 4(a7)
	lw s11, 4(s4)
	lw s8, 4(s5)
	lw s9, 8(t6)
	addw s6, s6, s10
	addw s6, s6, s7
	addw s6, s6, s11
	addw s6, s6, s8
	addw s6, s6, s9
	divw s6, s6, s2
	sw s6, 4(t6)
	lw s10, 8(a6)
	lw s11, 8(a7)
	lw s9, 8(s4)
	lw s8, 8(s5)
	lw s7, 12(t6)
	addw s6, s6, s10
	addw s6, s6, s11
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 8(t6)
	lw s10, 12(a6)
	lw s9, 12(a7)
	lw s8, 12(s4)
	lw s11, 12(s5)
	lw s7, 16(t6)
	addw s6, s6, s10
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s11
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 12(t6)
	lw s8, 16(a6)
	lw s7, 16(a7)
	lw s11, 16(s4)
	lw s10, 16(s5)
	lw s9, 20(t6)
	addw s6, s6, s8
	addw s6, s6, s7
	addw s6, s6, s11
	addw s6, s6, s10
	addw s6, s6, s9
	divw s6, s6, s2
	sw s6, 16(t6)
	lw s7, 20(a6)
	lw s9, 20(a7)
	lw s11, 20(s4)
	lw s8, 20(s5)
	lw s10, 24(t6)
	addw s6, s6, s7
	addw s6, s6, s9
	addw s6, s6, s11
	addw s6, s6, s8
	addw s6, s6, s10
	divw s6, s6, s2
	sw s6, 20(t6)
	lw s10, 24(a6)
	lw s9, 24(a7)
	lw s8, 24(s4)
	lw s11, 24(s5)
	lw s7, 28(t6)
	addw s6, s6, s10
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s11
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 24(t6)
	lw s11, 28(a6)
	lw s8, 28(a7)
	lw s9, 28(s4)
	lw s10, 28(s5)
	lw s7, 32(t6)
	addw s6, s6, s11
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s10
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 28(t6)
	lw s9, 32(a6)
	lw s7, 32(a7)
	lw s8, 32(s4)
	lw s10, 32(s5)
	lw s11, 36(t6)
	addw s6, s6, s9
	addw s6, s6, s7
	addw s6, s6, s8
	addw s6, s6, s10
	addw s6, s6, s11
	divw s6, s6, s2
	sw s6, 32(t6)
	lw s10, 36(a6)
	lw s11, 36(a7)
	lw s8, 36(s4)
	lw s9, 36(s5)
	lw s7, 40(t6)
	addw s6, s6, s10
	addw s6, s6, s11
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 36(t6)
	lw s8, 40(a6)
	lw s10, 40(a7)
	lw s9, 40(s4)
	lw s11, 40(s5)
	lw s7, 44(t6)
	addw s6, s6, s8
	addw s6, s6, s10
	addw s6, s6, s9
	addw s6, s6, s11
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 40(t6)
	lw s10, 44(a6)
	lw s11, 44(a7)
	lw s9, 44(s4)
	lw s8, 44(s5)
	lw s7, 48(t6)
	addw s6, s6, s10
	addw s6, s6, s11
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 44(t6)
	lw s11, 48(a6)
	lw s9, 48(a7)
	lw s8, 48(s4)
	lw s10, 48(s5)
	lw s7, 52(t6)
	addw s6, s6, s11
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s10
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 48(t6)
	lw s10, 52(a6)
	lw s7, 52(a7)
	lw s8, 52(s4)
	lw s9, 52(s5)
	lw s11, 56(t6)
	addw s6, s6, s10
	addw s6, s6, s7
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s11
	divw s6, s6, s2
	sw s6, 52(t6)
	lw s9, 56(a6)
	lw s8, 56(a7)
	lw s10, 56(s4)
	lw s11, 56(s5)
	lw s7, 60(t6)
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s10
	addw s6, s6, s11
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 56(t6)
	lw s7, 60(a6)
	lw a6, 60(a7)
	lw a7, 60(s4)
	lw s4, 60(s5)
	lw s5, 64(t6)
	addw s6, s6, s7
	addw a6, s6, a6
	addw a6, a6, a7
	addw a6, a6, s4
	addw a6, a6, s5
	divw a6, a6, s2
	sw a6, 60(t6)
	mv s5, t5
	addiw t5, t5, 16
	bge t5, a0, label30
	j label35
label34:
	slli t6, s5, 2
	add t6, a5, t6
	slli a6, s5, 2
	add a6, t1, a6
	lw s6, 0(a6)
	slli a7, s5, 2
	add a7, t2, a7
	lw s7, 0(a7)
	slli s4, s5, 2
	add s4, t3, s4
	lw s8, 0(s4)
	slli s5, s5, 2
	add s5, t4, s5
	lw s9, 0(s5)
	lw s11, -4(t6)
	lw s10, 4(t6)
	addw s6, s6, s7
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s11
	addw s6, s6, s10
	divw s6, s6, s2
	sw s6, 0(t6)
	lw s11, 4(a6)
	lw s10, 4(a7)
	lw s8, 4(s4)
	lw s9, 4(s5)
	lw s7, 8(t6)
	addw s6, s6, s11
	addw s6, s6, s10
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 4(t6)
	lw s8, 8(a6)
	lw s7, 8(a7)
	lw s10, 8(s4)
	lw s9, 8(s5)
	lw s11, 12(t6)
	addw s6, s6, s8
	addw s6, s6, s7
	addw s6, s6, s10
	addw s6, s6, s9
	addw s6, s6, s11
	divw s6, s6, s2
	sw s6, 8(t6)
	lw s11, 12(a6)
	lw s9, 12(a7)
	lw s10, 12(s4)
	lw s7, 12(s5)
	lw s8, 16(t6)
	addw s6, s6, s11
	addw s6, s6, s9
	addw s6, s6, s10
	addw s6, s6, s7
	addw s6, s6, s8
	divw s6, s6, s2
	sw s6, 12(t6)
	lw s11, 16(a6)
	lw s10, 16(a7)
	lw s8, 16(s4)
	lw s9, 16(s5)
	lw s7, 20(t6)
	addw s6, s6, s11
	addw s6, s6, s10
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 16(t6)
	lw s8, 20(a6)
	lw s10, 20(a7)
	lw s11, 20(s4)
	lw s9, 20(s5)
	lw s7, 24(t6)
	addw s6, s6, s8
	addw s6, s6, s10
	addw s6, s6, s11
	addw s6, s6, s9
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 20(t6)
	lw s9, 24(a6)
	lw s11, 24(a7)
	lw s10, 24(s4)
	lw s8, 24(s5)
	lw s7, 28(t6)
	addw s6, s6, s9
	addw s6, s6, s11
	addw s6, s6, s10
	addw s6, s6, s8
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 24(t6)
	lw s8, 28(a6)
	lw s9, 28(a7)
	lw s10, 28(s4)
	lw s7, 28(s5)
	lw s11, 32(t6)
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s10
	addw s6, s6, s7
	addw s6, s6, s11
	divw s6, s6, s2
	sw s6, 28(t6)
	lw s7, 32(a6)
	lw s10, 32(a7)
	lw s9, 32(s4)
	lw s11, 32(s5)
	lw s8, 36(t6)
	addw s6, s6, s7
	addw s6, s6, s10
	addw s6, s6, s9
	addw s6, s6, s11
	addw s6, s6, s8
	divw s6, s6, s2
	sw s6, 32(t6)
	lw s8, 36(a6)
	lw s7, 36(a7)
	lw s10, 36(s4)
	lw s11, 36(s5)
	lw s9, 40(t6)
	addw s6, s6, s8
	addw s6, s6, s7
	addw s6, s6, s10
	addw s6, s6, s11
	addw s6, s6, s9
	divw s6, s6, s2
	sw s6, 36(t6)
	lw s7, 40(a6)
	lw s10, 40(a7)
	lw s8, 40(s4)
	lw s9, 40(s5)
	lw s11, 44(t6)
	addw s6, s6, s7
	addw s6, s6, s10
	addw s6, s6, s8
	addw s6, s6, s9
	addw s6, s6, s11
	divw s6, s6, s2
	sw s6, 40(t6)
	lw s9, 44(a6)
	lw s8, 44(a7)
	lw s7, 44(s4)
	lw s10, 44(s5)
	lw s11, 48(t6)
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s7
	addw s6, s6, s10
	addw s6, s6, s11
	divw s6, s6, s2
	sw s6, 44(t6)
	lw s11, 48(a6)
	lw s10, 48(a7)
	lw s8, 48(s4)
	lw s7, 48(s5)
	lw s9, 52(t6)
	addw s6, s6, s11
	addw s6, s6, s10
	addw s6, s6, s8
	addw s6, s6, s7
	addw s6, s6, s9
	divw s6, s6, s2
	sw s6, 48(t6)
	lw s9, 52(a6)
	lw s8, 52(a7)
	lw s11, 52(s4)
	lw s7, 52(s5)
	lw s10, 56(t6)
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s11
	addw s6, s6, s7
	addw s6, s6, s10
	divw s6, s6, s2
	sw s6, 52(t6)
	lw s10, 56(a6)
	lw s9, 56(a7)
	lw s8, 56(s4)
	lw s11, 56(s5)
	lw s7, 60(t6)
	addw s6, s6, s10
	addw s6, s6, s9
	addw s6, s6, s8
	addw s6, s6, s11
	addw s6, s6, s7
	divw s6, s6, s2
	sw s6, 56(t6)
	lw s8, 60(a6)
	lw s7, 60(a7)
	lw s4, 60(s4)
	lw a7, 60(s5)
	lw a6, 64(t6)
	addw s5, s6, s8
	addw s5, s5, s7
	addw s4, s5, s4
	addw a7, s4, a7
	addw a6, a7, a6
	divw a6, a6, s2
	sw a6, 60(t6)
	mv s5, t5
	addiw t5, t5, 16
	bge t5, a0, label197
	j label34
label24:
	addiw s3, s3, 1
	mv s4, a1
	li a1, 1440000
	mul a2, s3, a1
	add a2, s0, a2
	li a3, -1440000
	add a3, a2, a3
	add a4, a2, a1
	bge s3, a0, label21
	li a1, 1
	bge a1, a0, label24
	li a5, 1
	ble a0, a5, label26
	j label27
label26:
	addiw a1, a1, 1
	bge a1, a0, label24
	li a5, 1
	ble a0, a5, label26
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
	li s5, 1440000
	mul a1, a0, s5
	add a1, s0, a1
	li s2, 2400
	mul a0, a0, s2
	add a1, a1, a0
	mv a0, s1
	jal putarray
	addiw a0, s3, -1
	mul a0, a0, s5
	add a0, s0, a0
	addiw a1, s4, -1
	mul a1, a1, s2
	add a1, a0, a1
	mv a0, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s11, 16(sp)
	ld s9, 24(sp)
	ld s8, 32(sp)
	ld s7, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s5, 64(sp)
	ld s0, 72(sp)
	ld s2, 80(sp)
	ld s6, 88(sp)
	ld s1, 96(sp)
	addi sp, sp, 104
	ret
