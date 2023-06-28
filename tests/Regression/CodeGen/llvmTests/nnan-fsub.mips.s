.data
.section .rodata
.bss
.text
.globl test
test:
	mtc1 $zero, $f0
	jr $ra
	nop
