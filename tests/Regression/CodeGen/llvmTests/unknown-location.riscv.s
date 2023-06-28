.data
.text
.globl foo
foo:
	addw a0, a0, a1
	divw a0, a0, a2
	li a1, 4294967295
	and a0, a0, a1
	addw a0, a3, a0
	ret
