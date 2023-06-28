.data
.text
.globl test
test:
	ori $t0, $a0, 1
	andi $v0, $t0, 7057
	jr $ra
	nop
