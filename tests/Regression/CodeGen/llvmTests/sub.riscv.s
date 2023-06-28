.data
.text
.globl test1
test1:
	xori a0, a0, 31
	li a1, 32
	subw a0, a1, a0
	ret
