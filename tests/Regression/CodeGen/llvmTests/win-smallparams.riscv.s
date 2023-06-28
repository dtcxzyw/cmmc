.data
.text
.globl call
call:
	ret
.globl manyargs
manyargs:
	slli a0, a0, 24
	srai t1, a0, 24
	li a0, 4294967295
	and t1, t1, a0
	slli a1, a1, 16
	srai a1, a1, 16
	and a0, a1, a0
	addw a0, t1, a0
	andi a1, a2, 255
	addw a1, a0, a1
	li a0, 65535
	and a2, a3, a0
	addw a1, a1, a2
	andi a2, a4, 255
	addw a1, a1, a2
	and a0, a5, a0
	addw a0, a1, a0
	ret
