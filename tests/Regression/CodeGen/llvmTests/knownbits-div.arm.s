.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl sdiv_exact_even_even_fail_unknown
sdiv_exact_even_even_fail_unknown:
	uxtb r0, r0
	uxtb r1, r1
	bic r0, r0, #1
	bic r1, r1, #1
	sxtb r0, r0
	sxtb r1, r1
	sdiv r0, r0, r1
	and r0, r0, #1
	uxtb r0, r0
	bx lr
.p2align 4
.globl sdiv_exact_odd_odd
sdiv_exact_odd_odd:
	uxtb r0, r0
	uxtb r1, r1
	orr r0, r0, #1
	orr r1, r1, #1
	sxtb r0, r0
	sxtb r1, r1
	sdiv r0, r0, r1
	and r0, r0, #1
	uxtb r0, r0
	bx lr
.p2align 4
.globl sdiv_neg_neg_high_bits
sdiv_neg_neg_high_bits:
	uxtb r0, r0
	mvn r2, #127
	uxtb r1, r1
	orr r0, r0, r2
	mvn r2, #124
	sxtb r0, r0
	orr r1, r1, r2
	sxtb r1, r1
	sdiv r0, r0, r1
	bic r0, r0, #127
	uxtb r0, r0
	bx lr
.p2align 4
.globl udiv_exact_even_even_fail_unknown
udiv_exact_even_even_fail_unknown:
	uxtb r0, r0
	uxtb r1, r1
	bic r0, r0, #1
	bic r1, r1, #1
	sdiv r0, r0, r1
	and r0, r0, #1
	uxtb r0, r0
	bx lr
.p2align 4
.globl udiv_exact_even_odd
udiv_exact_even_odd:
	uxtb r0, r0
	uxtb r1, r1
	bic r0, r0, #1
	orr r1, r1, #1
	sdiv r0, r0, r1
	and r0, r0, #1
	uxtb r0, r0
	bx lr
