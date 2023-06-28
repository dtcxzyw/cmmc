.data
.section .rodata
.bss
.text
.globl test
test:
	sub.s $f0, $f12, $f14
	jr $ra
	nop
