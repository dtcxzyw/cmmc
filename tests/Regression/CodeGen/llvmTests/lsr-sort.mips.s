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
	bgtz $a0, label2
	nop
	move $v0, $zero
	b label5
	nop
label2:
	lui $t1, %hi(X)
	addiu $t0, $t1, %lo(X)
	sh $zero, %lo(X)($t1)
	li $t1, 1
	beq $a0, $t1, label17
	nop
	li $v0, 1
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	b label3
	nop
label17:
	li $v0, 1
label5:
	jr $ra
	nop
label3:
	andi $t1, $v0, 65535
	sh $t1, 0($t0)
	addiu $v0, $v0, 1
	beq $a0, $v0, label5
	nop
	b label3
	nop
