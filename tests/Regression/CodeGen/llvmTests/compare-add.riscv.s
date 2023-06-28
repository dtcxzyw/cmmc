.data
.section .rodata
.bss
.text
.globl X
X:
	addiw a0, a0, 14
	li a1, 12345
	xor a0, a0, a1
	sltu a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
