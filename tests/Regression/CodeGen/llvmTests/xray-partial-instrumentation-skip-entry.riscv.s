.data
.section .rodata
.bss
.text
.globl bar
bar:
	sltu a0, zero, a0
	ret
.globl foo
foo:
	mv a0, zero
	ret
