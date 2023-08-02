.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	lui a3, 262156
	lui a2, 524264
	addiw a1, a3, 1
	addiw a0, a2, 3
	ble s0, zero, label25
	li a4, 4
	ble s0, a4, label29
	addiw a2, s0, -4
	addiw a3, s0, -20
	li a5, 16
	ble a2, a5, label42
	mv t0, zero
	mv t3, zero
	mv t2, zero
	li a5, 1
	li a4, 2
	li t1, 3
.p2align 2
label7:
	addw t5, t3, t2
	mul t4, t5, a1
	srli a6, t4, 63
	srai t6, t4, 61
	add t3, a6, t6
	mulw a7, t3, a0
	subw a6, t5, a7
	addw t4, a5, a6
	mul t3, t4, a1
	srli t6, t3, 63
	srai t5, t3, 61
	add a7, t6, t5
	mulw a6, a7, a0
	subw t6, t4, a6
	addw t3, a4, t6
	mul t5, t3, a1
	srli a7, t5, 63
	srai t4, t5, 61
	add a6, a7, t4
	mulw t6, a6, a0
	subw a7, t3, t6
	addw t5, t1, a7
	mul t4, t5, a1
	srli t6, t4, 63
	srai t3, t4, 61
	add a6, t6, t3
	mulw a7, a6, a0
	addiw a6, t2, 4
	subw t6, t5, a7
	addw t4, t6, a6
	mul t3, t4, a1
	srli t6, t3, 63
	srai a6, t3, 61
	add a7, t6, a6
	addiw a6, a5, 4
	mulw t3, a7, a0
	subw t5, t4, t3
	addw t3, t5, a6
	mul t4, t3, a1
	srli a7, t4, 63
	srai t6, t4, 61
	add s1, a7, t6
	addiw t6, a4, 4
	mulw t5, s1, a0
	subw a6, t3, t5
	addw t4, a6, t6
	mul t3, t4, a1
	srli a6, t3, 63
	srai t5, t3, 61
	add a7, a6, t5
	addiw a6, t1, 4
	mulw t3, a7, a0
	subw t6, t4, t3
	addw t3, t6, a6
	mul t4, t3, a1
	srli a6, t4, 63
	srai t5, t4, 61
	add a7, a6, t5
	addiw a6, t2, 8
	mulw t4, a7, a0
	subw t6, t3, t4
	addw t4, t6, a6
	mul t3, t4, a1
	srli a6, t3, 63
	srai t5, t3, 61
	add a7, a6, t5
	addiw t5, a5, 8
	mulw t3, a7, a0
	subw t6, t4, t3
	addw t3, t6, t5
	mul t4, t3, a1
	srli t6, t4, 63
	srai a6, t4, 61
	add a7, t6, a6
	addiw a6, a4, 8
	mulw t4, a7, a0
	subw t5, t3, t4
	addw t4, t5, a6
	mul t3, t4, a1
	srli t5, t3, 63
	srai t6, t3, 61
	add s1, t5, t6
	addiw t6, t1, 8
	mulw a7, s1, a0
	subw a6, t4, a7
	addw t3, a6, t6
	mul t4, t3, a1
	srli a6, t4, 63
	srai t5, t4, 61
	add a7, a6, t5
	addiw a6, t2, 12
	addiw t2, t2, 16
	mulw t4, a7, a0
	subw t6, t3, t4
	addw t4, t6, a6
	mul t3, t4, a1
	srli a6, t3, 63
	srai t5, t3, 61
	add a7, a6, t5
	addiw a6, a5, 12
	addiw a5, a5, 16
	mulw t3, a7, a0
	subw t6, t4, t3
	addw t5, t6, a6
	mul t3, t5, a1
	srli t6, t3, 63
	srai t4, t3, 61
	add a6, t6, t4
	mulw a7, a6, a0
	addiw a6, a4, 12
	subw t6, t5, a7
	addiw a4, a4, 16
	addw t3, t6, a6
	mul t4, t3, a1
	srli t6, t4, 63
	srai t5, t4, 61
	add a6, t6, t5
	mulw a7, a6, a0
	addiw a6, t1, 12
	subw t6, t3, a7
	addiw t1, t1, 16
	addw t5, t6, a6
	mul t3, t5, a1
	srli a7, t3, 63
	srai t4, t3, 61
	add t6, a7, t4
	addiw t4, t0, 16
	mulw a6, t6, a0
	subw t3, t5, a6
	ble a3, t4, label95
	mv t0, t4
	j label7
label3:
	addw a4, a2, a3
	addiw a2, a2, 1
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 61
	add t2, t1, t0
	mulw t3, t2, a0
	subw a3, a4, t3
	bgt s0, a2, label3
	mv s0, a3
	j label21
label95:
	mv a3, t1
	mv t0, t2
	mv t1, t4
	mv t2, t3
label14:
	addw t4, t0, t2
	addiw t1, t1, 4
	addiw t0, t0, 4
	mul t3, t4, a1
	srli a7, t3, 63
	srai t5, t3, 61
	add t2, a7, t5
	mulw a6, t2, a0
	subw t6, t4, a6
	addw t3, a5, t6
	addiw a5, a5, 4
	mul t2, t3, a1
	srli a6, t2, 63
	srai t4, t2, 61
	add a7, a6, t4
	mulw t5, a7, a0
	subw t6, t3, t5
	addw t2, a4, t6
	addiw a4, a4, 4
	mul t4, t2, a1
	srli t5, t4, 63
	srai t3, t4, 61
	add a6, t5, t3
	mulw a7, a6, a0
	subw t6, t2, a7
	addw t3, a3, t6
	addiw a3, a3, 4
	mul t4, t3, a1
	srli t6, t4, 63
	srai t5, t4, 61
	add a6, t6, t5
	mulw a7, a6, a0
	subw t2, t3, a7
	bgt a2, t1, label14
	mv a2, t1
	mv a3, t2
	j label3
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
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label29:
	mv a2, zero
	mv a3, zero
	j label3
label42:
	li a3, 3
	li a4, 2
	li a5, 1
	mv t0, zero
	mv t2, zero
	mv t1, zero
	j label14
label25:
	mv s0, zero
	j label21
