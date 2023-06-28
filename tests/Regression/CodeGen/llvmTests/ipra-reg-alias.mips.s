.data
.text
.globl main
main:
	addiu $t0, $a0, 1
	li $t1, 5
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
