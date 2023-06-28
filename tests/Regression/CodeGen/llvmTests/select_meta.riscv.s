.data
.section .rodata
.bss
.text
.globl foo
foo:
	andi a0, a0, 3
	xori a0, a0, 1
	sltiu a3, a0, 1
	mv a0, a1
	bne a3, zero, label10
	mv a0, a2
label10:
	ret
