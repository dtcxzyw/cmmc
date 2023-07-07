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
	ble s0, a0, label19
	j label5
label14:
	mv s0, zero
	j label9
label5:
	slliw a2, a1, 7
	sh1add a4, a1, a1
	addiw t1, a1, 1
	slliw a4, a4, 2
	sh1add t2, t1, t1
	subw a4, a4, a1
	slliw t2, t2, 2
	slliw a4, a4, 2
	sh1add a4, a2, a4
	li a2, 458129845
	mul a4, a4, a2
	srai a5, a4, 37
	srli a4, a4, 63
	add a4, a4, a5
	addw a5, a3, a4
	li a3, 1073790977
	mul a4, a5, a3
	srai t0, a4, 61
	srli a4, a4, 63
	add t0, a4, t0
	li a4, 2147385347
	mulw t0, t0, a4
	subw a5, a5, t0
	slliw t0, t1, 7
	subw t1, t2, t1
	slliw t1, t1, 2
	sh1add t0, t0, t1
	mul t0, t0, a2
	srai t1, t0, 37
	srli t0, t0, 63
	add t0, t0, t1
	addw a5, a5, t0
	mul t0, a5, a3
	srai t1, t0, 61
	srli t0, t0, 63
	add t0, t0, t1
	addiw t1, a1, 2
	sh1add t2, t1, t1
	mulw t0, t0, a4
	slliw t2, t2, 2
	subw a5, a5, t0
	slliw t0, t1, 7
	subw t1, t2, t1
	slliw t1, t1, 2
	sh1add t0, t0, t1
	mul t0, t0, a2
	srai t1, t0, 37
	srli t0, t0, 63
	add t0, t0, t1
	addw a5, a5, t0
	mul t0, a5, a3
	srai t1, t0, 61
	srli t0, t0, 63
	add t0, t0, t1
	mulw t0, t0, a4
	subw a5, a5, t0
	addiw t0, a1, 3
	sh1add t1, t0, t0
	slliw a1, t0, 7
	slliw t1, t1, 2
	subw t0, t1, t0
	slliw t0, t0, 2
	sh1add a1, a1, t0
	mul a1, a1, a2
	srai a2, a1, 37
	srli a1, a1, 63
	add a1, a1, a2
	addw a1, a5, a1
	mul a2, a1, a3
	srai a3, a2, 61
	srli a2, a2, 63
	add a2, a2, a3
	mulw a2, a2, a4
	subw a3, a1, a2
	mv a1, a0
	addiw a0, a0, 4
	ble s0, a0, label19
	j label5
label6:
	slliw a2, a0, 7
	sh1add a3, a0, a0
	slliw a3, a3, 2
	subw a3, a3, a0
	addiw a0, a0, 1
	slliw a3, a3, 2
	sh1add a2, a2, a3
	li a3, 458129845
	mul a2, a2, a3
	srai a3, a2, 37
	srli a2, a2, 63
	add a2, a2, a3
	addw a1, a1, a2
	li a2, 1073790977
	mul a2, a1, a2
	srai a3, a2, 61
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 2147385347
	mulw a2, a2, a3
	subw a1, a1, a2
	ble s0, a0, label82
	j label6
label82:
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
label19:
	mv a0, a1
	mv a1, a3
	j label6
