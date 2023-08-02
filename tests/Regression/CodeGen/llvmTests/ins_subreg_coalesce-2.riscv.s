.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test5
test5:
	zext.h a1, a0
	slliw a2, a1, 2
	sraiw a3, a2, 8
	zext.h a0, a3
	ret
