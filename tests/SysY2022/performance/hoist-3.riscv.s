.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 121
	jal _sysy_starttime
	bgt s0, zero, label14
	mv s0, zero
	j label9
label14:
	mv a1, zero
	mv a0, zero
.p2align 2
label2:
	addiw a2, a1, 4
	ble s0, a2, label6
	addiw a0, a0, 60
	li a4, 12009599
	mul a1, a0, a4
	srli a4, a1, 63
	srai a3, a1, 54
	add a1, a4, a3
	li a3, 1500000001
	mulw a4, a1, a3
	mv a1, a2
	subw a0, a0, a4
	j label2
label6:
	addiw a1, a1, 1
	addiw a0, a0, 15
	li a4, 12009599
	mul a2, a0, a4
	li a4, 1500000001
	srli a5, a2, 63
	srai a3, a2, 54
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a0, a3
	bgt s0, a1, label6
	mv s0, a0
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
