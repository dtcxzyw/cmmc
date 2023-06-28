.data
.section .rodata
.bss
.text
.globl foo
foo:
	andi $v0, $a0, 255
	jr $ra
	nop
