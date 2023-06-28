.data
.section .rodata
.bss
.text
.globl crash
crash:
	move $v0, $zero
	jr $ra
	nop
