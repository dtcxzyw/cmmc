.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f
f:
	sext.b a0, a0
	ori a0, a0, 1
	andi a0, a0, 255
	ret
