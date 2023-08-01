.data
.text
.p2align 2
.globl sdiv_exact_even_even_fail_unknown
sdiv_exact_even_even_fail_unknown:
	andi $t0, $a0, 255
	li $t1, -2
	and $t0, $t0, $t1
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	andi $t2, $a1, 255
	and $t1, $t2, $t1
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	div $zero, $t0, $t1
	mflo $t0
	andi $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl sdiv_exact_odd_odd
sdiv_exact_odd_odd:
	andi $t0, $a0, 255
	ori $t0, $t0, 1
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	andi $t1, $a1, 255
	ori $t1, $t1, 1
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	div $zero, $t0, $t1
	mflo $t0
	andi $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl sdiv_neg_neg_high_bits
sdiv_neg_neg_high_bits:
	andi $t1, $a0, 255
	li $t0, -128
	or $t1, $t1, $t0
	sll $t1, $t1, 24
	sra $t1, $t1, 24
	andi $t2, $a1, 255
	li $t3, -125
	or $t2, $t2, $t3
	sll $t2, $t2, 24
	sra $t2, $t2, 24
	div $zero, $t1, $t2
	mflo $t1
	and $t0, $t1, $t0
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl udiv_exact_even_even_fail_unknown
udiv_exact_even_even_fail_unknown:
	andi $t0, $a0, 255
	li $t1, -2
	and $t0, $t0, $t1
	andi $t2, $a1, 255
	and $t1, $t2, $t1
	div $zero, $t0, $t1
	mflo $t0
	andi $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl udiv_exact_even_odd
udiv_exact_even_odd:
	andi $t0, $a0, 255
	li $t1, -2
	and $t0, $t0, $t1
	andi $t1, $a1, 255
	ori $t1, $t1, 1
	div $zero, $t0, $t1
	mflo $t0
	andi $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
