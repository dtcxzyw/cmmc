.data
.text
.globl test1
test1:
.p2align 2
	li $t0, 255
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	li $t0, 256
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl test3
test3:
.p2align 2
	li $t0, 255
	divu $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl test4
test4:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl test5
test5:
.p2align 2
	li $t0, 41
	div $zero, $t0, $a0
	mfhi $v0
	jr $ra
	nop
