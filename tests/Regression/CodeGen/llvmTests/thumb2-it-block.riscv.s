.data
.text
.globl test
test:
	subw a2, zero, a0
	li a3, 4294967295
	and a2, a2, a3
	slti a4, a0, 0
	bne a4, zero, label24
	mv a2, a0
label24:
	subw a0, zero, a1
	and a0, a0, a3
	slti a4, a1, 0
	bne a4, zero, label22
	mv a0, a1
label22:
	addw a0, a2, a0
	and a0, a0, a3
	ret
