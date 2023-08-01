.data
.text
.p2align 2
.globl f1
f1:
	li $v0, 16
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	li $v0, 16
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	li $v0, 16
	jr $ra
	nop
.p2align 2
.globl f4
f4:
	jr $ra
	nop
.p2align 2
.globl f5
f5:
	jr $ra
	nop
.p2align 2
.globl f6
f6:
	jr $ra
	nop
.p2align 2
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
