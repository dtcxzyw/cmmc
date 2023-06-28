.data
.section .rodata
.bss
.text
.globl foo16
foo16:
	li a1, 65535
	and a0, a0, a1
	andi a0, a0, -4
	and a0, a0, a1
	ret
.globl foo32
foo32:
	andi a0, a0, -4
	ret
