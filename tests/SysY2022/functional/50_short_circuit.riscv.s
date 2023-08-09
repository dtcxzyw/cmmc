.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	jal getint
	li a1, 10
	mv s0, a0
	ble a0, a1, label18
	jal putint
label3:
	jal getint
	li a1, 11
	ble a0, a1, label6
	addw s0, s0, a0
	mv a0, s0
	jal putint
label6:
	jal getint
	li a1, 100
	blt a0, a1, label8
	addw s0, s0, a0
	mv a0, s0
	jal putint
label8:
	jal getint
	li a1, 101
	blt a0, a1, label10
	addw s0, s0, a0
	mv a0, s0
	jal putint
label10:
	addiw s1, s0, 99
	mv a0, s1
	jal putint
	bne s1, zero, label12
	addiw a0, s0, 199
	jal putint
label12:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label18:
	mv s0, zero
	j label3
