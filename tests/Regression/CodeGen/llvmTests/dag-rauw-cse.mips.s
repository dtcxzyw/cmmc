.data
.text
.p2align 2
.globl test
test:
	ori $t0, $a0, 1
	andi $v0, $t0, 7057
	jr $ra
	nop
