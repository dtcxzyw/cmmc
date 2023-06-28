.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	divuw a2, a0, a1
	divw a3, a0, a2
	li a2, 4294967295
	and a3, a3, a2
	mulw a3, a1, a3
	remuw a1, a3, a1
	remw a0, a1, a0
	and a0, a0, a2
	ret
