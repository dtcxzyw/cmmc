.data
.section .rodata
.bss
.text
.globl test
test:
	addiu $v0, $a0, 1
	jr $ra
	nop
.globl test2
test2:
	addiu $v0, $a0, 4
	jr $ra
	nop
