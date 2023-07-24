.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
.p2align 2
	divuw a4, a0, a1
	li a2, 4294967295
	divw a3, a0, a4
	and a4, a3, a2
	mulw a3, a1, a4
	remuw a1, a3, a1
	remw a4, a1, a0
	and a0, a4, a2
	ret
