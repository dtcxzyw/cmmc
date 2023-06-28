.data
.section .rodata
.bss
.text
.globl test
test:
	subw a0, zero, a0
	andi a0, a0, 255
	ret
