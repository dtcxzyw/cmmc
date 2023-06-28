.data
.section .rodata
.bss
.text
.globl foo
foo:
	addiw a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
