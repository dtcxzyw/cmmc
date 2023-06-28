.data
.section .rodata
.bss
.text
.globl foo
foo:
	li $v0, 42
	jr $ra
	nop
