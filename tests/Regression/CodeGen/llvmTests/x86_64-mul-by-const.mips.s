.data
.text
.globl f9188_mul365384439_shift27
f9188_mul365384439_shift27:
.p2align 2
	li $t0, 1577682821
	divu $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
