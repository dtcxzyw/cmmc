.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	ble s0, zero, label21
	addiw a1, s0, -8
	li a0, 8
	ble s0, a0, label26
	li a0, 7
	li a2, 6
	li a3, 5
	li a4, 4
	li t0, 3
	li t1, 2
	li t2, 1
	mv a5, zero
	mv t4, zero
	mv t3, zero
label3:
	addw t6, a5, t4
	addiw t3, t3, 8
	addiw a5, a5, 8
	li t4, 1073790977
	mul t5, t6, t4
	srai a6, t5, 61
	srli t5, t5, 63
	add a7, t5, a6
	li t5, 2147385347
	mulw a6, a7, t5
	subw a7, t6, a6
	addw t6, t2, a7
	addiw t2, t2, 8
	mul a6, t6, t4
	srai a7, a6, 61
	srli a6, a6, 63
	add a7, a6, a7
	mulw s1, a7, t5
	subw a6, t6, s1
	addw t6, t1, a6
	addiw t1, t1, 8
	mul a6, t6, t4
	srli s2, a6, 63
	srai a7, a6, 61
	add a6, s2, a7
	mulw s1, a6, t5
	subw a7, t6, s1
	addw t6, t0, a7
	addiw t0, t0, 8
	mul a6, t6, t4
	srli s1, a6, 63
	srai a7, a6, 61
	add a6, s1, a7
	mulw s2, a6, t5
	subw a7, t6, s2
	addw t6, a4, a7
	addiw a4, a4, 8
	mul a6, t6, t4
	srai a7, a6, 61
	srli a6, a6, 63
	add s1, a6, a7
	mulw a7, s1, t5
	subw a6, t6, a7
	addw t6, a3, a6
	addiw a3, a3, 8
	mul a6, t6, t4
	srai a7, a6, 61
	srli a6, a6, 63
	add a7, a6, a7
	mulw a6, a7, t5
	subw a7, t6, a6
	addw t6, a2, a7
	addiw a2, a2, 8
	mul a6, t6, t4
	srai a7, a6, 61
	srli a6, a6, 63
	add a7, a6, a7
	mulw a6, a7, t5
	subw a7, t6, a6
	addw t6, a0, a7
	addiw a0, a0, 8
	mul t4, t6, t4
	srli a7, t4, 63
	srai a6, t4, 61
	add t4, a7, a6
	mulw t5, t4, t5
	subw t4, t6, t5
	bgt a1, t3, label3
label14:
	addw a0, t3, t4
	li a3, 1073790977
	addiw t3, t3, 1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 61
	add a1, a3, a2
	li a2, 2147385347
	mulw a3, a1, a2
	subw t4, a0, a3
	bgt s0, t3, label14
	mv s0, t4
label17:
	li a0, 1031
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label21:
	mv s0, zero
	j label17
label26:
	mv t3, zero
	mv t4, zero
	j label14
