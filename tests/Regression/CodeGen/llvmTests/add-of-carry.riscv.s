.data
.section .rodata
.bss
.text
.globl test1
test1:
	addw a0, a0, a1
	sltu a1, a0, a1
	li a2, 4294967295
	and a1, a1, a2
	addw a0, a0, a1
	ret
.globl test2
test2:
	sltu a0, a1, a0
	addw a0, a0, a2
	li a1, 4294967295
	and a0, a0, a1
	ret
