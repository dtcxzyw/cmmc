.data
.section .rodata
.bss
.text
.globl foo
foo:
	ret
.globl main
main:
	mv a0, zero
	ret
.globl nofoo
nofoo:
	ret
