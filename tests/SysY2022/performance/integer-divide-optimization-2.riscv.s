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
	mv a0, zero
	mv a4, zero
	li a1, 4
	ble s0, a1, label8
	j label7
label14:
	mv s0, zero
	j label2
label7:
	addiw a3, a0, 1
	slliw t3, a0, 5
	slliw t1, a3, 5
	slliw a2, a3, 8
	subw t0, t1, a3
	slliw a5, t0, 1
	subw t1, a5, a3
	slliw a3, t1, 3
	sh1add a5, a2, a3
	li a2, 274877907
	mul a3, a5, a2
	srli t1, a3, 63
	srai t0, a3, 38
	add a5, t1, t0
	sh1add t1, a5, a5
	slliw a3, a5, 7
	slliw t0, t1, 2
	subw a5, t0, a5
	slliw t1, a5, 2
	sh1add t0, a3, t1
	li a3, 458129845
	mul a5, t0, a3
	srli t2, a5, 63
	srai t1, a5, 37
	slliw a5, a0, 8
	add t0, t2, t1
	subw t2, t3, a0
	slliw t1, t2, 1
	subw t3, t1, a0
	slliw t2, t3, 3
	sh1add t1, a5, t2
	mul a5, t1, a2
	srli t3, a5, 63
	srai t2, a5, 38
	add t1, t3, t2
	sh1add t3, t1, t1
	slliw a5, t1, 7
	slliw t2, t3, 2
	subw t4, t2, t1
	slliw t1, t4, 2
	sh1add t2, a5, t1
	mul a5, t2, a3
	srli t2, a5, 63
	srai t1, a5, 37
	add a5, t2, t1
	addw t1, a4, a5
	li a4, 1073790977
	mul a5, t1, a4
	srli t4, a5, 63
	srai t2, a5, 61
	li a5, 2147385347
	add t3, t4, t2
	mulw t2, t3, a5
	subw t3, t1, t2
	addw t0, t0, t3
	mul t1, t0, a4
	srli t4, t1, 63
	srai t2, t1, 61
	add t3, t4, t2
	addiw t2, a0, 2
	mulw t1, t3, a5
	slliw t3, t2, 5
	subw t0, t0, t1
	subw t4, t3, t2
	slliw t1, t2, 8
	slliw t5, t4, 1
	subw t2, t5, t2
	slliw t3, t2, 3
	sh1add t4, t1, t3
	mul t1, t4, a2
	srli t4, t1, 63
	srai t3, t1, 38
	add t2, t4, t3
	sh1add t3, t2, t2
	slliw t1, t2, 7
	slliw t4, t3, 2
	subw t2, t4, t2
	slliw t3, t2, 2
	sh1add t4, t1, t3
	mul t1, t4, a3
	srli t3, t1, 63
	srai t2, t1, 37
	add t4, t3, t2
	addw t0, t0, t4
	mul t1, t0, a4
	srli t3, t1, 63
	srai t2, t1, 61
	add t1, t3, t2
	mulw t2, t1, a5
	addiw t1, a0, 3
	subw t0, t0, t2
	slliw a0, t1, 8
	slliw t2, t1, 5
	subw t3, t2, t1
	slliw t4, t3, 1
	subw t1, t4, t1
	slliw t3, t1, 3
	sh1add t2, a0, t3
	mul a0, t2, a2
	srli t2, a0, 63
	srai t1, a0, 38
	add a2, t2, t1
	sh1add t1, a2, a2
	slliw a0, a2, 7
	slliw t2, t1, 2
	subw t3, t2, a2
	slliw a2, t3, 2
	sh1add t1, a0, a2
	mul a0, t1, a3
	srli a3, a0, 63
	srai a2, a0, 37
	add t1, a3, a2
	addw a0, t0, t1
	mul a2, a0, a4
	srli a4, a2, 63
	srai a3, a2, 61
	add a2, a4, a3
	mulw a3, a2, a5
	subw a4, a0, a3
	mv a0, a1
	addiw a1, a1, 4
	ble s0, a1, label8
	j label7
label2:
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
label8:
	slliw a1, a0, 8
	slliw a2, a0, 5
	subw a5, a2, a0
	slliw t1, a5, 1
	li a5, 274877907
	subw a3, t1, a0
	addiw a0, a0, 1
	slliw t0, a3, 3
	sh1add a2, a1, t0
	mul a1, a2, a5
	srli a5, a1, 63
	srai a3, a1, 38
	add a2, a5, a3
	sh1add a3, a2, a2
	slliw a1, a2, 7
	slliw a5, a3, 2
	subw t0, a5, a2
	li a5, 458129845
	slliw a3, t0, 2
	sh1add a2, a1, a3
	mul a1, a2, a5
	srli a5, a1, 63
	srai a2, a1, 37
	add a3, a5, a2
	addw a1, a4, a3
	li a4, 1073790977
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 61
	add a2, a4, a3
	li a3, 2147385347
	mulw a5, a2, a3
	subw a4, a1, a5
	ble s0, a0, label127
	j label8
label127:
	mv s0, a4
	j label2
