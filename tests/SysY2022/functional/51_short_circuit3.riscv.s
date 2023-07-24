.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -8
	mv a0, zero
	sd ra, 0(sp)
	jal putint
	li a0, 32
	jal putch
	li a0, 3
	jal putint
	li a0, 32
	jal putch
	mv a0, zero
	jal putint
	li a0, 32
	jal putch
	li a0, 3
	jal putint
	li a0, 10
	jal putch
	li a0, 3
	jal putint
	li a0, 32
	jal putch
	li a0, 3
	jal putint
	li a0, 10
	jal putch
	li a0, 65
	jal putch
	li a0, 68
	jal putch
	li a0, 70
	jal putch
	li a0, 10
	jal putch
	li a0, 67
	jal putch
	li a0, 73
	jal putch
	li a0, 74
	jal putch
	li a0, 75
	jal putch
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
