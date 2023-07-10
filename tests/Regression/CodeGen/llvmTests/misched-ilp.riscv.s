.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl ilpsched
ilpsched:
	fadd.s f12, f12, f13
	fadd.s f14, f14, f15
	fadd.s f11, f10, f11
	fsub.s f13, f12, f14
	fadd.s f10, f11, f13
	ret
