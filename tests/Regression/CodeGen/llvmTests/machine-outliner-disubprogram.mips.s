.data
.section .rodata
.bss
.text
.globl f1
f1:
	li $v0, 16
	jr $ra
	nop
.globl f2
f2:
	li $v0, 16
	jr $ra
	nop
.globl f3
f3:
	li $v0, 16
	jr $ra
	nop
.globl f4
f4:
	jr $ra
	nop
.globl f5
f5:
	jr $ra
	nop
.globl f6
f6:
	jr $ra
	nop
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
