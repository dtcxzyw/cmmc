.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f1
f1:
	xor a2, a0, a1
	sltu a3, zero, a2
	zext.w a0, a3
	ret
.p2align 2
.globl f2
f2:
	xor a2, a0, a1
	sltiu a3, a2, 1
	zext.w a0, a3
	ret
.p2align 2
.globl f6
f6:
	slliw a2, a1, 5
	xor a3, a0, a2
	sltiu a4, a3, 1
	zext.w a0, a4
	ret
.p2align 2
.globl f7
f7:
	srliw a2, a1, 6
	xor a3, a0, a2
	sltu a4, zero, a3
	zext.w a0, a4
	ret
.p2align 2
.globl f8
f8:
	srliw a2, a1, 7
	xor a3, a0, a2
	sltiu a4, a3, 1
	zext.w a0, a4
	ret
.p2align 2
.globl f9
f9:
	slliw a1, a0, 24
	srliw a2, a0, 8
	or a3, a1, a2
	xor a4, a0, a3
	sltu a5, zero, a4
	zext.w a0, a5
	ret
.p2align 2
.globl swap_cmp_ashr
swap_cmp_ashr:
	srliw a2, a0, 11
	slt a3, a2, a1
	xori a4, a3, 1
	zext.w a0, a4
	ret
.p2align 2
.globl swap_cmp_lshr
swap_cmp_lshr:
	srliw a2, a0, 11
	sltu a3, a2, a1
	zext.w a0, a3
	ret
.p2align 2
.globl swap_cmp_rotr
swap_cmp_rotr:
	srliw a2, a0, 11
	slliw a3, a0, 21
	or a4, a2, a3
	sltu a5, a4, a1
	xori t0, a5, 1
	zext.w a0, t0
	ret
.p2align 2
.globl swap_cmp_shl
swap_cmp_shl:
	slliw a2, a0, 11
	slt a3, a1, a2
	zext.w a0, a3
	ret
