.data
.section .rodata
.bss
.text
.globl test1
test1:
	move $v0, $a0
	jr $ra
	nop
.globl test2
test2:
	move $v0, $a0
	jr $ra
	nop
