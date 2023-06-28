.data
.section .rodata
.bss
.text
.globl f1
f1:
	li a1, -16777201
	and a0, a0, a1
	ret
.globl f2
f2:
	li a1, -8388608
	and a0, a0, a1
	ret
.globl f3
f3:
	li a1, 4095
	and a0, a0, a1
	ret
