.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	2097152
.text
.globl main
main:
	addi sp, sp, -64
pcrel516:
	auipc a1, %pcrel_hi(array)
	sd s0, 56(sp)
	addi a0, a1, %pcrel_lo(pcrel516)
	sd s5, 48(sp)
	mv a1, zero
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s2, 24(sp)
	sd s4, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
label2:
	sh2add a2, a1, a0
	sw zero, 0(a2)
	addi a1, a1, 16
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
	lui a2, 128
	bge a1, a2, label87
	j label2
label87:
	mv a5, zero
	mv a1, zero
	li a2, 2
	bge zero, a2, label64
	mv a2, zero
	li a3, 2
	bge zero, a3, label10
	mv a3, zero
	li a4, 2
	bge zero, a4, label14
	mv a4, zero
	li t1, 2
	bge zero, t1, label63
	mv t0, zero
	mv t2, zero
	mv t1, zero
	li t4, 2
	bge zero, t4, label29
	mv t3, zero
	mv t5, zero
	j label486
label487:
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
label489:
	mv a6, t6
	mv t6, zero
	li a7, 2
	bge zero, a7, label48
	j label491
label14:
	addiw a2, a2, 1
	li a3, 2
	bge a2, a3, label10
	mv a3, zero
	li a4, 2
	bge zero, a4, label14
	mv a4, zero
	li t1, 2
	bge zero, t1, label63
	mv t0, a5
	mv a5, zero
	mv t2, t0
	mv t0, zero
	mv t1, zero
	li t4, 2
	bge zero, t4, label29
	mv t3, t2
	mv t2, zero
	mv t5, t3
	mv t3, zero
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	j label487
label491:
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
label493:
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label21:
	addiw a4, a4, 1
	mv a5, t0
	li t1, 2
	bge a4, t1, label63
	mv a5, zero
	bge zero, t1, label21
	mv t2, t0
	mv t0, zero
	mv t1, zero
	li t4, 2
	bge zero, t4, label29
	mv t3, t2
	mv t2, zero
	mv t5, t3
	mv t3, zero
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	mv a6, t6
	mv t6, zero
	j label491
label57:
	slli s2, a1, 20
	slli s4, a2, 19
	slli s3, a3, 18
	slli s5, a5, 16
	add s1, a0, s2
	add s2, s1, s4
	slli s4, a4, 17
	add s1, s2, s3
	slli s3, t0, 15
	add s2, s1, s4
	slli s4, t4, 11
	add s1, s2, s5
	add s2, s1, s3
	slli s1, t1, 14
	add s3, s2, s1
	slli s2, t2, 13
	add s1, s3, s2
	slli s3, t3, 12
	add s2, s1, s3
	slli s3, t5, 10
	add s1, s2, s4
	slli s4, t6, 9
	add s2, s1, s3
	add s1, s2, s4
	slli s4, s0, 7
	slli s2, a7, 8
	add s3, s1, s2
	mv s1, zero
	add s2, s3, s4
label58:
	slli s4, s1, 6
	addiw s5, a6, 2
	addiw s6, a6, 3
	addiw s1, s1, 1
	add s3, s2, s4
	sw a6, 0(s3)
	addiw s4, a6, 1
	sw s4, 4(s3)
	addiw s4, a6, 4
	sw s5, 8(s3)
	addiw s5, a6, 5
	sw s6, 12(s3)
	addiw s6, a6, 11
	sw s4, 16(s3)
	addiw s4, a6, 6
	sw s5, 20(s3)
	addiw s5, a6, 7
	sw s4, 24(s3)
	addiw s4, a6, 8
	sw s5, 28(s3)
	addiw s5, a6, 9
	sw s4, 32(s3)
	addiw s4, a6, 10
	sw s5, 36(s3)
	addiw s5, a6, 12
	sw s4, 40(s3)
	addiw s4, a6, 13
	sw s6, 44(s3)
	sw s5, 48(s3)
	addiw s5, a6, 14
	sw s4, 52(s3)
	addiw s4, a6, 15
	sw s5, 56(s3)
	addiw a6, a6, 16
	sw s4, 60(s3)
	li s3, 2
	bge s1, s3, label61
	j label58
label486:
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	j label487
label10:
	addiw a1, a1, 1
	li a2, 2
	bge a1, a2, label64
	mv a2, zero
	li a3, 2
	bge zero, a3, label10
	mv a3, zero
	li a4, 2
	bge zero, a4, label14
	mv a4, zero
	li t1, 2
	bge zero, t1, label63
	mv t0, a5
	mv a5, zero
	mv t2, t0
	mv t0, zero
	mv t1, zero
	li t4, 2
	bge zero, t4, label29
	mv t3, t2
	mv t2, zero
	mv t5, t3
	mv t3, zero
	j label486
label40:
	addiw t3, t3, 1
	li t4, 2
	bge t3, t4, label36
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	mv a6, t6
	mv t6, zero
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label56:
	addiw a7, a7, 1
	li s0, 2
	bge a7, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label29:
	addiw t0, t0, 1
	li t1, 2
	bge t0, t1, label25
	mv t1, zero
	li t4, 2
	bge zero, t4, label29
	mv t3, t2
	mv t2, zero
	mv t5, t3
	mv t3, zero
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	mv a6, t6
	mv t6, zero
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label44:
	addiw t4, t4, 1
	mv t5, t6
	li a6, 2
	bge t4, a6, label40
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	mv a6, t6
	mv t6, zero
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label25:
	addiw a5, a5, 1
	mv t0, t2
	li t1, 2
	bge a5, t1, label21
	mv t0, zero
	bge zero, t1, label25
	mv t1, zero
	li t4, 2
	bge zero, t4, label29
	mv t3, t2
	mv t2, zero
	mv t5, t3
	mv t3, zero
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	mv a6, t6
	mv t6, zero
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	j label493
label61:
	addiw s0, s0, 1
	li s1, 2
	bge s0, s1, label56
	j label57
label52:
	addiw t6, t6, 1
	li a7, 2
	bge t6, a7, label48
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label48:
	addiw t5, t5, 1
	mv t6, a6
	li a7, 2
	bge t5, a7, label44
	mv t6, zero
	bge zero, a7, label48
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label64:
	lw a1, 0(a0)
	lw a3, 8(a0)
	lw a4, 4(a0)
	addw a2, a1, a3
	lw a3, 40(a0)
	addw a1, a2, a4
	lw a4, 24(a0)
	addw a2, a1, a3
	lw a3, 228(a0)
	addw a1, a2, a4
	lw a4, 56(a0)
	addw a2, a1, a3
	lw a5, 964(a0)
	addw a1, a2, a4
	lw a3, 224(a0)
	addw a2, a1, a5
	lw a4, 804(a0)
	addw a1, a2, a3
	lw a3, 1996(a0)
	addw a2, a1, a4
	addw a1, a2, a3
	li a2, 3224
	add a3, a0, a2
	lw a4, 0(a3)
	li a3, 26400
	addw a1, a1, a4
	add a4, a0, a3
	lw a2, 0(a4)
	lw a4, 508(a0)
	addw a1, a1, a2
	lw a3, 124(a0)
	addw a2, a1, a4
	li a4, 246672
	addw a1, a2, a3
	add a2, a0, a4
	lw a3, 0(a2)
	li a2, 15956
	addw a1, a1, a3
	add a4, a0, a2
	li a2, 828364
	lw a3, 0(a4)
	add a4, a0, a2
	addw a1, a1, a3
	lw a3, 0(a4)
	li a4, 281600
	addw a1, a1, a3
	add a2, a0, a4
	lw a3, 0(a2)
	addw a0, a1, a3
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s2, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label36:
	addiw t2, t2, 1
	mv t3, t5
	li t4, 2
	bge t2, t4, label62
	mv t3, zero
	bge zero, t4, label36
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	mv a6, t6
	mv t6, zero
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label62:
	addiw t1, t1, 1
	mv t2, t3
	li t4, 2
	bge t1, t4, label29
	mv t2, zero
	bge zero, t4, label62
	mv t5, t3
	mv t3, zero
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	mv a6, t6
	mv t6, zero
	mv a7, zero
	li s0, 2
	bge zero, s0, label52
	mv s0, zero
	li s1, 2
	bge zero, s1, label56
	j label57
label63:
	addiw a3, a3, 1
	li a4, 2
	bge a3, a4, label14
	mv a4, zero
	li t1, 2
	bge zero, t1, label63
	mv t0, a5
	mv a5, zero
	mv t2, t0
	mv t0, zero
	mv t1, zero
	li t4, 2
	bge zero, t4, label29
	mv t3, t2
	mv t2, zero
	mv t5, t3
	mv t3, zero
	mv t4, zero
	li a6, 2
	bge zero, a6, label40
	mv t6, t5
	mv t5, zero
	li a7, 2
	bge zero, a7, label44
	j label489
