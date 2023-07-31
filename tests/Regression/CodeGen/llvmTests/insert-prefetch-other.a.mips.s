.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.text
.globl foo
foo:
.p2align 2
	blez $a0, label10
	nop
	lui $t1, %hi(X)
	addiu $t0, $t1, %lo(X)
	sh $zero, %lo(X)($t1)
	li $t1, 1
	bne $a0, $t1, label16
	nop
	li $v0, 1
	b label5
	nop
label10:
	move $v0, $zero
label5:
	jr $ra
	nop
label16:
	li $v0, 1
label3:
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	bne $a0, $v0, label3
	nop
	b label5
	nop
