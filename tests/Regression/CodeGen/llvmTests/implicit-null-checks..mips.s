.data
.section .rodata
.bss
.text
.globl callee
callee:
	move $v0, $a0
	jr $ra
	nop
.globl caller
caller:
	move $v0, $a0
	jr $ra
	nop
