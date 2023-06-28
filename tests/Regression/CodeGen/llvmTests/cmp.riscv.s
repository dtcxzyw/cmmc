.data
.text
.globl f1
f1:
	xor a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f2
f2:
	xor a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f6
f6:
	slliw a1, a1, 5
	xor a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f7
f7:
	srliw a1, a1, 6
	xor a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f8
f8:
	srliw a1, a1, 7
	xor a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f9
f9:
	slliw a1, a0, 24
	srliw a2, a0, 8
	or a1, a1, a2
	xor a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl swap_cmp_ashr
swap_cmp_ashr:
	srliw a0, a0, 11
	slt a0, a0, a1
	xori a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl swap_cmp_lshr
swap_cmp_lshr:
	srliw a0, a0, 11
	sltu a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl swap_cmp_rotr
swap_cmp_rotr:
	srliw a2, a0, 11
	slliw a0, a0, 21
	or a0, a2, a0
	sltu a0, a0, a1
	xori a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl swap_cmp_shl
swap_cmp_shl:
	slliw a0, a0, 11
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
