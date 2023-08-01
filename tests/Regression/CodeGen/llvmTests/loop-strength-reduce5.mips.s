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
.p2align 2
.globl foo
foo:
	blez $a0, label5
	nop
	lui $t0, %hi(X)
	sh $zero, %lo(X)($t0)
	lui $t0, %hi(Y)
	sh $zero, %lo(Y)($t0)
	li $t0, 1
	beq $a0, $t0, label5
	nop
label3:
	andi $t1, $t0, 65535
	lui $t2, %hi(X)
	sh $t1, %lo(X)($t2)
	sll $t1, $t1, 2
	andi $t1, $t1, 65535
	lui $t2, %hi(Y)
	sh $t1, %lo(Y)($t2)
	addiu $t0, $t0, 1
	bne $a0, $t0, label3
	nop
label5:
	jr $ra
	nop
