.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -8
	li a1, 112
	sd ra, 0(sp)
.p2align 2
label2:
	addiw a0, a1, -88
	addiw a2, a1, -76
	li a3, 1000
	mv a1, a2
	blt a0, a3, label17
	mv a1, a0
.p2align 2
label17:
	li a0, 10
	bgt a1, a0, label2
	mv a0, a1
	jal putint
	ld ra, 0(sp)
	li a0, 3390
	addi sp, sp, 8
	ret
