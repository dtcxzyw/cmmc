.data
.text
.p2align 2
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
.p2align 2
.globl sum
sum:
	addu $v0, $a0, $a1
	jr $ra
	nop
