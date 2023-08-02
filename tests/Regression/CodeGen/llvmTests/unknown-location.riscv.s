.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	addw a4, a0, a1
	divw a5, a4, a2
	zext.w t0, a5
	addw a0, a3, t0
	ret
