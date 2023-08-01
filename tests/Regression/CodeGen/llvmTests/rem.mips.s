.data
.text
.p2align 2
.globl test1
test1:
	li $t0, 255
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	li $t0, 256
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.p2align 2
.globl test3
test3:
	li $t0, 255
	divu $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.p2align 2
.globl test4
test4:
	andi $v0, $a0, 255
	jr $ra
	nop
.p2align 2
.globl test5
test5:
	li $t0, 41
	div $zero, $t0, $a0
	mfhi $v0
	jr $ra
	nop
