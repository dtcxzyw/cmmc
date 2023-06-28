.data
.text
.globl callee
callee:
	move $v0, $zero
	jr $ra
	nop
.globl caller
caller:
	move $v0, $zero
	jr $ra
	nop
