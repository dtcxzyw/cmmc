.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 10015
	jal _sysy_starttime
	ble s0, zero, label18
	mv a1, zero
	mv a4, zero
	addiw a0, zero, 4
	bge a0, s0, label6
	j label5
label18:
	mv s0, zero
	j label13
label5:
	li a2, 60
	mulw a5, a1, a2
	li a3, -2004318071
	mul t1, a5, a3
	srli t1, t1, 32
	add a5, t1, a5
	sraiw t1, a5, 5
	srliw a5, a5, 31
	add a5, a5, t1
	addw t1, a4, a5
	li a4, 1073774591
	mul a5, t1, a4
	srai t2, a5, 59
	srli a5, a5, 63
	add t2, a5, t2
	li a5, 536854529
	mulw t2, t2, a5
	subw t1, t1, t2
	addiw t2, a1, 1
	mulw t2, t2, a2
	mul t3, t2, a3
	srli t3, t3, 32
	add t2, t3, t2
	sraiw t3, t2, 5
	srliw t2, t2, 31
	add t2, t2, t3
	addw t1, t1, t2
	mul t2, t1, a4
	srai t3, t2, 59
	srli t2, t2, 63
	add t2, t2, t3
	mulw t2, t2, a5
	subw t1, t1, t2
	addiw t2, a1, 2
	mulw t2, t2, a2
	mul t3, t2, a3
	srli t3, t3, 32
	add t2, t3, t2
	sraiw t3, t2, 5
	srliw t2, t2, 31
	add t2, t2, t3
	addw t1, t1, t2
	mul t2, t1, a4
	srai t3, t2, 59
	srli t2, t2, 63
	add t2, t2, t3
	mulw t2, t2, a5
	subw t1, t1, t2
	addiw a1, a1, 3
	mulw a1, a1, a2
	mul a2, a1, a3
	srli a2, a2, 32
	add a1, a2, a1
	sraiw a2, a1, 5
	srliw a1, a1, 31
	add a1, a1, a2
	addw a1, t1, a1
	mul a2, a1, a4
	srai a3, a2, 59
	srli a2, a2, 63
	add a2, a2, a3
	mulw a2, a2, a5
	subw a4, a1, a2
	mv a1, a0
	addiw a0, a0, 4
	bge a0, s0, label6
	j label5
label10:
	li a2, 60
	mulw a2, a0, a2
	li a3, -2004318071
	mul a3, a2, a3
	srli a3, a3, 32
	add a2, a3, a2
	sraiw a3, a2, 5
	srliw a2, a2, 31
	add a2, a2, a3
	addw a1, a1, a2
	li a2, 1073774591
	mul a2, a1, a2
	srai a3, a2, 59
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 536854529
	mulw a2, a2, a3
	subw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s0, label75
	j label10
label75:
	mv s0, a1
label13:
	li a0, 10030
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label6:
	addiw a0, a1, 4
	bge a0, s0, label47
	j label9
label47:
	mv a0, a1
	mv a1, a4
	j label10
label9:
	li a2, 60
	mulw a5, a1, a2
	li a3, -2004318071
	mul t1, a5, a3
	srli t1, t1, 32
	add a5, t1, a5
	sraiw t1, a5, 5
	srliw a5, a5, 31
	add a5, a5, t1
	addw t1, a4, a5
	li a4, 1073774591
	mul a5, t1, a4
	srai t2, a5, 59
	srli a5, a5, 63
	add t2, a5, t2
	li a5, 536854529
	mulw t2, t2, a5
	subw t1, t1, t2
	addiw t2, a1, 1
	mulw t2, t2, a2
	mul t3, t2, a3
	srli t3, t3, 32
	add t2, t3, t2
	sraiw t3, t2, 5
	srliw t2, t2, 31
	add t2, t2, t3
	addw t1, t1, t2
	mul t2, t1, a4
	srai t3, t2, 59
	srli t2, t2, 63
	add t2, t2, t3
	mulw t2, t2, a5
	subw t1, t1, t2
	addiw t2, a1, 2
	mulw t2, t2, a2
	mul t3, t2, a3
	srli t3, t3, 32
	add t2, t3, t2
	sraiw t3, t2, 5
	srliw t2, t2, 31
	add t2, t2, t3
	addw t1, t1, t2
	mul t2, t1, a4
	srai t3, t2, 59
	srli t2, t2, 63
	add t2, t2, t3
	mulw t2, t2, a5
	subw t1, t1, t2
	addiw a1, a1, 3
	mulw a1, a1, a2
	mul a2, a1, a3
	srli a2, a2, 32
	add a1, a2, a1
	sraiw a2, a1, 5
	srliw a1, a1, 31
	add a1, a1, a2
	addw a1, t1, a1
	mul a2, a1, a4
	srai a3, a2, 59
	srli a2, a2, 63
	add a2, a2, a3
	mulw a2, a2, a5
	subw a4, a1, a2
	mv a1, a0
	addiw a0, a0, 4
	bge a0, s0, label47
	j label9
