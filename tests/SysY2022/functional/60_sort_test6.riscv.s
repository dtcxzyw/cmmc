.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -16
	sd s0, 8(sp)
	mv s0, zero
	sd ra, 0(sp)
.p2align 2
label2:
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s0, s0, 1
	blt s0, a0, label2
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
