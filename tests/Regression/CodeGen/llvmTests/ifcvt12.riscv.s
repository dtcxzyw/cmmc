.data
.text
.globl f1
f1:
	mulw a1, a0, a1
	subw a1, a2, a1
	sltiu a2, a0, 1
	bne a2, zero, label10
	mv a0, a1
label10:
	ret
