.data
.section .rodata
.bss
.text
.globl t1
t1:
	andi a0, a0, 15
	sltiu a1, a0, 1
	bne a1, zero, label7
	li a0, 42
label7:
	ret
