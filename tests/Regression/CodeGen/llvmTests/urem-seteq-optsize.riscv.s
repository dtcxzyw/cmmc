.data
.text
.globl test_minsize
test_minsize:
	li a1, 5
	remuw a0, a0, a1
	sltiu a1, a0, 1
	li a0, 42
	bne a1, zero, label10
	li a0, -10
label10:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_optsize
test_optsize:
	li a1, 5
	remuw a0, a0, a1
	sltiu a1, a0, 1
	li a0, 42
	bne a1, zero, label20
	li a0, -10
label20:
	li a1, 4294967295
	and a0, a0, a1
	ret
