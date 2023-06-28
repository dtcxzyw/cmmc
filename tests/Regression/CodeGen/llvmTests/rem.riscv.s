.data
.section .rodata
.bss
.text
.globl test1
test1:
	li a1, -2139062143
	mul a1, a0, a1
	srli a1, a1, 32
	add a1, a1, a0
	sraiw a2, a1, 7
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, 255
	mulw a1, a1, a2
	subw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test2
test2:
	slli a1, a0, 1
	srli a1, a1, 56
	add a1, a0, a1
	sraiw a1, a1, 8
	li a2, 256
	mulw a1, a1, a2
	subw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test3
test3:
	li a1, 255
	remuw a0, a0, a1
	ret
.globl test4
test4:
	andi a0, a0, 255
	ret
.globl test5
test5:
	li a1, 41
	remw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
