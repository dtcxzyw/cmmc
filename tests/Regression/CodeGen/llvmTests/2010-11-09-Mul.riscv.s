.data
.section .rodata
.bss
.text
.globl mul1
mul1:
	mulw a0, a0, a1
	ret
.globl mul2
mul2:
	mulw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
