.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -8
	li a2, 112
	li a0, 1000
	li a1, 10
	sd ra, 0(sp)
.p2align 2
label2:
	addiw a3, a2, -88
	addiw a4, a2, -76
	mv a2, a4
	blt a3, a0, label19
	mv a2, a3
.p2align 2
label19:
	bgt a2, a1, label2
	mv a0, a2
	jal putint
	ld ra, 0(sp)
	li a1, 1695
	addi sp, sp, 8
	slli a0, a1, 1
	ret
