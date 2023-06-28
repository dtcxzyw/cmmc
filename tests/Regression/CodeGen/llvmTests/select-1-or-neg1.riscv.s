.data
.text
.globl PR28968
PR28968:
	xori a0, a0, 1
	sltiu a1, a0, 1
	li a0, 1
	bne a1, zero, label9
	li a0, -1
label9:
	li a1, 4294967295
	and a0, a0, a1
	ret
