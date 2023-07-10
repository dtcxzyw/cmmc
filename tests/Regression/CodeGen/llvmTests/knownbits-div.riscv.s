.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl sdiv_exact_even_even_fail_unknown
sdiv_exact_even_even_fail_unknown:
	andi a3, a0, 255
	andi a2, a3, -2
	andi a3, a1, 255
	sext.b a0, a2
	andi a1, a3, -2
	sext.b a2, a1
	divw a3, a0, a2
	andi a1, a3, 1
	andi a0, a1, 255
	ret
.globl sdiv_exact_odd_odd
sdiv_exact_odd_odd:
	andi a3, a0, 255
	ori a2, a3, 1
	andi a3, a1, 255
	sext.b a0, a2
	ori a1, a3, 1
	sext.b a2, a1
	divw a3, a0, a2
	andi a1, a3, 1
	andi a0, a1, 255
	ret
.globl sdiv_neg_neg_high_bits
sdiv_neg_neg_high_bits:
	andi a3, a0, 255
	ori a2, a3, -128
	andi a3, a1, 255
	sext.b a0, a2
	ori a1, a3, -125
	sext.b a2, a1
	divw a3, a0, a2
	andi a1, a3, -128
	andi a0, a1, 255
	ret
.globl udiv_exact_even_even_fail_unknown
udiv_exact_even_even_fail_unknown:
	andi a2, a0, 255
	andi a1, a1, 255
	andi a0, a2, -2
	andi a2, a1, -2
	divw a3, a0, a2
	andi a1, a3, 1
	andi a0, a1, 255
	ret
.globl udiv_exact_even_odd
udiv_exact_even_odd:
	andi a2, a0, 255
	andi a1, a1, 255
	andi a0, a2, -2
	ori a2, a1, 1
	divw a3, a0, a2
	andi a1, a3, 1
	andi a0, a1, 255
	ret
