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
	li a0, 100016
	jal _sysy_starttime
	li a0, 268451839
	li a1, 134209537
	ble s0, zero, label17
	li a3, 4
	ble s0, a3, label21
	addiw a2, s0, -4
	addiw a4, s0, -20
	li a3, 16
	ble a2, a3, label27
	mv a3, zero
	mv a5, zero
.p2align 2
label4:
	addw a5, a3, a5
	mul t0, a5, a0
	srli t3, t0, 63
	srai t1, t0, 55
	add t2, t3, t1
	mulw t1, t2, a1
	addiw t2, a3, 1
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a0
	srli t4, t0, 63
	srai t1, t0, 55
	add t2, t4, t1
	addiw t1, a3, 2
	mulw t3, t2, a1
	subw t0, a5, t3
	addw a5, t0, t1
	mul t0, a5, a0
	srli t4, t0, 63
	srai t1, t0, 55
	add t3, t4, t1
	addiw t1, a3, 3
	mulw t2, t3, a1
	subw t0, a5, t2
	addw a5, t0, t1
	mul t0, a5, a0
	srli t2, t0, 63
	srai t1, t0, 55
	add t3, t2, t1
	addiw t2, a3, 4
	mulw t1, t3, a1
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a0
	srli t3, t0, 63
	srai t1, t0, 55
	add t2, t3, t1
	addiw t1, a3, 5
	mulw t4, t2, a1
	subw t0, a5, t4
	addw a5, t0, t1
	mul t0, a5, a0
	srli t3, t0, 63
	srai t1, t0, 55
	add t2, t3, t1
	mulw t1, t2, a1
	addiw t2, a3, 6
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a0
	srli t2, t0, 63
	srai t1, t0, 55
	add t4, t2, t1
	addiw t1, a3, 7
	mulw t3, t4, a1
	subw t0, a5, t3
	addw a5, t0, t1
	mul t0, a5, a0
	srli t3, t0, 63
	srai t1, t0, 55
	add t2, t3, t1
	addiw t1, a3, 8
	mulw t4, t2, a1
	subw t0, a5, t4
	addw a5, t0, t1
	mul t0, a5, a0
	srli t3, t0, 63
	srai t1, t0, 55
	add t2, t3, t1
	mulw t1, t2, a1
	addiw t2, a3, 9
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a0
	srli t2, t0, 63
	srai t1, t0, 55
	add t3, t2, t1
	addiw t2, a3, 10
	mulw t1, t3, a1
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a0
	srli t3, t0, 63
	srai t1, t0, 55
	add t2, t3, t1
	mulw t1, t2, a1
	addiw t2, a3, 11
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a0
	srli t4, t0, 63
	srai t1, t0, 55
	add t2, t4, t1
	addiw t1, a3, 12
	mulw t3, t2, a1
	subw t0, a5, t3
	addw a5, t0, t1
	mul t0, a5, a0
	srli t2, t0, 63
	srai t1, t0, 55
	add t4, t2, t1
	addiw t1, a3, 13
	mulw t3, t4, a1
	subw t0, a5, t3
	addw a5, t0, t1
	mul t0, a5, a0
	srli t2, t0, 63
	srai t1, t0, 55
	add t3, t2, t1
	addiw t1, a3, 14
	mulw t4, t3, a1
	subw t0, a5, t4
	addw a5, t0, t1
	mul t0, a5, a0
	srli t4, t0, 63
	srai t1, t0, 55
	add t3, t4, t1
	addiw t1, a3, 15
	addiw a3, a3, 16
	mulw t2, t3, a1
	subw t0, a5, t2
	addw a5, t0, t1
	mul t0, a5, a0
	srli t3, t0, 63
	srai t1, t0, 55
	add t2, t3, t1
	mulw t0, t2, a1
	subw a5, a5, t0
	bgt a4, a3, label4
	mv a4, a5
label7:
	addw a4, a4, a3
	mul a5, a4, a0
	srli t1, a5, 63
	srai t0, a5, 55
	add t2, t1, t0
	addiw t1, a3, 1
	mulw t0, t2, a1
	subw a5, a4, t0
	addw a4, a5, t1
	mul a5, a4, a0
	srli t2, a5, 63
	srai t0, a5, 55
	add t3, t2, t0
	addiw t0, a3, 2
	mulw t1, t3, a1
	subw a5, a4, t1
	addw a4, a5, t0
	mul a5, a4, a0
	srli t1, a5, 63
	srai t0, a5, 55
	add t2, t1, t0
	addiw t1, a3, 3
	addiw a3, a3, 4
	mulw t0, t2, a1
	subw a5, a4, t0
	addw a4, a5, t1
	mul a5, a4, a0
	srli t1, a5, 63
	srai t0, a5, 55
	add t2, t1, t0
	mulw a5, t2, a1
	subw a4, a4, a5
	bgt a2, a3, label7
	mv a2, a3
	mv a3, a4
label10:
	addw a4, a2, a3
	addiw a2, a2, 1
	mul a3, a4, a0
	srli t1, a3, 63
	srai a5, a3, 55
	add t0, t1, a5
	mulw a5, t0, a1
	subw a3, a4, a5
	bgt s0, a2, label10
	mv s0, a3
label13:
	li a0, 100032
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
label21:
	mv a2, zero
	mv a3, zero
	j label10
label27:
	mv a4, zero
	mv a3, zero
	j label7
