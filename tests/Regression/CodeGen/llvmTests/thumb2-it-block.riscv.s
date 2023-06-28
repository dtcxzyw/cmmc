.data
.text
.globl test
test:
	mv a2, a0
	bge a0, zero, label3
	subw a0, zero, a0
	li a2, 4294967295
	and a0, a0, a2
	mv a2, a1
	bge a1, zero, label6
	j label34
label3:
	mv a2, a1
	bge a1, zero, label6
	j label34
label6:
	addw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
label34:
	subw a1, zero, a2
	li a2, 4294967295
	and a1, a1, a2
	j label6
