.data
.section .rodata
.bss
.text
.globl test
test:
	add.s $f0, $f12, $f14
	jr $ra
	nop
