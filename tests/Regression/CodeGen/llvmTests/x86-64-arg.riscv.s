.data
.section .rodata
.bss
.text
.globl test
test:
	slli a0, a0, 16
	srai a0, a0, 16
	li a1, 4294967295
	and a0, a0, a1
	ret
