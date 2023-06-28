.data
.text
.globl foo
foo:
	slliw a0, a0, 1
	addiw a0, a0, -2
	ret
