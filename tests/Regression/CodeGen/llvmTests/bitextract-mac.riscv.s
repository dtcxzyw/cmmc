.data
.section .rodata
.bss
.text
.globl f
f:
	mulw a1, a1, a0
	li a0, 4294967295
	and a1, a1, a0
	srliw a3, a1, 2
	andi a3, a3, 15
	srliw a1, a1, 5
	andi a1, a1, 127
	mulw a1, a3, a1
	and a0, a1, a0
	addw a0, a2, a0
	ret
