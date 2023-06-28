.data
.text
.globl fastisel_select
fastisel_select:
	subw a0, a0, a1
	sltu a1, zero, a0
	li a0, 1204476887
	bne a1, zero, label10
	mv a0, zero
label10:
	li a1, 4294967295
	and a0, a0, a1
	ret
