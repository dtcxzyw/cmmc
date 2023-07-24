.data
.text
.globl foo
foo:
.p2align 2
	addiu $v0, $a0, 1
	jr $ra
	nop
