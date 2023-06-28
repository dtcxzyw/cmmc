.data
.section .rodata
.bss
.text
.globl f1
f1:
	xori a1, a1, -1
	and a0, a0, a1
	ret
.globl f2
f2:
	xori a1, a1, -1
	and a0, a0, a1
	ret
.globl f3
f3:
	andi a0, a0, -256
	ret
