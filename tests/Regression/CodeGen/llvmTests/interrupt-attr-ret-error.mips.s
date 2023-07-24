.data
.text
.globl isr1_user
isr1_user:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
