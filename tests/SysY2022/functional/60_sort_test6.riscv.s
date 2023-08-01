.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, zero
	sd s1, 16(sp)
	li s1, 10
.p2align 2
label2:
	mv a0, s0
	jal putint
	mv a0, s1
	jal putch
	addiw s0, s0, 1
	blt s0, s1, label2
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
