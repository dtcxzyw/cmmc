.data
.text
.globl foo
foo:
	sll $t0, $a0, 1
	addiu $v0, $t0, -2
	jr $ra
	nop