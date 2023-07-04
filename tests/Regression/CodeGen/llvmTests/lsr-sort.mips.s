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
	blez $a0, label11
	nop
	lui $t1, %hi(X)
	addiu $t0, $t1, %lo(X)
	sh $zero, %lo(X)($t1)
	xori $t1, $a0, 1
	sltu $t1, $zero, $t1
	bne $t1, $zero, label17
	nop
	b label29
	nop
label11:
	move $v0, $zero
	b label5
	nop
label17:
	li $v0, 1
label3:
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	xor $t1, $a0, $v0
	sltu $t1, $zero, $t1
	bne $t1, $zero, label3
	nop
	b label5
	nop
label29:
	li $v0, 1
label5:
	jr $ra
	nop
