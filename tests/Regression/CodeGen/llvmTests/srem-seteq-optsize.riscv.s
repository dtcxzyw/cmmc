.data
.text
.globl test_minsize
test_minsize:
	li a1, 1717986919
	mul a1, a0, a1
	srai a2, a1, 33
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 5
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a1, a0, 1
	li a0, 42
	bne a1, zero, label18
	li a0, -10
label18:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_optsize
test_optsize:
	li a1, 1717986919
	mul a1, a0, a1
	srai a2, a1, 33
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 5
	mulw a1, a1, a2
	subw a0, a0, a1
	sltiu a1, a0, 1
	li a0, 42
	bne a1, zero, label36
	li a0, -10
label36:
	li a1, 4294967295
	and a0, a0, a1
	ret
