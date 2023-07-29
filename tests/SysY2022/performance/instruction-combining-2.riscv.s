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
	j label9
label2:
	addiw a1, s0, -4
	li a2, 4
	bgt s0, a2, label19
	mv a0, zero
	mv a1, zero
	j label6
label19:
	mv a2, zero
	mv a0, zero
label3:
	addw a4, a2, a0
	li a2, 1073774591
	mul a3, a4, a2
	srli t1, a3, 63
	srai t0, a3, 59
	li a3, 536854529
	add a5, t1, t0
	addiw t0, a0, 1
	mulw t1, a5, a3
	subw a5, a4, t1
	addw a4, a5, t0
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 59
	add t1, t2, t0
	mulw t0, t1, a3
	addiw t1, a0, 2
	subw a5, a4, t0
	addw a4, a5, t1
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 59
	add t1, t2, t0
	mulw t0, t1, a3
	addiw t1, a0, 3
	subw a5, a4, t0
	addiw a0, a0, 4
	addw a4, a5, t1
	mul a2, a4, a2
	srli t1, a2, 63
	srai a5, a2, 59
	add t0, t1, a5
	mulw a3, t0, a3
	subw a2, a4, a3
	bgt a1, a0, label3
	mv a1, a2
label6:
	addw a1, a0, a1
	li a4, 1073774591
	addiw a0, a0, 1
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 59
	add a2, a4, a3
	li a3, 536854529
	mulw a4, a2, a3
	subw a1, a1, a4
	bgt s0, a0, label6
	mv s0, a1
label9:
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
