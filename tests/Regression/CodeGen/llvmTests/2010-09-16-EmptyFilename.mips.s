.data
.text
.globl bar
bar:
.p2align 2
	li $v0, 21
	jr $ra
	nop
.globl foo
foo:
.p2align 2
	li $v0, 42
	jr $ra
	nop
