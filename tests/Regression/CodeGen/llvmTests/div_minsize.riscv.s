.data
.section .rodata
.bss
.text
.globl testsize1
testsize1:
	slli a1, a0, 1
	srli a1, a1, 59
	add a0, a0, a1
	sraiw a0, a0, 5
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl testsize2
testsize2:
	li a1, 1041204193
	mul a1, a0, a1
	srai a0, a1, 35
	srli a1, a1, 63
	add a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl testsize3
testsize3:
	li a1, 32
	divuw a0, a0, a1
	ret
.globl testsize4
testsize4:
	li a1, 33
	divuw a0, a0, a1
	ret
