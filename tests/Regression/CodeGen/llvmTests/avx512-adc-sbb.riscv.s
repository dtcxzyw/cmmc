.data
.section .rodata
.bss
.text
.globl PR32316
PR32316:
	andi a0, a0, 255
	sltiu a0, a0, 1
	li a3, 4294967295
	and a0, a0, a3
	sltu a0, a1, a0
	andi a0, a0, 255
	andi a0, a0, 255
	andi a1, a2, 255
	sltu a1, zero, a1
	andi a1, a1, 255
	andi a1, a1, 255
	addw a0, a0, a1
	andi a0, a0, 255
	ret
