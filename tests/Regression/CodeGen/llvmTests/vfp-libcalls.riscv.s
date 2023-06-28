.data
.section .rodata
.bss
.text
.globl test_call
test_call:
	fadd.s f10, f10, f11
	ret
