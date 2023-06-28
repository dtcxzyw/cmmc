.data
.section .rodata
.bss
.text
.globl hoge
hoge:
	li a1, 4294967295
	and a0, a0, a1
	li a2, -1
	sllw a0, a2, a0
	xori a0, a0, -1
	and a0, a0, a1
	slliw a0, a0, 8
	li a1, 3840
	and a0, a0, a1
	ret
