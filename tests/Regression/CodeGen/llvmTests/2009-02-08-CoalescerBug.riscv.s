.data
.text
.globl foo
foo:
	andi a0, a0, 255
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	li a1, 65535
	and a1, a0, a1
	beq a0, zero, label14
	divw a0, a0, zero
	li a1, 65535
	and a0, a0, a1
	andi a0, a0, 255
	slli a0, a0, 24
	srai a0, a0, 24
	li a1, 4294967295
	and a0, a0, a1
	j label3
label14:
	andi a0, a1, 255
	slli a0, a0, 24
	srai a0, a0, 24
	li a1, 4294967295
	and a0, a0, a1
label3:
	ret
