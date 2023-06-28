.data
.text
.globl bswap_ror_commuted
bswap_ror_commuted:
	srliw a1, a0, 8
	li a2, 16711935
	and a1, a1, a2
	slliw a0, a0, 8
	li a2, -16711936
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl different_constant
different_constant:
	slliw a1, a0, 8
	andi a1, a1, 42
	srliw a0, a0, 8
	li a2, 16711935
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl different_op
different_op:
	slliw a1, a0, 8
	li a2, 16711936
	addw a1, a1, a2
	srliw a0, a0, 8
	addi a2, a2, -1
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl different_shift_amount
different_shift_amount:
	slliw a1, a0, 9
	li a2, -16711936
	and a1, a1, a2
	srliw a0, a0, 8
	li a2, 16711935
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl different_vars
different_vars:
	slliw a0, a0, 8
	li a2, -16711936
	and a0, a0, a2
	srliw a1, a1, 8
	li a2, 16711935
	and a1, a1, a2
	or a0, a0, a1
	ret
.globl extra_maskop_uses2
extra_maskop_uses2:
	slliw a1, a0, 8
	li a2, -16711936
	and a1, a1, a2
	srliw a0, a0, 8
	li a2, 16711935
	and a0, a0, a2
	or a2, a1, a0
	mulw a0, a1, a0
	mulw a0, a0, a2
	ret
.globl f2
f2:
	slliw a2, a0, 8
	li a1, 65280
	and a3, a2, a1
	srliw a0, a0, 8
	andi a4, a0, 255
	or a3, a3, a4
	li a4, -16777216
	and a2, a2, a4
	or a2, a3, a2
	slli a1, a1, 8
	and a0, a0, a1
	or a0, a2, a0
	ret
.globl not_rev16
not_rev16:
	srliw a1, a0, 8
	li a2, -16711936
	and a1, a1, a2
	slliw a0, a0, 8
	li a2, 16711935
	and a0, a0, a2
	or a0, a1, a0
	ret
.globl rev16
rev16:
	slliw a1, a0, 8
	li a2, -16711936
	and a1, a1, a2
	srliw a0, a0, 8
	li a2, 16711935
	and a0, a0, a2
	or a0, a1, a0
	ret
