.data
.section .rodata
.bss
.text
.globl test1
test1:
	slti a0, a0, 0
	li a1, 4294967295
	and a0, a0, a1
	ret
