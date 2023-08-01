.data
.text
.p2align 2
.globl testStackProbesOff
testStackProbesOff:
	move $v0, $zero
	jr $ra
	nop
.p2align 2
.globl testStackProbesOn
testStackProbesOn:
	jr $ra
	nop
