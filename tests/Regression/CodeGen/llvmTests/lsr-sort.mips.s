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
	blez $a0, label13
	nop
	b label2
	nop
label13:
	move $v0, $zero
	b label7
	nop
label2:
	lui $t0, %hi(X)
	addiu $t1, $t0, %lo(X)
	sh $zero, %lo(X)($t0)
	xori $t0, $a0, 1
	sltu $t0, $zero, $t0
	bne $t0, $zero, label19
	nop
	li $v0, 1
	b label7
	nop
label19:
	li $t0, 1
label5:
	andi $t2, $t0, 65535
	sh $t2, 0($t1)
	addiu $t0, $t0, 1
	xor $t2, $a0, $t0
	sltu $t2, $zero, $t2
	bne $t2, $zero, label5
	nop
	move $v0, $t0
label7:
	jr $ra
	nop
