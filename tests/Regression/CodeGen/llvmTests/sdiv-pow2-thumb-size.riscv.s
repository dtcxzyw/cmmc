.data
.section .rodata
.bss
.text
.globl f0
f0:
	slli a0, a0, 16
	srai a0, a0, 16
	srliw a1, a0, 31
	add a0, a0, a1
	sraiw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
	ret
.globl f1
f1:
	slli a1, a0, 1
	srli a1, a1, 62
	add a0, a0, a1
	sraiw a0, a0, 2
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f2
f2:
	li a1, 1717986919
	mul a1, a0, a1
	srai a0, a1, 33
	srli a1, a1, 63
	add a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f3
f3:
	slli a1, a0, 1
	srli a1, a1, 56
	add a0, a0, a1
	sraiw a0, a0, 8
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f4
f4:
	slli a0, a0, 16
	srai a0, a0, 16
	srliw a1, a0, 31
	add a0, a0, a1
	sraiw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
	ret
.globl f5
f5:
	slli a1, a0, 1
	srli a1, a1, 62
	add a0, a0, a1
	sraiw a0, a0, 2
	li a1, 4294967295
	and a0, a0, a1
	ret
