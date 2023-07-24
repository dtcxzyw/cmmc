.data
.text
.globl tailcallee
tailcallee:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl tailcaller
tailcaller:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
