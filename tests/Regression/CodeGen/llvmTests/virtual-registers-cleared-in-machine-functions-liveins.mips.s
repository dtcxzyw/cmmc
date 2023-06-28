.data
.section .rodata
.bss
.text
.globl test
test:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
