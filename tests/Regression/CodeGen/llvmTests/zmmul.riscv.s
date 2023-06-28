.data
.text
.globl foo
foo:
	divuw a2, a0, a1
	divw a3, a0, a2
	li a2, 4294967295
	and a3, a3, a2
	mulw a3, a1, a3
	remuw a1, a3, a1
	remw a0, a1, a0
	and a0, a0, a2
	ret
