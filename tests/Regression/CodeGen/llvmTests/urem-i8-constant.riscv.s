.data
.section .rodata
.bss
.text
.globl foo
foo:
	andi a0, a0, 255
	li a1, -580400985
	mul a1, a0, a1
	srli a1, a1, 32
	add a1, a1, a0
	sraiw a2, a1, 5
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, 37
	mulw a1, a1, a2
	subw a0, a0, a1
	andi a0, a0, 255
	ret
