.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t
t:
	lui a1, 1048560
	or a0, a0, a1
	ret
.p2align 2
.globl t2
t2:
	lui a3, 1048544
	lui a4, 1048560
	or a1, a0, a3
	addiw a2, a4, -1
	and a0, a1, a2
	ret
