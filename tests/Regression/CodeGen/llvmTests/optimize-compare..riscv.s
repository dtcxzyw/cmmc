.data
.section .rodata
.bss
.text
.globl f
f:
	sltu a2, a1, a0
	bne a2, zero, label7
	mv a0, a1
label7:
	ret
