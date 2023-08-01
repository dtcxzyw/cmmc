.data
.text
.p2align 2
.globl bar
bar:
	li $v0, 21
	jr $ra
	nop
.p2align 2
.globl foo
foo:
	li $v0, 42
	jr $ra
	nop
