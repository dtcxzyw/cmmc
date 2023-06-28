.data
.text
.globl foo
foo:
	jr $ra
	nop
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
.globl nofoo
nofoo:
	jr $ra
	nop
