.data
.text
.globl main
main:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl sum
sum:
.p2align 2
	addu $v0, $a0, $a1
	jr $ra
	nop
