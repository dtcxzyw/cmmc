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
	ble s0, zero, label13
	addiw a3, s0, -4
	li a4, 4
	ble s0, a4, label18
	mv a4, zero
	mv a2, zero
.p2align 2
label3:
	addw a4, a4, a2
	mul a5, a4, a0
	srli t2, a5, 63
	srai t0, a5, 55
	add t1, t2, t0
	mulw t0, t1, a1
	addiw t1, a2, 1
	subw a5, a4, t0
	addw a4, a5, t1
	mul a5, a4, a0
	srli t1, a5, 63
	srai t0, a5, 55
	add t2, t1, t0
	addiw t0, a2, 2
	mulw t3, t2, a1
	subw a5, a4, t3
	addw a4, a5, t0
	mul a5, a4, a0
	srli t2, a5, 63
	srai t0, a5, 55
	add t1, t2, t0
	mulw t0, t1, a1
	addiw t1, a2, 3
	subw a5, a4, t0
	addiw a2, a2, 4
	addw a4, a5, t1
	mul a5, a4, a0
	srli t2, a5, 63
	srai t0, a5, 55
	add t1, t2, t0
	mulw a5, t1, a1
	subw a4, a4, a5
	bgt a3, a2, label3
label6:
	addw a3, a2, a4
	addiw a2, a2, 1
	mul a4, a3, a0
	srli t1, a4, 63
	srai a5, a4, 55
	add t0, t1, a5
	mulw a5, t0, a1
	subw a4, a3, a5
	bgt s0, a2, label6
	mv s0, a4
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
label13:
	mv s0, zero
	j label9
label18:
	mv a2, zero
	mv a4, zero
	j label6
