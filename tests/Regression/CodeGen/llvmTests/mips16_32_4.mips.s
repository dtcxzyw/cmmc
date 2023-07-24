.data
.text
.globl foo
foo:
.p2align 2
	jr $ra
	nop
.globl main
main:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl nofoo
nofoo:
.p2align 2
	jr $ra
	nop
