.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl bswap_ror_commuted
bswap_ror_commuted:
	srliw a1, a0, 8
	lui a3, 4080
	slliw a0, a0, 8
	addiw a2, a3, 255
	and a1, a1, a2
	xori a2, a2, -1
	and a3, a0, a2
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
	slliw a1, a0, 8
	lui a3, 4080
	srliw a0, a0, 8
	addiw a2, a3, 256
	addw a1, a1, a2
	addi a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
.p2align 2
.globl different_shift_amount
different_shift_amount:
	slliw a1, a0, 9
	lui a3, 1044496
	srliw a0, a0, 8
	addiw a2, a3, -256
	and a1, a1, a2
	xori a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
.p2align 2
.globl different_vars
different_vars:
	slliw a3, a0, 8
	lui a4, 1044496
	srliw a1, a1, 8
	addiw a2, a4, -256
	and a0, a3, a2
	xori a2, a2, -1
	and a3, a1, a2
	or a0, a0, a3
	ret
.p2align 2
.globl extra_maskop_uses2
extra_maskop_uses2:
	slliw a1, a0, 8
	lui a3, 1044496
	addiw a2, a3, -256
	xori a4, a2, -1
	srliw a3, a0, 8
	and a1, a1, a2
	and a0, a3, a4
	or a2, a1, a0
	mulw a1, a1, a0
	mulw a0, a2, a1
	ret
.p2align 2
.globl f2
f2:
	slliw a1, a0, 8
	li a4, 255
	srliw a0, a0, 8
	slli a3, a4, 8
	lui a4, 1044480
	and a2, a1, a3
	andi a3, a0, 255
	or a2, a2, a3
	and a3, a1, a4
	lui a4, 4080
	or a1, a2, a3
	and a2, a0, a4
	or a0, a1, a2
	ret
.p2align 2
.globl not_rev16
not_rev16:
	srliw a1, a0, 8
	lui a3, 1044496
	slliw a0, a0, 8
	addiw a2, a3, -256
	and a1, a1, a2
	xori a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
.p2align 2
.globl rev16
rev16:
	slliw a1, a0, 8
	lui a3, 1044496
	srliw a0, a0, 8
	addiw a2, a3, -256
	and a1, a1, a2
	xori a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
