.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	addw a0, a0, a1
	li a1, 4294967295
	divw a0, a0, a2
	and a0, a0, a1
	addw a0, a3, a0
	ret