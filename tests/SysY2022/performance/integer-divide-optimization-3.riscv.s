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
	li a0, 1016
	jal _sysy_starttime
	ble s0, zero, label14
	mv a1, zero
	mv a3, zero
	addiw a0, zero, 4
	ble s0, a0, label6
	j label5
label14:
	mv s0, zero
	j label9
label5:
	slliw a2, a1, 7
	sh1add a5, a1, a1
	slliw a4, a5, 2
	subw t1, a4, a1
	slliw t0, t1, 2
	sh1add a5, a2, t0
	li a2, 458129845
	mul a4, a5, a2
	srli t0, a4, 63
	srai a5, a4, 37
	add a4, t0, a5
	addw a5, a3, a4
	li a3, 1073790977
	mul a4, a5, a3
	srli t2, a4, 63
	srai t1, a4, 61
	li a4, 2147385347
	add t0, t2, t1
	addiw t1, a1, 1
	mulw t2, t0, a4
	slliw t0, t1, 7
	subw a5, a5, t2
	sh1add t2, t1, t1
	slliw t3, t2, 2
	subw t1, t3, t1
	slliw t2, t1, 2
	sh1add t3, t0, t2
	mul t0, t3, a2
	srli t2, t0, 63
	srai t1, t0, 37
	add t3, t2, t1
	addw a5, a5, t3
	mul t0, a5, a3
	srli t3, t0, 63
	srai t1, t0, 61
	add t2, t3, t1
	addiw t1, a1, 2
	mulw t0, t2, a4
	sh1add t2, t1, t1
	subw a5, a5, t0
	slliw t4, t2, 2
	slliw t0, t1, 7
	subw t3, t4, t1
	slliw t1, t3, 2
	sh1add t2, t0, t1
	mul t0, t2, a2
	srli t2, t0, 63
	srai t1, t0, 37
	add t3, t2, t1
	addw a5, a5, t3
	mul t0, a5, a3
	srli t2, t0, 63
	srai t1, t0, 61
	add t0, t2, t1
	mulw t1, t0, a4
	addiw t0, a1, 3
	subw a5, a5, t1
	slliw a1, t0, 7
	sh1add t1, t0, t0
	slliw t3, t1, 2
	subw t2, t3, t0
	slliw t1, t2, 2
	sh1add t0, a1, t1
	mul a1, t0, a2
	srli t1, a1, 63
	srai a2, a1, 37
	add t0, t1, a2
	addw a1, a5, t0
	mul a2, a1, a3
	srli a5, a2, 63
	srai a3, a2, 61
	add t0, a5, a3
	mulw a2, t0, a4
	subw a3, a1, a2
	mv a1, a0
	addiw a0, a0, 4
	ble s0, a0, label6
	j label5
label6:
	slliw a0, a1, 7
	sh1add a4, a1, a1
	slliw a2, a4, 2
	subw a5, a2, a1
	addiw a1, a1, 1
	slliw a4, a5, 2
	li a5, 458129845
	sh1add a2, a0, a4
	mul a0, a2, a5
	srli a4, a0, 63
	srai a2, a0, 37
	add a5, a4, a2
	li a4, 1073790977
	addw a0, a3, a5
	mul a2, a0, a4
	li a4, 2147385347
	srli a5, a2, 63
	srai a3, a2, 61
	add a2, a5, a3
	mulw a5, a2, a4
	subw a3, a0, a5
	ble s0, a1, label82
	j label6
label82:
	mv s0, a3
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
