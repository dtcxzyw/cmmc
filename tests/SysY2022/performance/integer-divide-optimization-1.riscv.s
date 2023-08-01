.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	li a0, 1073790977
	li a1, 2147385347
	ble s0, zero, label17
	addiw a3, s0, -4
	li a2, 4
	ble s0, a2, label22
	li a2, 3
	li a4, 2
	li t0, 1
	mv a5, zero
	mv t2, zero
	mv t1, zero
.p2align 2
label3:
	addw t2, a5, t2
	addiw t1, t1, 4
	addiw a5, a5, 4
	mul t3, t2, a0
	srli t5, t3, 63
	srai t4, t3, 61
	add t3, t5, t4
	mulw t4, t3, a1
	subw t5, t2, t4
	addw t2, t0, t5
	addiw t0, t0, 4
	mul t3, t2, a0
	srli t6, t3, 63
	srai t4, t3, 61
	add t5, t6, t4
	mulw t3, t5, a1
	subw t4, t2, t3
	addw t2, a4, t4
	addiw a4, a4, 4
	mul t3, t2, a0
	srli t6, t3, 63
	srai t4, t3, 61
	add t5, t6, t4
	mulw t3, t5, a1
	subw t4, t2, t3
	addw t2, a2, t4
	addiw a2, a2, 4
	mul t3, t2, a0
	srli t5, t3, 63
	srai t4, t3, 61
	add t6, t5, t4
	mulw t3, t6, a1
	subw t2, t2, t3
	bgt a3, t1, label3
label10:
	addw a2, t1, t2
	addiw t1, t1, 1
	mul a3, a2, a0
	srli a5, a3, 63
	srai a4, a3, 61
	add a3, a5, a4
	mulw a4, a3, a1
	subw t2, a2, a4
	bgt s0, t1, label10
	mv s0, t2
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
label17:
	mv s0, zero
	j label13
label22:
	mv t1, zero
	mv t2, zero
	j label10
