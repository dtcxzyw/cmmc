.data
.text
.globl test
test:
	sltu a2, a0, a1
	addiw a0, a1, 2
	bne a2, zero, label8
	li a0, 1
label8:
	ret
