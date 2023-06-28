.data
.section .rodata
.bss
.align 4
.globl x
x:
	.zero	4
.align 4
.globl y
y:
	.zero	4
.align 4
.globl z
z:
	.zero	4
.text
.globl main
main:
	li $t0, 1
	lui $t1, %hi(x)
	sw $t0, %lo(x)($t1)
	li $t0, 2148
	lui $t1, %hi(y)
	sw $t0, %lo(y)($t1)
	li $t0, 33332
	lui $t1, %hi(z)
	sw $t0, %lo(z)($t1)
	move $v0, $zero
	jr $ra
	nop
