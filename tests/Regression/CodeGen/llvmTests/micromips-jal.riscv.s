.data
.text
.globl main
main:
	mv a0, zero
	ret
.globl sum
sum:
	addw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
