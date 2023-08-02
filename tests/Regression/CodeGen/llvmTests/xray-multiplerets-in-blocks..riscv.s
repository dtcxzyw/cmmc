.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl bswap_ror_commuted
bswap_ror_commuted:
	srliw a3, a0, 8
	lui a5, 4080
	slliw a4, a0, 8
	addiw a2, a5, 255
	xori a5, a2, -1
	and a1, a3, a2
	and a3, a4, a5
	or a0, a1, a3
	ret
.p2align 2
.globl different_constant
different_constant:
	srliw a1, a0, 8
	lui a3, 4080
	addiw a2, a3, 255
	and a0, a1, a2
	ret
.p2align 2
.globl different_op
different_op:
	slliw a3, a0, 8
	lui a5, 4080
	srliw a4, a0, 8
	addiw a2, a5, 256
	addi a5, a2, -1
	addw a1, a3, a2
	and a3, a4, a5
	or a0, a1, a3
	ret
.p2align 2
.globl different_shift_amount
different_shift_amount:
	slliw a3, a0, 9
	lui a5, 1044496
	srliw a4, a0, 8
	addiw a2, a5, -256
	xori a5, a2, -1
	and a1, a3, a2
	and a3, a4, a5
	or a0, a1, a3
	ret
.p2align 2
.globl different_vars
different_vars:
	slliw a4, a0, 8
	lui t0, 1044496
	srliw a5, a1, 8
	addiw a3, t0, -256
	xori t0, a3, -1
	and a2, a4, a3
	and a4, a5, t0
	or a0, a2, a4
	ret
.p2align 2
.globl extra_maskop_uses2
extra_maskop_uses2:
	slliw a3, a0, 8
	lui a5, 1044496
	srliw a4, a0, 8
	addiw a2, a5, -256
	xori t0, a2, -1
	and a1, a3, a2
	and a3, a4, t0
	mulw a2, a1, a3
	or a5, a1, a3
	mulw a0, a5, a2
	ret
.p2align 2
.globl f2
f2:
	slliw a1, a0, 8
	li a5, 255
	srliw a2, a0, 8
	lui t0, 1044480
	slli a3, a5, 8
	and a0, a1, t0
	andi a5, a2, 255
	and a4, a1, a3
	or a3, a4, a5
	lui a5, 4080
	or a4, a3, a0
	and a1, a2, a5
	or a0, a4, a1
	ret
.p2align 2
.globl not_rev16
not_rev16:
	srliw a3, a0, 8
	lui a5, 1044496
	slliw a4, a0, 8
	addiw a2, a5, -256
	xori a5, a2, -1
	and a1, a3, a2
	and a3, a4, a5
	or a0, a1, a3
	ret
.p2align 2
.globl rev16
rev16:
	slliw a3, a0, 8
	lui a5, 1044496
	srliw a4, a0, 8
	addiw a2, a5, -256
	xori a5, a2, -1
	and a1, a3, a2
	and a3, a4, a5
	or a0, a1, a3
	ret
