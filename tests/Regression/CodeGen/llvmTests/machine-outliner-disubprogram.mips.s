.data
.text
.globl f1
f1:
.p2align 2
	li $v0, 16
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	li $v0, 16
	jr $ra
	nop
.globl f3
f3:
.p2align 2
	li $v0, 16
	jr $ra
	nop
.globl f4
f4:
.p2align 2
	jr $ra
	nop
.globl f5
f5:
.p2align 2
	jr $ra
	nop
.globl f6
f6:
.p2align 2
	jr $ra
	nop
.globl main
main:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
