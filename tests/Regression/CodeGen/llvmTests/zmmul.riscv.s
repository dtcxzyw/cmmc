.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	divuw a3, a0, a1
	divw a4, a0, a3
	zext.w a2, a4
	mulw a3, a1, a2
	remuw a1, a3, a1
	remw a2, a1, a0
	zext.w a0, a2
	ret
