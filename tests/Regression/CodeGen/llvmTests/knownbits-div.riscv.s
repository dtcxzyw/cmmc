.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl sdiv_exact_even_even_fail_unknown
sdiv_exact_even_even_fail_unknown:
	andi a4, a0, 255
	andi a5, a1, 255
	andi a3, a4, -2
	andi a0, a5, -2
	sext.b a2, a3
	sext.b a3, a0
	divw a1, a2, a3
	andi a4, a1, 1
	andi a0, a4, 255
	ret
.p2align 2
.globl sdiv_exact_odd_odd
sdiv_exact_odd_odd:
	andi a4, a0, 255
	andi a5, a1, 255
	ori a3, a4, 1
	ori a0, a5, 1
	sext.b a2, a3
	sext.b a3, a0
	divw a1, a2, a3
	andi a4, a1, 1
	andi a0, a4, 255
	ret
.p2align 2
.globl sdiv_neg_neg_high_bits
sdiv_neg_neg_high_bits:
	andi a4, a0, 255
	andi a5, a1, 255
	ori a3, a4, -128
	ori a0, a5, -125
	sext.b a2, a3
	sext.b a3, a0
	divw a1, a2, a3
	andi a4, a1, -128
	andi a0, a4, 255
	ret
.p2align 2
.globl udiv_exact_even_even_fail_unknown
udiv_exact_even_even_fail_unknown:
	andi a5, a0, 255
	andi a3, a1, 255
	andi a2, a5, -2
	andi a4, a3, -2
	divw a5, a2, a4
	andi a1, a5, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl udiv_exact_even_odd
udiv_exact_even_odd:
	andi a5, a0, 255
	andi a3, a1, 255
	andi a2, a5, -2
	ori a4, a3, 1
	divw a5, a2, a4
	andi a1, a5, 1
	andi a0, a1, 255
	ret
