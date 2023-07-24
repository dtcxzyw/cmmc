.data
.text
.globl t
t:
.p2align 2
	li $t0, -65535
	addu $v0, $a0, $t0
	jr $ra
	nop
