.data
.text
.globl t
t:
	li $t0, -65535
	addu $v0, $a0, $t0
	jr $ra
	nop
