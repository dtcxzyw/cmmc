.data
.text
.p2align 2
.globl foo1
foo1:
	li $v0, 42
	jr $ra
	nop
.p2align 2
.globl foo2
foo2:
	li $v0, 42
	jr $ra
	nop
