.data
.section .rodata
.bss
.text
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
.globl sum
sum:
	addu $v0, $a0, $a1
	jr $ra
	nop
