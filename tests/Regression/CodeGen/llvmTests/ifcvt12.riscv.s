.data
.text
.globl f1
f1:
	sltu a3, zero, a0
	bne a3, zero, label10
	j label2
label10:
	mulw a0, a0, a1
	subw a0, a2, a0
label2:
	ret
