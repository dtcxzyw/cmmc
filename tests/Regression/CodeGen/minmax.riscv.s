.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl smin_lt
smin_lt:
.p2align 2
	min a0, a0, a1
	ret
.globl smax_lt
smax_lt:
.p2align 2
	max a0, a0, a1
	ret
.globl smin_le
smin_le:
.p2align 2
	min a0, a0, a1
	ret
.globl smax_le
smax_le:
.p2align 2
	max a0, a0, a1
	ret
.globl smin_gt
smin_gt:
.p2align 2
	min a0, a0, a1
	ret
.globl smax_gt
smax_gt:
.p2align 2
	max a0, a0, a1
	ret
.globl smin_ge
smin_ge:
.p2align 2
	min a0, a0, a1
	ret
.globl smax_ge
smax_ge:
.p2align 2
	max a0, a0, a1
	ret
.globl clamp_mask
clamp_mask:
.p2align 2
	max a1, a0, zero
	li a2, 127
	min a0, a1, a2
	ret
.globl clamp_mask2
clamp_mask2:
.p2align 2
	li a1, 255
	min a2, a0, a1
	max a0, a2, zero
	ret
.globl smax_zero
smax_zero:
.p2align 2
	max a0, a0, zero
	ret
.globl smax_imm
smax_imm:
.p2align 2
	li a1, 127
	max a0, a0, a1
	ret
.globl smin_imm
smin_imm:
.p2align 2
	li a1, 255
	min a0, a0, a1
	ret
.globl ssat
ssat:
.p2align 2
	li a2, 255
	li a3, -256
	min a1, a0, a2
	max a0, a1, a3
	ret
