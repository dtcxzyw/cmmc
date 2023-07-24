.data
.text
.globl test
test:
.p2align 2
	sll $t0, $a0, 16
	sra $v0, $t0, 16
	jr $ra
	nop
