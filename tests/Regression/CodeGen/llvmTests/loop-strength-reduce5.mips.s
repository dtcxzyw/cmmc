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
	blez $a0, label4
	nop
	move $t0, $zero
	andi $t1, $zero, 65535
	lui $t2, %hi(X)
	sh $t1, %lo(X)($t2)
	sll $t1, $t1, 2
	andi $t1, $t1, 65535
	lui $t2, %hi(Y)
	sh $t1, %lo(Y)($t2)
	addiu $t0, $zero, 1
	bne $a0, $t0, label2
	nop
	b label4
	nop
label2:
	andi $t1, $t0, 65535
	lui $t2, %hi(X)
	sh $t1, %lo(X)($t2)
	sll $t1, $t1, 2
	andi $t1, $t1, 65535
	lui $t2, %hi(Y)
	sh $t1, %lo(Y)($t2)
	addiu $t0, $t0, 1
	bne $a0, $t0, label2
	nop
label4:
	jr $ra
	nop
