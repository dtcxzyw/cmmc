.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s1, a0, -4
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	bgt s0, zero, label2
	mv s0, zero
	j label13
label2:
	li a1, 4
	bgt s0, a1, label23
	mv a0, zero
	mv a5, zero
	j label10
label23:
	li a1, 3
	li a2, 2
	li a3, 1
	mv a0, zero
	mv a5, zero
	mv a4, zero
label3:
	addw t1, a0, a5
	addiw a4, a4, 4
	addiw a0, a0, 4
	li a5, 1073790977
	mul t0, t1, a5
	srli t4, t0, 63
	srai t3, t0, 61
	li t0, 2147385347
	add t2, t4, t3
	mulw t3, t2, t0
	subw t4, t1, t3
	addw t1, a3, t4
	addiw a3, a3, 4
	mul t2, t1, a5
	srli t5, t2, 63
	srai t3, t2, 61
	add t4, t5, t3
	mulw t2, t4, t0
	subw t3, t1, t2
	addw t1, a2, t3
	addiw a2, a2, 4
	mul t2, t1, a5
	srli t4, t2, 63
	srai t3, t2, 61
	add t5, t4, t3
	mulw t3, t5, t0
	subw t2, t1, t3
	addw t1, a1, t2
	addiw a1, a1, 4
	mul a5, t1, a5
	srli t3, a5, 63
	srai t2, a5, 61
	add t4, t3, t2
	mulw t0, t4, t0
	subw a5, t1, t0
	bgt s1, a4, label3
	mv a0, a4
label10:
	addw a1, a0, a5
	li a4, 1073790977
	addiw a0, a0, 1
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 61
	add a2, a4, a3
	li a3, 2147385347
	mulw a4, a2, a3
	subw a5, a1, a4
	bgt s0, a0, label10
	mv s0, a5
label13:
	li a0, 1031
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
