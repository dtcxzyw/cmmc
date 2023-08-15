.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.text
.p2align 2
.globl foo
foo:
	blez $a0, label10
	nop
	lui $t0, %hi(X)
	sh $zero, %lo(X)($t0)
	li $t0, 1
	beq $a0, $t0, label16
	nop
	li $v0, 1
label3:
	andi $t0, $v0, 65535
	lui $t1, %hi(X)
	sh $t0, %lo(X)($t1)
	addiu $v0, $v0, 1
	bne $a0, $v0, label3
	nop
	b label5
	nop
label10:
	move $v0, $zero
label5:
	jr $ra
	nop
label16:
	li $v0, 1
	b label5
	nop
