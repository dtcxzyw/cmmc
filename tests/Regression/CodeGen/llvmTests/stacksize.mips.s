.data
.section .rodata
.bss
.text
.globl foo
foo:
	addiu $v0, $a0, 1
	jr $ra
	nop
