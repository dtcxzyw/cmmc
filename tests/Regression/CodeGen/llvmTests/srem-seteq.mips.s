.data
.section .rodata
.bss
.text
.globl test_srem_allones
test_srem_allones:
	li $t0, -1
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_even
test_srem_even:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	li $t1, 14
	div $zero, $t0, $t1
	mfhi $t0
	sltu $t0, $zero, $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl test_srem_even_100
test_srem_even_100:
	li $t0, 100
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_even_bit30
test_srem_even_bit30:
	li $t0, 1073741928
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_even_bit31
test_srem_even_bit31:
	li $t0, -2147483546
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_int_min
test_srem_int_min:
	li $t0, -2147483648
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_negative_even
test_srem_negative_even:
	li $t0, -14
	div $zero, $a0, $t0
	mfhi $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl test_srem_negative_odd
test_srem_negative_odd:
	li $t0, -5
	div $zero, $a0, $t0
	mfhi $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl test_srem_odd
test_srem_odd:
	li $t0, 5
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_odd_25
test_srem_odd_25:
	li $t0, 25
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_odd_bit30
test_srem_odd_bit30:
	li $t0, 1073741827
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_odd_bit31
test_srem_odd_bit31:
	li $t0, -2147483645
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl test_srem_odd_setne
test_srem_odd_setne:
	li $t0, 5
	div $zero, $a0, $t0
	mfhi $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl test_srem_one
test_srem_one:
	li $v0, 1
	jr $ra
	nop
.globl test_srem_pow2
test_srem_pow2:
	li $t0, 16
	div $zero, $a0, $t0
	mfhi $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
