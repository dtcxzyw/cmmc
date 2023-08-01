.data
.text
.p2align 2
.globl test5
test5:
	andi $t0, $a0, 65535
	sll $t0, $t0, 2
	sra $t0, $t0, 8
	andi $v0, $t0, 65535
	jr $ra
	nop
