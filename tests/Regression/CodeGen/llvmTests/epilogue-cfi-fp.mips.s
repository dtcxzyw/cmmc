.data
.text
.p2align 2
.globl foo
foo:
	lw $t0, 16($sp)
	move $v0, $zero
	jr $ra
	nop
