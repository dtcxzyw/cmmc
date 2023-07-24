.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
.p2align 2
	srlw a2, a0, a1
	andi a0, a2, 255
	ret
