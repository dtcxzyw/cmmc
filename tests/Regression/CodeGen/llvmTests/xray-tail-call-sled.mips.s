.data
.text
.globl callee
callee:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl caller
caller:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
