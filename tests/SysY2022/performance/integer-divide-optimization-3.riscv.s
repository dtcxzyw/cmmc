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
	j label9
label2:
	li a1, 4
	bgt s0, a1, label18
	mv a0, zero
	mv a1, zero
	j label6
label18:
	mv a1, zero
	mv a0, zero
label3:
	addw a3, a1, a0
	li a1, 1073790977
	mul a2, a3, a1
	srli t0, a2, 63
	srai a5, a2, 61
	li a2, 2147385347
	add a4, t0, a5
	addiw t0, a0, 1
	mulw a5, a4, a2
	subw a4, a3, a5
	addw a3, a4, t0
	mul a4, a3, a1
	srli t0, a4, 63
	srai a5, a4, 61
	add t2, t0, a5
	addiw a5, a0, 2
	mulw t1, t2, a2
	subw a4, a3, t1
	addw a3, a4, a5
	mul a4, a3, a1
	srli t1, a4, 63
	srai a5, a4, 61
	add t0, t1, a5
	mulw a5, t0, a2
	addiw t0, a0, 3
	subw a4, a3, a5
	addw a3, a4, t0
	mul a1, a3, a1
	srli t0, a1, 63
	srai a4, a1, 61
	add a5, t0, a4
	mulw a4, a5, a2
	addiw a2, a0, 8
	subw a1, a3, a4
	addiw a0, a0, 4
	bgt s0, a2, label3
label6:
	addw a1, a0, a1
	li a4, 1073790977
	addiw a0, a0, 1
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 61
	add a2, a4, a3
	li a3, 2147385347
	mulw a4, a2, a3
	subw a1, a1, a4
	bgt s0, a0, label6
	mv s0, a1
label9:
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
