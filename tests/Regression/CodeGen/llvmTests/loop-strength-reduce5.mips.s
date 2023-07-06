.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.align 2
.globl Y
Y:
	.byte	0
	.byte	0
.text
.globl foo
foo:
	blez $a0, label5
	nop
	lui $t1, %hi(X)
	addiu $t0, $t1, %lo(X)
	sh $zero, %lo(X)($t1)
	lui $t2, %hi(Y)
	addiu $t1, $t2, %lo(Y)
	sh $zero, %lo(Y)($t2)
	li $t2, 1
	bne $a0, $t2, label18
	nop
	b label5
	nop
label18:
	li $t2, 1
label3:
	andi $t3, $t2, 65535
	sh $t3, 0($t0)
	sll $t3, $t3, 2
	andi $t3, $t3, 65535
	sh $t3, 0($t1)
	addiu $t2, $t2, 1
	bne $a0, $t2, label3
	nop
label5:
	jr $ra
	nop
