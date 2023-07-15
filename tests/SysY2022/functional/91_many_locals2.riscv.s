.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -24
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	li s0, 6
	li s1, 5
	beq a0, s1, label8
	mv s0, a0
label8:
	mv a0, zero
	jal putint
	li a0, 1
	jal putint
	li a0, 2
	jal putint
	li a0, 3
	jal putint
	li a0, 4
	jal putint
	mv a0, s1
	jal putint
	li a0, 6
	jal putint
	li a0, 7
	jal putint
	li a0, 8
	jal putint
	li a0, 9
	jal putint
	li a0, 10
	jal putint
	li a0, 11
	jal putint
	li a0, 12
	jal putint
	li a0, 13
	jal putint
	li a0, 14
	jal putint
	li a0, 15
	jal putint
	li a0, 16
	jal putint
	li a0, 17
	jal putint
	li a0, 18
	jal putint
	li a0, 19
	jal putint
	li a0, 20
	jal putint
	li a0, 21
	jal putint
	li a0, 22
	jal putint
	li a0, 23
	jal putint
	li a0, 24
	jal putint
	li a0, 25
	jal putint
	li a0, 26
	jal putint
	li a0, 27
	jal putint
	li a0, 28
	jal putint
	li a0, 29
	jal putint
	li a0, 10
	jal putch
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	li a0, 25
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
