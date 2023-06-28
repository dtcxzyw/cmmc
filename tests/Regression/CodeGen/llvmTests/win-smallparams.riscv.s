.data
.text
.globl call
call:
	ret
.globl manyargs
manyargs:
	slli a0, a0, 24
	srai a0, a0, 24
	li t1, 4294967295
	and a0, a0, t1
	slli a1, a1, 16
	srai a1, a1, 16
	and t1, a1, t1
	andi a1, a2, 255
	li t2, 65535
	and a2, a3, t2
	andi a4, a4, 255
	and a3, a5, t2
	addw a0, a0, t1
	addw a0, a0, a1
	addw a0, a0, a2
	addw a0, a0, a4
	addw a0, a0, a3
	ret
