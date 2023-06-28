.data
.text
.globl test_local_strategy
test_local_strategy:
	divw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	subw a1, a0, a2
	mv a0, a1
	bne a1, zero, label20
	li a1, 4294967295
	and a0, a0, a1
	addw a1, a3, a4
	addw a1, a1, a5
	addw a0, a1, a0
	j label3
label20:
	li a1, 4294967295
	and a0, a0, a1
label3:
	ret
