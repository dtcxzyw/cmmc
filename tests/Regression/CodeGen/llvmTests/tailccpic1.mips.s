.data
.text
.globl tailcallee
tailcallee:
	move $v0, $a0
	jr $ra
	nop
.globl tailcaller
tailcaller:
	move $v0, $a0
	jr $ra
	nop
