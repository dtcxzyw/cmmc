.data
.text
.globl f
f:
	mulw a2, a1, a1
	mulw a3, a0, a0
	addw a2, a2, a3
	slliw a0, a0, 1
	mulw a0, a1, a0
	addw a0, a2, a0
	ret
