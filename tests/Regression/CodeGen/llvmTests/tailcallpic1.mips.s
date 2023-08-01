.data
.text
.p2align 2
.globl tailcallee
tailcallee:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl tailcaller
tailcaller:
	move $v0, $a0
	jr $ra
	nop
