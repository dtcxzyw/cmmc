.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	li a3, 4294967295
	and a2, a0, a3
	addiw a1, a2, 1
	sh2add a0, a1, a1
	ret
