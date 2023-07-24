.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f
f:
.p2align 2
	sext.b a1, a0
	ori a2, a1, 1
	andi a0, a2, 255
	ret
