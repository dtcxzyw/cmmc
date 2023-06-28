.data
.section .rodata
.bss
.text
.globl test
test:
	div.s $f0, $f12, $f14
	jr $ra
	nop
