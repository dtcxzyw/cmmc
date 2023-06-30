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
	li a0, 121
	jal _sysy_starttime
	ble s0, zero, label22
	mv a1, zero
	mv a2, zero
	addiw a0, zero, 4
	bge a0, s0, label5
	j label16
label22:
	mv s0, zero
	j label17
label13:
	addiw a0, a2, 1
	addiw a1, a1, 15
	li a2, 12009599
	mul a2, a1, a2
	srai a3, a2, 54
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 1500000001
	mulw a2, a2, a3
	subw a1, a1, a2
	bge a0, s0, label52
	mv a2, a0
	j label13
label52:
	mv s0, a1
label17:
	li a0, 123
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
label5:
	addiw a0, a2, 4
	bge a0, s0, label9
	j label8
label9:
	addiw a0, a2, 4
	bge a0, s0, label13
label12:
	addiw a2, a1, 15
	li a1, 12009599
	mul a3, a2, a1
	srai a4, a3, 54
	srli a3, a3, 63
	add a4, a3, a4
	li a3, 1500000001
	mulw a4, a4, a3
	subw a2, a2, a4
	addiw a2, a2, 45
	mul a1, a2, a1
	srai a4, a1, 54
	srli a1, a1, 63
	add a1, a1, a4
	mulw a1, a1, a3
	subw a1, a2, a1
	mv a2, a0
	addiw a0, a0, 4
	bge a0, s0, label13
	j label12
label16:
	addiw a2, a1, 15
	li a1, 12009599
	mul a3, a2, a1
	srai a4, a3, 54
	srli a3, a3, 63
	add a4, a3, a4
	li a3, 1500000001
	mulw a4, a4, a3
	subw a2, a2, a4
	addiw a2, a2, 45
	mul a1, a2, a1
	srai a4, a1, 54
	srli a1, a1, 63
	add a1, a1, a4
	mulw a1, a1, a3
	subw a1, a2, a1
	mv a2, a0
	addiw a0, a0, 4
	bge a0, s0, label5
	j label16
label8:
	addiw a3, a1, 15
	li a1, 12009599
	mul a2, a3, a1
	srai a4, a2, 54
	srli a2, a2, 63
	add a4, a2, a4
	li a2, 1500000001
	mulw a4, a4, a2
	subw a3, a3, a4
	addiw a3, a3, 45
	mul a1, a3, a1
	srai a4, a1, 54
	srli a1, a1, 63
	add a1, a1, a4
	mulw a1, a1, a2
	subw a1, a3, a1
	mv a2, a0
	addiw a0, a0, 4
	bge a0, s0, label9
	j label8
