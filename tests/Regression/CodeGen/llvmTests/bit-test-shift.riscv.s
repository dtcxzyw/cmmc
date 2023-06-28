.data
.section .rodata
.bss
.text
.globl x
x:
	andi a0, a0, 256
	sltiu a1, a0, 1
	mv a0, zero
	bne a1, zero, label9
	li a0, -26
label9:
	li a1, 4294967295
	and a0, a0, a1
	ret
