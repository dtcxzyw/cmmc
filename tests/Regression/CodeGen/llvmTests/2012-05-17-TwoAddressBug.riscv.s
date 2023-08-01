.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t
t:
	li a3, -65535
	addw a2, a0, a3
	andi a3, a0, 1
	srli a1, a2, 23
	addw a0, a1, a3
	ret
