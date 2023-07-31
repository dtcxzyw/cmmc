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
	li a0, 10015
	jal _sysy_starttime
	bgt s0, zero, label2
	mv s0, zero
	j label13
label3:
	addiw a0, s0, -4
	addiw a2, s0, -20
	li a3, 16
	bgt a0, a3, label28
	mv a1, zero
	mv a2, zero
	j label7
label28:
	mv a1, zero
	mv a3, zero
label4:
	addw a5, a1, a3
	li a3, 1073774591
	mul a4, a5, a3
	srli t2, a4, 63
	srai t0, a4, 59
	li a4, 536854529
	add t1, t2, t0
	mulw t2, t1, a4
	addiw t1, a1, 1
	subw t0, a5, t2
	addw a5, t0, t1
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 59
	add t2, t4, t1
	addiw t1, a1, 2
	mulw t3, t2, a4
	subw t0, a5, t3
	addw a5, t0, t1
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 59
	add t3, t4, t1
	addiw t1, a1, 3
	mulw t2, t3, a4
	subw t0, a5, t2
	addw a5, t0, t1
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 59
	add t2, t3, t1
	mulw t1, t2, a4
	addiw t2, a1, 4
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 59
	add t2, t3, t1
	addiw t1, a1, 5
	mulw t4, t2, a4
	subw t0, a5, t4
	addw a5, t0, t1
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 59
	add t2, t3, t1
	mulw t1, t2, a4
	addiw t2, a1, 6
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 59
	add t2, t4, t1
	addiw t1, a1, 7
	mulw t3, t2, a4
	subw t0, a5, t3
	addw a5, t0, t1
	mul t0, a5, a3
	srli t2, t0, 63
	srai t1, t0, 59
	add t3, t2, t1
	addiw t2, a1, 8
	mulw t1, t3, a4
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a3
	srli t2, t0, 63
	srai t1, t0, 59
	add t3, t2, t1
	addiw t2, a1, 9
	mulw t1, t3, a4
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 59
	add t2, t3, t1
	mulw t1, t2, a4
	addiw t2, a1, 10
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 59
	add t3, t4, t1
	addiw t1, a1, 11
	mulw t2, t3, a4
	subw t0, a5, t2
	addw a5, t0, t1
	mul t0, a5, a3
	srli t4, t0, 63
	srai t1, t0, 59
	add t3, t4, t1
	addiw t1, a1, 12
	mulw t2, t3, a4
	subw t0, a5, t2
	addw a5, t0, t1
	mul t0, a5, a3
	srli t2, t0, 63
	srai t1, t0, 59
	add t3, t2, t1
	addiw t2, a1, 13
	mulw t1, t3, a4
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a3
	srli t2, t0, 63
	srai t1, t0, 59
	add t3, t2, t1
	addiw t2, a1, 14
	mulw t1, t3, a4
	subw t0, a5, t1
	addw a5, t0, t2
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 59
	add t4, t3, t1
	addiw t1, a1, 15
	mulw t2, t4, a4
	subw t0, a5, t2
	addw a5, t0, t1
	mul a3, a5, a3
	srli t2, a3, 63
	srai t0, a3, 59
	add t1, t2, t0
	mulw t0, t1, a4
	addiw a4, a1, 16
	subw a3, a5, t0
	bgt a2, a4, label80
	mv a1, a3
	mv a2, a4
	j label7
label80:
	mv a1, a4
	j label4
label7:
	addw a4, a1, a2
	li a1, 1073774591
	mul a3, a4, a1
	srli t1, a3, 63
	srai t0, a3, 59
	li a3, 536854529
	add a5, t1, t0
	addiw t1, a2, 1
	mulw t0, a5, a3
	subw a5, a4, t0
	addw a4, a5, t1
	mul a5, a4, a1
	srli t2, a5, 63
	srai t0, a5, 59
	add t3, t2, t0
	addiw t0, a2, 2
	mulw t1, t3, a3
	subw a5, a4, t1
	addw a4, a5, t0
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 59
	add t2, t1, t0
	addiw t1, a2, 3
	addiw a2, a2, 4
	mulw t0, t2, a3
	subw a5, a4, t0
	addw a4, a5, t1
	mul a1, a4, a1
	srli t1, a1, 63
	srai a5, a1, 59
	add t0, t1, a5
	mulw a3, t0, a3
	subw a1, a4, a3
	bgt a0, a2, label7
	mv a0, a2
	mv a2, a1
label10:
	addw a1, a0, a2
	li a4, 1073774591
	addiw a0, a0, 1
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 59
	add a2, a4, a3
	li a3, 536854529
	mulw a4, a2, a3
	subw a2, a1, a4
	bgt s0, a0, label10
	mv s0, a2
label13:
	li a0, 10030
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
label2:
	li a1, 4
	bgt s0, a1, label3
	mv a0, zero
	mv a2, zero
	j label10
