.data
.text
.globl testsize1
testsize1:
.p2align 2
	li $t0, 32
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl testsize2
testsize2:
.p2align 2
	li $t0, 33
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl testsize3
testsize3:
.p2align 2
	li $t0, 32
	divu $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl testsize4
testsize4:
.p2align 2
	li $t0, 33
	divu $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
