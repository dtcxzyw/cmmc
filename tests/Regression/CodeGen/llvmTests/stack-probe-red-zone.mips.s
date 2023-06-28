.data
.section .rodata
.bss
.text
.globl testStackProbesOff
testStackProbesOff:
	move $v0, $zero
	jr $ra
	nop
.globl testStackProbesOn
testStackProbesOn:
	jr $ra
	nop
