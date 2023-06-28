.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t
t:
	andi a1, a1, 255
	addiw a1, a1, -2
	andi a0, a0, 255
	addiw a0, a0, 2
	mulw a0, a1, a0
	andi a0, a0, 255
	ret
