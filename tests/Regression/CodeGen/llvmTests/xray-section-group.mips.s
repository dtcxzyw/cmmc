.data
.text
.globl bar
bar:
	li $v0, 1
	jr $ra
	nop
.globl foo
foo:
	move $v0, $zero
	jr $ra
	nop
