.data
.section .rodata
.bss
.text
.globl test
test:
	sltu a3, zero, a0
	mv a0, a1
	bne a3, zero, label8
	mv a0, a2
label8:
	ret
