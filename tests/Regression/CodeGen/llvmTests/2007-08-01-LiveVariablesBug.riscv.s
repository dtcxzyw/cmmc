.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t
t:
	andi a2, a0, 255
	andi a1, a1, 255
	addiw a0, a2, 2
	addiw a2, a1, -2
	mulw a3, a0, a2
	andi a0, a3, 255
	ret
