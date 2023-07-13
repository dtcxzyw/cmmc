.data
.text
.globl test1
test1:
	sll $t0, $a0, 2
	addiu $t0, $t0, -5
	addu $v0, $a1, $t0
	jr $ra
	nop
