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
	mv a0, zero
	mv a1, zero
	li a2, 4
	ble s0, a2, label6
	j label5
label14:
	mv s0, zero
	j label9
label5:
	addiw a0, a1, 60
	li a4, 12009599
	mul a1, a0, a4
	srli a4, a1, 63
	srai a3, a1, 54
	add a1, a4, a3
	li a3, 1500000001
	mulw a4, a1, a3
	subw a1, a0, a4
	mv a0, a2
	addiw a2, a2, 4
	ble s0, a2, label6
	j label5
label6:
	addiw a0, a0, 1
	addiw a1, a1, 15
	li a4, 12009599
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 54
	add a2, a4, a3
	li a3, 1500000001
	mulw a4, a2, a3
	subw a1, a1, a4
	ble s0, a0, label28
	j label6
label28:
	mv s0, a1
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
