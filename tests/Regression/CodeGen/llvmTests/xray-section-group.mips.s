.data
.text
.globl bar
bar:
.p2align 2
	li $v0, 1
	jr $ra
	nop
.globl foo
foo:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
