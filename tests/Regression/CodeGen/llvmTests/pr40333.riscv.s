.data
.text
.globl foo
foo:
	srlw a0, a0, a1
	andi a0, a0, 255
	ret
