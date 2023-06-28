.data
.text
.globl A
A:
	andi a1, a1, 255
	andi a0, a0, 255
	addw a0, a1, a0
	andi a0, a0, 255
	ret
.globl B
B:
	li a2, 65535
	and a1, a1, a2
	and a0, a0, a2
	addw a0, a1, a0
	and a0, a0, a2
	ret
