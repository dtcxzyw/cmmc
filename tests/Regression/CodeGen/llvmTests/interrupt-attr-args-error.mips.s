.data
.text
.globl isr_user
isr_user:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
