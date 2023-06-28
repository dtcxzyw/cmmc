.data
.text
.globl foo
foo:
	sltu a1, zero, a1
	subw a1, zero, a1
	andi a1, a1, 2
	li a2, 4294967295
	and a1, a1, a2
	sltu a2, zero, a0
	li a0, 1
	bne a2, zero, label12
	mv a0, a1
label12:
	ret
