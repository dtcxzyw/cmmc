.data
.text
.globl foo1
foo1:
.p2align 2
	li $v0, 42
	jr $ra
	nop
.globl foo2
foo2:
.p2align 2
	li $v0, 42
	jr $ra
	nop
