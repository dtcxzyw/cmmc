.data
.section .rodata
.bss
.text
.globl g
g:
	slliw a2, a1, 1
	addw a2, a0, a2
	mulw a0, a0, a2
	mulw a1, a1, a1
	addw a0, a0, a1
	ret
