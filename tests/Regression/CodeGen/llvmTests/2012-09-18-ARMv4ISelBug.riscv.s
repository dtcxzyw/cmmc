.data
.section .rodata
.bss
.text
.globl t
t:
	li a1, -65535
	addw a0, a0, a1
	ret
