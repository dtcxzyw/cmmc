.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	bgt s0, zero, label2
	mv s0, zero
	j label13
label2:
	addiw a2, s0, -4
	li a1, 4
	bgt s0, a1, label23
	mv a0, zero
	mv t0, zero
	j label10
label23:
	li a1, 3
	li a3, 2
	li a4, 1
	mv a0, zero
	mv t0, zero
	mv a5, zero
label3:
	addw t2, a0, t0
	addiw a5, a5, 4
	addiw a0, a0, 4
	li t0, 1073790977
	mul t1, t2, t0
	srli t5, t1, 63
	srai t4, t1, 61
	li t1, 2147385347
	add t3, t5, t4
	mulw t4, t3, t1
	subw t5, t2, t4
	addw t2, a4, t5
	addiw a4, a4, 4
	mul t3, t2, t0
	srli t6, t3, 63
	srai t4, t3, 61
	add t5, t6, t4
	mulw t3, t5, t1
	subw t4, t2, t3
	addw t2, a3, t4
	addiw a3, a3, 4
	mul t3, t2, t0
	srli t5, t3, 63
	srai t4, t3, 61
	add t6, t5, t4
	mulw t4, t6, t1
	subw t3, t2, t4
	addw t2, a1, t3
	addiw a1, a1, 4
	mul t0, t2, t0
	srli t5, t0, 63
	srai t3, t0, 61
	add t4, t5, t3
	mulw t1, t4, t1
	subw t0, t2, t1
	bgt a2, a5, label3
	mv a0, a5
label10:
	addw a1, a0, t0
	li a4, 1073790977
	addiw a0, a0, 1
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 61
	add a2, a4, a3
	li a3, 2147385347
	mulw a4, a2, a3
	subw t0, a1, a4
	bgt s0, a0, label10
	mv s0, t0
label13:
	li a0, 1031
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
