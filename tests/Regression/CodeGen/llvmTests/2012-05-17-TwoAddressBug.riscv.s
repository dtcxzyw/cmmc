.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t
t:
	lui a1, 1048560
	addiw a2, a1, 1
	addw a3, a0, a2
	andi a2, a0, 1
	srli a1, a3, 23
	addw a0, a1, a2
	ret
