.data
.section .rodata
.bss
.text
.globl f
f:
	slli a0, a0, 24
	srai a0, a0, 24
	ori a0, a0, 1
	andi a0, a0, 255
	ret
