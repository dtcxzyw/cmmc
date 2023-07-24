.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f1
f1:
.p2align 2
	xor a3, a0, a1
	li a1, 4294967295
	sltu a2, zero, a3
	and a0, a2, a1
	ret
.globl f2
f2:
.p2align 2
	xor a3, a0, a1
	li a1, 4294967295
	sltiu a2, a3, 1
	and a0, a2, a1
	ret
.globl f6
f6:
.p2align 2
	slliw a2, a1, 5
	xor a0, a0, a2
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl f7
f7:
.p2align 2
	srliw a2, a1, 6
	xor a0, a0, a2
	li a2, 4294967295
	sltu a1, zero, a0
	and a0, a1, a2
	ret
.globl f8
f8:
.p2align 2
	srliw a2, a1, 7
	xor a0, a0, a2
	li a2, 4294967295
	sltiu a1, a0, 1
	and a0, a1, a2
	ret
.globl f9
f9:
.p2align 2
	slliw a1, a0, 24
	srliw a3, a0, 8
	or a2, a1, a3
	xor a0, a0, a2
	li a2, 4294967295
	sltu a1, zero, a0
	and a0, a1, a2
	ret
.globl swap_cmp_ashr
swap_cmp_ashr:
.p2align 2
	srliw a2, a0, 11
	slt a0, a2, a1
	li a2, 4294967295
	xori a1, a0, 1
	and a0, a1, a2
	ret
.globl swap_cmp_lshr
swap_cmp_lshr:
.p2align 2
	srliw a3, a0, 11
	sltu a2, a3, a1
	li a1, 4294967295
	and a0, a2, a1
	ret
.globl swap_cmp_rotr
swap_cmp_rotr:
.p2align 2
	srliw a2, a0, 11
	slliw a3, a0, 21
	or a0, a2, a3
	li a3, 4294967295
	sltu a2, a0, a1
	xori a1, a2, 1
	and a0, a1, a3
	ret
.globl swap_cmp_shl
swap_cmp_shl:
.p2align 2
	slliw a3, a0, 11
	slt a2, a1, a3
	li a1, 4294967295
	and a0, a2, a1
	ret
