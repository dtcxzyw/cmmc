.data
.section .rodata
.bss
.text
.globl f
f:
	ori a1, a0, 1
	slliw a1, a1, 5
	srliw a0, a0, 27
	andi a0, a0, 1
	or a0, a0, a1
	ret
