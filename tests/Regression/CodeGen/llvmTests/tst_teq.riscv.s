.data
.section .rodata
.bss
.text
.globl f
f:
	andi a0, a0, 255
	sltiu a1, a0, 1
	li a0, 20
	bne a1, zero, label9
	li a0, 10
label9:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl g
g:
	xori a0, a0, 255
	sltiu a1, a0, 1
	li a0, 20
	bne a1, zero, label18
	li a0, 10
label18:
	li a1, 4294967295
	and a0, a0, a1
	ret
