.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t
t:
	lui a4, 1048560
	addiw a2, a4, 1
	andi a4, a0, 1
	addw a3, a0, a2
	srliw a1, a3, 23
	addw a0, a1, a4
	ret
