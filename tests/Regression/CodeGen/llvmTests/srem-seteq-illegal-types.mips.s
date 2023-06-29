.data
.text
.globl test_srem_even
test_srem_even:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	li $t1, 6
	div $zero, $t0, $t1
	mfhi $t0
	xori $t0, $t0, 1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_odd
test_srem_odd:
	li $t0, 99
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_pow2_setne
test_srem_pow2_setne:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	andi $t0, $t0, 3
	sltu $v0, $zero, $t0
	jr $ra
	nop
