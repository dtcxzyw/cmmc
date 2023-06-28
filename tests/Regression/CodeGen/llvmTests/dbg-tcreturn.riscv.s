.data
.text
.globl test
test:
	divw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
