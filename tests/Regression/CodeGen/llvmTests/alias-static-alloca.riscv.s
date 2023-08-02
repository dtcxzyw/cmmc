.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	addw a4, a0, a1
	addw a5, a4, a2
	addw t0, a5, a3
	zext.w a0, t0
	ret
