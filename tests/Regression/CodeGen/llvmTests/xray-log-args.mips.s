.data
.text
.globl callee
callee:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl caller
caller:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
