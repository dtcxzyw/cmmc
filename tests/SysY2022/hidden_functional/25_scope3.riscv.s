.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -8
	li a0, 97
	sd ra, 0(sp)
	jal putch
	li a0, 10
	jal putch
	ld ra, 0(sp)
	li a0, 46
	addi sp, sp, 8
	ret
