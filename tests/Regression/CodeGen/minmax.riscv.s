.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl smin_lt
smin_lt:
	min a0, a0, a1
	ret
.globl smax_lt
smax_lt:
	max a0, a0, a1
	ret
.globl smin_le
smin_le:
	min a0, a0, a1
	ret
.globl smax_le
smax_le:
	max a0, a0, a1
	ret
.globl smin_gt
smin_gt:
	min a0, a0, a1
	ret
.globl smax_gt
smax_gt:
	max a0, a0, a1
	ret
.globl smin_ge
smin_ge:
	min a0, a0, a1
	ret
.globl smax_ge
smax_ge:
	max a0, a0, a1
	ret