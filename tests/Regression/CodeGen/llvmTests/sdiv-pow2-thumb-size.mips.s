.data
.text
.globl f0
f0:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	li $t1, 2
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl f1
f1:
	li $t0, 4
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl f2
f2:
	li $t0, 5
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl f3
f3:
	li $t0, 256
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl f4
f4:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	li $t1, 2
	div $zero, $t0, $t1
	mflo $t0
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl f5
f5:
	li $t0, 4
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
