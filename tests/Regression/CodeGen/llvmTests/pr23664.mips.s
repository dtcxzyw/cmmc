.data
.text
.globl f
f:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	ori $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
