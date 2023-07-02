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
	mv a0, zero
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label6
	j label5
label18:
	mv s0, zero
	j label13
label5:
	addw a4, a0, a2
	li a2, 1073774591
	mul a3, a4, a2
	srai a5, a3, 59
	srli a3, a3, 63
	add a5, a3, a5
	li a3, 536854529
	mulw a5, a5, a3
	subw a4, a4, a5
	addiw a5, a0, 1
	addw a4, a4, a5
	mul a5, a4, a2
	srai t0, a5, 59
	srli a5, a5, 63
	add a5, a5, t0
	mulw a5, a5, a3
	subw a4, a4, a5
	addiw a5, a0, 2
	addw a4, a4, a5
	mul a5, a4, a2
	srai t0, a5, 59
	srli a5, a5, 63
	add a5, a5, t0
	mulw a5, a5, a3
	subw a4, a4, a5
	addiw a0, a0, 3
	addw a0, a4, a0
	mul a2, a0, a2
	srai a4, a2, 59
	srli a2, a2, 63
	add a2, a2, a4
	mulw a2, a2, a3
	subw a2, a0, a2
	mv a0, a1
	addiw a1, a1, 4
	ble s0, a1, label6
	j label5
label10:
	addw a1, a0, a2
	li a2, 1073774591
	mul a2, a1, a2
	srai a3, a2, 59
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 536854529
	mulw a2, a2, a3
	subw a1, a1, a2
	addiw a0, a0, 1
	ble s0, a0, label57
	mv a2, a1
	j label10
label57:
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
	addiw a1, a0, 4
	ble s0, a1, label10
label9:
	addw a4, a0, a2
	li a2, 1073774591
	mul a3, a4, a2
	srai a5, a3, 59
	srli a3, a3, 63
	add a5, a3, a5
	li a3, 536854529
	mulw a5, a5, a3
	subw a4, a4, a5
	addiw a5, a0, 1
	addw a4, a4, a5
	mul a5, a4, a2
	srai t0, a5, 59
	srli a5, a5, 63
	add a5, a5, t0
	mulw a5, a5, a3
	subw a4, a4, a5
	addiw a5, a0, 2
	addw a4, a4, a5
	mul a5, a4, a2
	srai t0, a5, 59
	srli a5, a5, 63
	add a5, a5, t0
	mulw a5, a5, a3
	subw a4, a4, a5
	addiw a0, a0, 3
	addw a0, a4, a0
	mul a2, a0, a2
	srai a4, a2, 59
	srli a2, a2, 63
	add a2, a2, a4
	mulw a2, a2, a3
	subw a2, a0, a2
	mv a0, a1
	addiw a1, a1, 4
	ble s0, a1, label10
	j label9
