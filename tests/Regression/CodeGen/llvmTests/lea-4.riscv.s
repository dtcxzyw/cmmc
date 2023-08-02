.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t1
t1:
	addiw a1, a0, -1
	slliw a2, a1, 1
	zext.h a3, a2
	zext.h a0, a3
	ret
.p2align 2
.globl t2
t2:
	addiw a1, a0, -1
	slliw a2, a1, 1
	zext.h a0, a2
	ret
