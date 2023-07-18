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
pcrel521:
	auipc a1, %pcrel_hi(array)
	sd s0, 56(sp)
	addi a0, a1, %pcrel_lo(pcrel521)
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
	li t0, 2
	bge zero, t0, label63
	mv t1, zero
	mv t0, zero
	li t2, 2
	bge zero, t2, label25
	mv t4, zero
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, zero
	j label496
label41:
	addiw t3, t3, 1
	mv t4, t5
	li t6, 2
	bge t3, t6, label37
	mv t4, zero
	bge zero, t6, label41
	mv a6, t5
	mv t5, zero
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label62:
	addiw a7, a7, 1
	li s0, 2
	bge a7, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label53:
	addiw t6, t6, 1
	li a7, 2
	bge t6, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
label57:
	slli s1, a1, 20
	slli s4, a2, 19
	slli s3, a3, 18
	slli s5, a5, 16
	add s2, a0, s1
	add s1, s2, s4
	slli s4, a4, 17
	add s2, s1, s3
	slli s3, t0, 15
	add s1, s2, s4
	slli s4, t2, 13
	add s2, s1, s5
	slli s5, t1, 14
	add s1, s2, s3
	slli s3, t3, 12
	add s2, s1, s5
	add s1, s2, s4
	slli s4, t6, 9
	add s2, s1, s3
	slli s1, t4, 11
	add s3, s2, s1
	slli s2, t5, 10
	add s1, s3, s2
	slli s3, a7, 8
	add s2, s1, s4
	slli s4, s0, 7
	add s1, s2, s3
	add s2, s1, s4
	mv s1, zero
	j label58
label49:
	addiw t5, t5, 1
	li t6, 2
	bge t5, t6, label45
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label25:
	addiw a5, a5, 1
	li t0, 2
	bge a5, t0, label21
	mv t0, zero
	li t2, 2
	bge zero, t2, label25
	mv t4, t1
	mv t1, zero
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	mv a6, t5
	mv t5, zero
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label497:
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
label499:
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	j label501
label14:
	addiw a2, a2, 1
	li a3, 2
	bge a2, a3, label10
	mv a3, zero
	li a4, 2
	bge zero, a4, label14
	mv a4, zero
	li t0, 2
	bge zero, t0, label63
	mv t1, a5
	mv a5, zero
	mv t0, zero
	li t2, 2
	bge zero, t2, label25
	mv t4, t1
	mv t1, zero
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	mv a6, t5
	mv t5, zero
	j label497
label501:
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label45:
	addiw t4, t4, 1
	mv t5, a6
	li t6, 2
	bge t4, t6, label41
	mv t5, zero
	bge zero, t6, label45
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label496:
	mv a6, t5
	mv t5, zero
	li t6, 2
	bge zero, t6, label45
	j label497
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
	li t0, 2
	bge zero, t0, label63
	mv t1, a5
	mv a5, zero
	mv t0, zero
	li t2, 2
	bge zero, t2, label25
	mv t4, t1
	mv t1, zero
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	j label496
label29:
	addiw t0, t0, 1
	mv t1, t4
	li t2, 2
	bge t0, t2, label25
	mv t1, zero
	bge zero, t2, label29
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	mv a6, t5
	mv t5, zero
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label37:
	addiw t2, t2, 1
	li t3, 2
	bge t2, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	mv a6, t5
	mv t5, zero
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label33:
	addiw t1, t1, 1
	li t2, 2
	bge t1, t2, label29
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	mv a6, t5
	mv t5, zero
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	mv s0, zero
	li s1, 2
	bge zero, s1, label62
	j label57
label21:
	addiw a4, a4, 1
	mv a5, t1
	li t0, 2
	bge a4, t0, label63
	mv a5, zero
	bge zero, t0, label21
	mv t0, zero
	li t2, 2
	bge zero, t2, label25
	mv t4, t1
	mv t1, zero
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	mv a6, t5
	mv t5, zero
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	mv a7, zero
	li s0, 2
	bge zero, s0, label53
	j label501
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
label61:
	addiw s0, s0, 1
	li s1, 2
	bge s0, s1, label62
	j label57
label64:
	lw a1, 0(a0)
	lw a3, 8(a0)
	addw a2, a1, a3
	lw a1, 4(a0)
	addw a3, a2, a1
	lw a2, 40(a0)
	addw a1, a3, a2
	lw a3, 24(a0)
	addw a2, a1, a3
	lw a1, 228(a0)
	addw a3, a2, a1
	lw a2, 56(a0)
	lw a4, 964(a0)
	addw a1, a3, a2
	lw a3, 224(a0)
	addw a2, a1, a4
	lw a4, 804(a0)
	addw a1, a2, a3
	lw a3, 1996(a0)
	addw a2, a1, a4
	addw a1, a2, a3
	li a2, 3224
	add a4, a0, a2
	lw a3, 0(a4)
	li a4, 26400
	addw a1, a1, a3
	add a3, a0, a4
	li a4, 246672
	lw a2, 0(a3)
	lw a3, 508(a0)
	addw a1, a1, a2
	lw a5, 124(a0)
	addw a2, a1, a3
	addw a1, a2, a5
	add a2, a0, a4
	li a4, 15956
	lw a3, 0(a2)
	addw a1, a1, a3
	add a3, a0, a4
	lw a2, 0(a3)
	li a3, 828364
	addw a1, a1, a2
	add a2, a0, a3
	li a3, 281600
	lw a4, 0(a2)
	add a2, a0, a3
	addw a1, a1, a4
	lw a4, 0(a2)
	addw a0, a1, a4
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
label63:
	addiw a3, a3, 1
	li a4, 2
	bge a3, a4, label14
	mv a4, zero
	li t0, 2
	bge zero, t0, label63
	mv t1, a5
	mv a5, zero
	mv t0, zero
	li t2, 2
	bge zero, t2, label25
	mv t4, t1
	mv t1, zero
	mv t2, zero
	li t3, 2
	bge zero, t3, label33
	mv t3, zero
	li t6, 2
	bge zero, t6, label37
	mv t5, t4
	mv t4, zero
	mv a6, t5
	mv t5, zero
	mv t6, zero
	li a7, 2
	bge zero, a7, label49
	j label499
