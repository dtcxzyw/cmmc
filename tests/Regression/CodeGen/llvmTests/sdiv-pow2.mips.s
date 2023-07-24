.data
.text
.globl test1
test1:
.p2align 2
	li $t0, 16
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	li $t0, 16
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl test3
test3:
.p2align 2
	li $t0, 16
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
