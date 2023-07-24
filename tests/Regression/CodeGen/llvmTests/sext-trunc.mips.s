.data
.text
.globl foo
foo:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
