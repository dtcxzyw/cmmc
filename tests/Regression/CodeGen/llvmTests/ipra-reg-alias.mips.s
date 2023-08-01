.data
.text
.p2align 2
.globl main
main:
	addiu $t0, $a0, 1
	sll $t1, $t0, 2
	addu $v0, $t1, $t0
	jr $ra
	nop
