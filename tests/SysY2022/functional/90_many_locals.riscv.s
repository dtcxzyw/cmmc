.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -8
	li a0, 254
	sd ra, 0(sp)
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
