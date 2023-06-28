.data
.section .rodata
.bss
.text
.globl test
test:
	fsub.s f10, f10, f11
	ret
