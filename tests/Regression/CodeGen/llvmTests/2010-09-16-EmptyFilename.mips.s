.data
.section .rodata
.bss
.text
.globl bar
bar:
	li $v0, 21
	jr $ra
	nop
.globl foo
foo:
	li $v0, 42
	jr $ra
	nop
