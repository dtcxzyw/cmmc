.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl bswap_ror_commuted
bswap_ror_commuted:
	srliw a3, a0, 8
	li a2, 16711935
	slliw a0, a0, 8
	and a1, a3, a2
	xori a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl different_constant
different_constant:
	srliw a1, a0, 8
	li a2, 16711935
	and a0, a1, a2
	ret
.globl different_op
different_op:
	slliw a3, a0, 8
	li a2, 16711936
	srliw a0, a0, 8
	addw a1, a3, a2
	addi a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl different_shift_amount
different_shift_amount:
	slliw a3, a0, 9
	li a2, -16711936
	srliw a0, a0, 8
	and a1, a3, a2
	xori a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl different_vars
different_vars:
	slliw a3, a0, 8
	li a2, -16711936
	srliw a1, a1, 8
	and a0, a3, a2
	xori a2, a2, -1
	and a3, a1, a2
	or a0, a0, a3
	ret
.globl extra_maskop_uses2
extra_maskop_uses2:
	slliw a3, a0, 8
	li a2, -16711936
	xori a4, a2, -1
	and a1, a3, a2
	srliw a3, a0, 8
	and a0, a3, a4
	or a2, a1, a0
	mulw a1, a1, a0
	mulw a0, a2, a1
	ret
.globl f2
f2:
	slliw a1, a0, 8
	li a3, 65280
	lui a4, 1044480
	srliw a0, a0, 8
	and a2, a1, a3
	andi a3, a0, 255
	or a2, a2, a3
	and a3, a1, a4
	or a1, a2, a3
	lui a2, 4080
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl not_rev16
not_rev16:
	srliw a3, a0, 8
	li a2, -16711936
	slliw a0, a0, 8
	and a1, a3, a2
	xori a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl rev16
rev16:
	slliw a3, a0, 8
	li a2, -16711936
	srliw a0, a0, 8
	and a1, a3, a2
	xori a2, a2, -1
	and a3, a0, a2
	or a0, a1, a3
	ret
