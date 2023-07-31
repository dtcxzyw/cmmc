.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	ble s0, zero, label25
	li a1, 4
	ble s0, a1, label29
	addiw a0, s0, -4
	addiw a3, s0, -20
	li a1, 16
	ble a0, a1, label35
	mv a1, zero
	mv t1, zero
	li a4, 1
	li a5, 2
	li t0, 3
	mv a2, zero
label4:
	addw t3, t1, a2
	li t1, 1073790977
	mul t2, t3, t1
	srli t6, t2, 63
	srai t5, t2, 61
	li t2, 2147385347
	add t4, t6, t5
	mulw t5, t4, t2
	subw t6, t3, t5
	addw t3, a4, t6
	mul t4, t3, t1
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	mulw t4, t6, t2
	subw t5, t3, t4
	addw t3, a5, t5
	mul t4, t3, t1
	srli t6, t4, 63
	srai t5, t4, 61
	add t4, t6, t5
	mulw a6, t4, t2
	subw t5, t3, a6
	addw t3, t0, t5
	mul t4, t3, t1
	srli a7, t4, 63
	srai t5, t4, 61
	add a6, a7, t5
	addiw t5, a2, 4
	mulw t6, a6, t2
	subw t4, t3, t6
	addw t3, t4, t5
	mul t4, t3, t1
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	addiw t5, a4, 4
	mulw a7, t6, t2
	subw t4, t3, a7
	addw t3, t4, t5
	mul t4, t3, t1
	srli a7, t4, 63
	srai t5, t4, 61
	add a6, a7, t5
	addiw t5, a5, 4
	mulw t6, a6, t2
	subw t4, t3, t6
	addw t3, t4, t5
	mul t4, t3, t1
	srli t6, t4, 63
	srai t5, t4, 61
	add a6, t6, t5
	addiw t5, t0, 4
	mulw a7, a6, t2
	subw t4, t3, a7
	addw t3, t4, t5
	mul t4, t3, t1
	srli t6, t4, 63
	srai t5, t4, 61
	add a7, t6, t5
	addiw t5, a2, 8
	mulw a6, a7, t2
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, t1
	srli t6, t4, 63
	srai t5, t4, 61
	add a7, t6, t5
	addiw t5, a4, 8
	mulw a6, a7, t2
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, t1
	srli t6, t4, 63
	srai t5, t4, 61
	add a6, t6, t5
	addiw t6, a5, 8
	mulw t5, a6, t2
	subw t4, t3, t5
	addw t3, t4, t6
	mul t4, t3, t1
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	addiw t5, t0, 8
	mulw a7, t6, t2
	subw t4, t3, a7
	addw t3, t4, t5
	mul t4, t3, t1
	srli a7, t4, 63
	srai t5, t4, 61
	add a6, a7, t5
	addiw t5, a2, 12
	mulw t6, a6, t2
	subw t4, t3, t6
	addw t3, t4, t5
	mul t4, t3, t1
	srli t6, t4, 63
	srai t5, t4, 61
	add a6, t6, t5
	addiw t5, a4, 12
	mulw a7, a6, t2
	subw t4, t3, a7
	addw t3, t4, t5
	mul t4, t3, t1
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	addiw t5, a5, 12
	addiw a5, a5, 16
	mulw a7, t6, t2
	subw t4, t3, a7
	addw t3, t4, t5
	mul t4, t3, t1
	srli a7, t4, 63
	srai t5, t4, 61
	add a6, a7, t5
	addiw t5, t0, 12
	addiw t0, t0, 16
	mulw t6, a6, t2
	subw t4, t3, t6
	addw t3, t4, t5
	mul t1, t3, t1
	srli t5, t1, 63
	srai t4, t1, 61
	add t6, t5, t4
	addiw t4, a1, 16
	mulw t2, t6, t2
	subw t1, t3, t2
	addiw t3, a4, 16
	addiw t2, a2, 16
	ble a3, t4, label88
	mv a1, t4
	mv a2, t2
	mv a4, t3
	j label4
label88:
	mv a2, t0
	mv a4, a5
	mv a1, t2
	mv a3, t4
	mv a5, t3
label11:
	addw t2, a1, t1
	li t0, 1073790977
	addiw a3, a3, 4
	addiw a1, a1, 4
	mul t1, t2, t0
	srli t5, t1, 63
	srai t4, t1, 61
	li t1, 2147385347
	add t3, t5, t4
	mulw t4, t3, t1
	subw t5, t2, t4
	addw t2, a5, t5
	addiw a5, a5, 4
	mul t3, t2, t0
	srli t5, t3, 63
	srai t4, t3, 61
	add t3, t5, t4
	mulw t6, t3, t1
	subw t4, t2, t6
	addw t2, a4, t4
	addiw a4, a4, 4
	mul t3, t2, t0
	srli t5, t3, 63
	srai t4, t3, 61
	add t6, t5, t4
	mulw t3, t6, t1
	subw t4, t2, t3
	addw t2, a2, t4
	addiw a2, a2, 4
	mul t0, t2, t0
	srli t4, t0, 63
	srai t3, t0, 61
	add t0, t4, t3
	mulw t3, t0, t1
	subw t1, t2, t3
	bgt a0, a3, label11
	mv a0, a3
label18:
	addw a1, a0, t1
	li a4, 1073790977
	addiw a0, a0, 1
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 61
	add a2, a4, a3
	li a3, 2147385347
	mulw a4, a2, a3
	subw t1, a1, a4
	bgt s0, a0, label18
	mv s0, t1
label21:
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
label29:
	mv a0, zero
	mv t1, zero
	j label18
label35:
	li a2, 3
	li a4, 2
	li a5, 1
	mv a1, zero
	mv t1, zero
	mv a3, zero
	j label11
label25:
	mv s0, zero
	j label21
