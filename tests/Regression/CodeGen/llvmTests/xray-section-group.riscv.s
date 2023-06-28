.data
.section .rodata
.bss
.text
.globl bar
bar:
	li a0, 1
	ret
.globl foo
foo:
	mv a0, zero
	ret
