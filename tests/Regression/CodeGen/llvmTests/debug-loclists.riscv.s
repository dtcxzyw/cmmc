.data
.section .rodata
.bss
.text
.globl _Z2f1ii
_Z2f1ii:
	addw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl _Z2f2v
_Z2f2v:
	ret
