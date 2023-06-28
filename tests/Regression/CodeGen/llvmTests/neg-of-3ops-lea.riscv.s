.data
.text
.globl t0
t0:
	li a2, 32
	subw a0, a2, a0
	subw a0, a0, a1
	ret
.globl t1
t1:
	addw a0, a0, a1
	li a1, 32
	subw a0, a1, a0
	ret
.globl t2
t2:
	addw a0, a0, a1
	li a1, 32
	subw a0, a1, a0
	ret
.globl t3
t3:
	addiw a0, a0, -32
	addw a0, a0, a1
	subw a0, zero, a0
	ret
