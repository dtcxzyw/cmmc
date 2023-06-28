.data
.text
.globl test1
test1:
	slli a1, a0, 1
	srli a1, a1, 60
	add a0, a0, a1
	sraiw a0, a0, 4
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test2
test2:
	slli a1, a0, 1
	srli a1, a1, 60
	add a0, a0, a1
	sraiw a0, a0, 4
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test3
test3:
	slli a1, a0, 1
	srli a1, a1, 60
	add a0, a0, a1
	sraiw a0, a0, 4
	li a1, 4294967295
	and a0, a0, a1
	ret
