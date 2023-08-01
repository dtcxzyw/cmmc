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
	ble s0, zero, label25
	li a3, 4
	ble s0, a3, label29
	addiw a2, s0, -4
	addiw a3, s0, -20
	li a5, 16
	ble a2, a5, label35
	mv a4, zero
	mv t3, zero
	li t1, 1
	li t0, 2
	li t2, 3
	mv a5, zero
.p2align 2
label4:
	addw t3, t3, a5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add t4, t6, t5
	mulw t5, t4, a1
	subw t6, t3, t5
	addw t3, t1, t6
	mul t4, t3, a0
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	mulw t4, t6, a1
	subw t5, t3, t4
	addw t3, t0, t5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add t4, t6, t5
	mulw a6, t4, a1
	subw t5, t3, a6
	addw t3, t2, t5
	mul t4, t3, a0
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	mulw t5, t6, a1
	addiw t6, a5, 4
	subw t4, t3, t5
	addw t3, t4, t6
	mul t4, t3, a0
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	mulw t5, t6, a1
	addiw t6, t1, 4
	subw t4, t3, t5
	addw t3, t4, t6
	mul t4, t3, a0
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	mulw t5, t6, a1
	addiw t6, t0, 4
	subw t4, t3, t5
	addw t3, t4, t6
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add a6, t6, t5
	addiw t5, t2, 4
	mulw a7, a6, a1
	subw t4, t3, a7
	addw t3, t4, t5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add a7, t6, t5
	addiw t5, a5, 8
	mulw a6, a7, a1
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add a7, t6, t5
	addiw t5, t1, 8
	mulw a6, a7, a1
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add a7, t6, t5
	addiw t5, t0, 8
	mulw a6, a7, a1
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add a7, t6, t5
	addiw t5, t2, 8
	mulw a6, a7, a1
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add a6, t6, t5
	addiw t5, a5, 12
	mulw a7, a6, a1
	subw t4, t3, a7
	addw t3, t4, t5
	mul t4, t3, a0
	srli a7, t4, 63
	srai t5, t4, 61
	add t6, a7, t5
	addiw t5, t1, 12
	addiw t1, t1, 16
	mulw a6, t6, a1
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, a0
	srli t6, t4, 63
	srai t5, t4, 61
	add a7, t6, t5
	addiw t5, t0, 12
	addiw t0, t0, 16
	mulw a6, a7, a1
	subw t4, t3, a6
	addw t3, t4, t5
	mul t4, t3, a0
	srli a7, t4, 63
	srai t5, t4, 61
	add a6, a7, t5
	addiw t5, t2, 12
	addiw t2, t2, 16
	mulw t6, a6, a1
	subw t4, t3, t6
	addw t3, t4, t5
	mul t4, t3, a0
	srli a6, t4, 63
	srai t5, t4, 61
	add t6, a6, t5
	addiw t5, a4, 16
	mulw t4, t6, a1
	subw t3, t3, t4
	addiw t4, a5, 16
	ble a3, t5, label88
	mv a4, t5
	mv a5, t4
	j label4
label88:
	mv a4, t2
	mv a5, t0
	mv a3, t4
	mv t2, t3
	mv t0, t5
label11:
	addw t3, a3, t2
	addiw t0, t0, 4
	addiw a3, a3, 4
	mul t2, t3, a0
	srli t5, t2, 63
	srai t4, t2, 61
	add t2, t5, t4
	mulw t4, t2, a1
	subw t5, t3, t4
	addw t2, t1, t5
	addiw t1, t1, 4
	mul t3, t2, a0
	srli t6, t3, 63
	srai t4, t3, 61
	add t5, t6, t4
	mulw t3, t5, a1
	subw t4, t2, t3
	addw t2, a5, t4
	addiw a5, a5, 4
	mul t3, t2, a0
	srli t5, t3, 63
	srai t4, t3, 61
	add t6, t5, t4
	mulw t3, t6, a1
	subw t4, t2, t3
	addw t2, a4, t4
	addiw a4, a4, 4
	mul t3, t2, a0
	srli t5, t3, 63
	srai t4, t3, 61
	add t3, t5, t4
	mulw t4, t3, a1
	subw t2, t2, t4
	bgt a2, t0, label11
	mv a2, t0
label18:
	addw a3, a2, t2
	addiw a2, a2, 1
	mul a4, a3, a0
	srli t0, a4, 63
	srai a5, a4, 61
	add a4, t0, a5
	mulw a5, a4, a1
	subw t2, a3, a5
	bgt s0, a2, label18
	mv s0, t2
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
	mv a2, zero
	mv t2, zero
	j label18
label35:
	li a4, 3
	li a5, 2
	li t1, 1
	mv a3, zero
	mv t2, zero
	mv t0, zero
	j label11
label25:
	mv s0, zero
	j label21
