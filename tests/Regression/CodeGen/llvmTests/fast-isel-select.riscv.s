.data
.text
.globl fastisel_select
fastisel_select:
	subw a0, a0, a1
	sltu a0, zero, a0
	subw a0, zero, a0
	li a1, 1204476887
	and a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
