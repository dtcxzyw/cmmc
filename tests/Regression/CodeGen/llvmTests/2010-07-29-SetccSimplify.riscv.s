.data
.section .rodata
.bss
.text
.globl extend2bit_v2
extend2bit_v2:
	andi a0, a0, 255
	slli a0, a0, 24
	srai a0, a0, 24
	xori a0, a0, 3
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
