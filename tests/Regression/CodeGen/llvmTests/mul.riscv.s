.data
.text
.globl f1
f1:
	mulw a0, a0, a0
	ret
.globl f2
f2:
	mulw a0, a0, a1
	ret
.globl f3
f3:
	li a1, 5
	mulw a0, a0, a1
	ret
.globl f4
f4:
	slliw a0, a0, 2
	ret
