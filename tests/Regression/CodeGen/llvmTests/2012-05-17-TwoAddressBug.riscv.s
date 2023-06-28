.data
.section .rodata
.bss
.text
.globl t
t:
	li a1, -65535
	addw a1, a0, a1
	srliw a1, a1, 23
	andi a0, a0, 1
	addw a0, a0, a1
	ret
