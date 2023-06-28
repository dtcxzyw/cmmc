.data
.text
.globl test
test:
	andi a0, a0, 255
	slli a0, a0, 24
	srai a0, a0, 24
	li a1, 4294967295
	and a0, a0, a1
	ret
