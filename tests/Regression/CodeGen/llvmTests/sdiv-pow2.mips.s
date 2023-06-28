.data
.text
.globl test1
test1:
	li $t0, 16
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test2
test2:
	li $t0, 16
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test3
test3:
	li $t0, 16
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
