.data
.text
.globl foo
foo:
	addw a0, a0, a1
	addw a0, a0, a2
	addw a0, a0, a3
	li a1, 4294967295
	and a0, a0, a1
	ret
