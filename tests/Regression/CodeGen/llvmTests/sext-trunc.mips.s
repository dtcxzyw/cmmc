.data
.text
.p2align 2
.globl foo
foo:
	andi $v0, $a0, 255
	jr $ra
	nop
