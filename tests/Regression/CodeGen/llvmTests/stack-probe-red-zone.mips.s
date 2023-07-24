.data
.text
.globl testStackProbesOff
testStackProbesOff:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl testStackProbesOn
testStackProbesOn:
.p2align 2
	jr $ra
	nop
