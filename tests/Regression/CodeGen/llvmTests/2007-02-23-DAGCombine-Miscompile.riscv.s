.data
.text
.globl test
test:
	li a1, -1
	slt a0, a1, a0
	li a1, 2
	subw a0, a1, a0
	ret
