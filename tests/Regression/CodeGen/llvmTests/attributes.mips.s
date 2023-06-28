.data
.section .rodata
.bss
.text
.globl addi
addi:
	addiu $v0, $a0, 1
	jr $ra
	nop
