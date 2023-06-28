.data
.section .rodata
.bss
.text
.globl test
test:
	ori a0, a0, 1
	li a1, 7057
	and a0, a0, a1
	ret
