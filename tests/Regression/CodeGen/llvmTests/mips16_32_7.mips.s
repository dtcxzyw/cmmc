.data
.text
.p2align 2
.globl foo
foo:
	jr $ra
	nop
.p2align 2
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
.p2align 2
.globl nofoo
nofoo:
	jr $ra
	nop
