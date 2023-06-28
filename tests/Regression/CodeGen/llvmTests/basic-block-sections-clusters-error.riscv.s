.data
.text
.globl dummy
dummy:
	mulw a0, a0, a1
	addw a0, a2, a0
	ret
