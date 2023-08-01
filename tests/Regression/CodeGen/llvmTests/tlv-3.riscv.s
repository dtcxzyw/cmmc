.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 1
.globl foo
foo:
	.byte	1
.text
.p2align 2
.globl main
main:
	mv a0, zero
	ret
