.data
.text
.p2align 2
.globl callee
callee:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl caller
caller:
	move $v0, $a0
	jr $ra
	nop
