.data
.data
.align 1
.globl foo
foo:
	.byte	1
.text
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
