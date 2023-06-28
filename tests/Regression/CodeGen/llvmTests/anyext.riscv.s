.data
.text
.globl bar
bar:
	li a2, 65535
	and a0, a0, a2
	and a0, a0, a2
	and a1, a1, a2
	divw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	andi a0, a0, 1
	ret
.globl foo
foo:
	andi a0, a0, 255
	andi a0, a0, 255
	andi a1, a1, 255
	divw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	andi a0, a0, 1
	ret
