.data
.section .rodata
.bss
.text
.globl testStackProbesOff
testStackProbesOff:
	mv a0, zero
	ret
.globl testStackProbesOn
testStackProbesOn:
	ret
