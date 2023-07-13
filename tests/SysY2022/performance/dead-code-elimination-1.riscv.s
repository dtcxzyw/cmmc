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
	li a0, 100016
	jal _sysy_starttime
	ble s0, zero, label14
	mv a0, zero
	mv a2, zero
	li a1, 4
	ble s0, a1, label6
	j label5
label14:
	mv s0, zero
	j label9
label5:
	addw a4, a0, a2
	li a2, 268451839
	mul a3, a4, a2
	srli t1, a3, 63
	srai t0, a3, 55
	li a3, 134209537
	add a5, t1, t0
	addiw t1, a0, 1
	mulw t0, a5, a3
	subw a5, a4, t0
	addw a4, a5, t1
	mul a5, a4, a2
	srli t3, a5, 63
	srai t0, a5, 55
	add t1, t3, t0
	addiw t0, a0, 2
	mulw t2, t1, a3
	subw a5, a4, t2
	addw a4, a5, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 55
	add a5, t1, t0
	mulw t0, a5, a3
	addiw a5, a0, 3
	subw a4, a4, t0
	addw a0, a4, a5
	mul a2, a0, a2
	srli t0, a2, 63
	srai a4, a2, 55
	add a5, t0, a4
	mulw a3, a5, a3
	subw a2, a0, a3
	mv a0, a1
	addiw a1, a1, 4
	ble s0, a1, label6
	j label5
label6:
	addw a1, a0, a2
	li a4, 268451839
	addiw a0, a0, 1
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 55
	add a2, a4, a3
	li a3, 134209537
	mulw a4, a2, a3
	subw a1, a1, a4
	ble s0, a0, label37
	mv a2, a1
	j label6
label37:
	mv s0, a1
label9:
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
