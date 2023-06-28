.data
.section .rodata
.bss
.text
.globl main
main:
	li a1, 4294967295
	and a0, a0, a1
	addiw a0, a0, 1
	li a1, 5
	mulw a0, a0, a1
	ret
