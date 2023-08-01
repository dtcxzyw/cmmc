.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl smin_lt
smin_lt:
	min a0, a0, a1
	ret
.p2align 2
.globl smax_lt
smax_lt:
	max a0, a0, a1
	ret
.p2align 2
.globl smin_le
smin_le:
	min a0, a0, a1
	ret
.p2align 2
.globl smax_le
smax_le:
	max a0, a0, a1
	ret
.p2align 2
.globl smin_gt
smin_gt:
	min a0, a0, a1
	ret
.p2align 2
.globl smax_gt
smax_gt:
	max a0, a0, a1
	ret
.p2align 2
.globl smin_ge
smin_ge:
	min a0, a0, a1
	ret
.p2align 2
.globl smax_ge
smax_ge:
	max a0, a0, a1
	ret
.p2align 2
.globl clamp_mask
clamp_mask:
	max a1, a0, zero
	li a2, 127
	min a0, a1, a2
	ret
.p2align 2
.globl clamp_mask2
clamp_mask2:
	li a1, 255
	min a2, a0, a1
	max a0, a2, zero
	ret
.p2align 2
.globl smax_zero
smax_zero:
	max a0, a0, zero
	ret
.p2align 2
.globl smax_imm
smax_imm:
	li a1, 127
	max a0, a0, a1
	ret
.p2align 2
.globl smin_imm
smin_imm:
	li a1, 255
	min a0, a0, a1
	ret
.p2align 2
.globl ssat
ssat:
	li a2, 255
	li a3, -256
	min a1, a0, a2
	max a0, a1, a3
	ret
