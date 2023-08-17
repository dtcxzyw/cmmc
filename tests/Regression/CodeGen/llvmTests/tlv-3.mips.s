.data
.data
.globl foo
foo:
	.byte	1
.text
.p2align 2
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
