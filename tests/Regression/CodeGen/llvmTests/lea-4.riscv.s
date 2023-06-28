.data
.section .rodata
.bss
.text
.globl t1
t1:
	addiw a0, a0, -1
	slliw a1, a0, 1
	li a0, 65535
	and a1, a1, a0
	and a1, a1, a0
	and a0, a1, a0
	ret
.globl t2
t2:
	addiw a0, a0, -1
	slliw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
	ret
