.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t
t:
	andi a4, a0, 255
	andi a3, a1, 255
	addiw a2, a4, 2
	addiw a5, a3, -2
	mulw a4, a2, a5
	andi a0, a4, 255
	ret
