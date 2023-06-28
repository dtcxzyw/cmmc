.data
.section .rodata
.bss
.text
.globl PR15705
PR15705:
	xor a4, a0, a1
	sltu a4, zero, a4
	bne a4, zero, label4
	mv a0, a2
label2:
	ret
label4:
	xor a0, a0, a2
	sltiu a2, a0, 1
	mv a0, a3
	bne a2, zero, label2
	mv a0, a1
	j label2
