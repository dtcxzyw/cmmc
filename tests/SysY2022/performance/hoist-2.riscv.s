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
	ble s0, zero, label14
	mv a1, zero
	mv a2, zero
	addiw a0, zero, 4
	ble s0, a0, label6
	j label5
label14:
	mv s0, zero
	j label9
label5:
	addiw a2, a2, 15
	li a1, 12009599
	mul a3, a2, a1
	srli t0, a3, 63
	srai a4, a3, 54
	li a3, 1500000001
	add a5, t0, a4
	mulw a4, a5, a3
	subw a5, a2, a4
	addiw a2, a5, 45
	mul a1, a2, a1
	srli a5, a1, 63
	srai a4, a1, 54
	add a1, a5, a4
	mulw a3, a1, a3
	mv a1, a0
	subw a2, a2, a3
	addiw a0, a0, 4
	ble s0, a0, label6
	j label5
label6:
	addiw a1, a1, 1
	addiw a0, a2, 15
	li a4, 12009599
	mul a2, a0, a4
	srli a4, a2, 63
	srai a3, a2, 54
	add a2, a4, a3
	li a3, 1500000001
	mulw a4, a2, a3
	subw a2, a0, a4
	ble s0, a1, label30
	j label6
label30:
	mv s0, a2
label9:
	li a0, 123
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
