.data
.text
.globl test
test:
.p2align 2
	andi $t0, $a0, 255
	sll $t0, $t0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
