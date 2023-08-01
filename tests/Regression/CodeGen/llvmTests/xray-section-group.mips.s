.data
.text
.p2align 2
.globl bar
bar:
	li $v0, 1
	jr $ra
	nop
.p2align 2
.globl foo
foo:
	move $v0, $zero
	jr $ra
	nop
