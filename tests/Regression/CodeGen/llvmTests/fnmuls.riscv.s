.data
.section .rodata
.bss
.text
.globl test1
test1:
	fmul.s f10, f10, f11
	fneg.s f10, f10
	ret
.globl test2
test2:
	fmul.s f10, f10, f11
	fneg.s f10, f10
	ret
