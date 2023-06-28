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
label2:
	andi $t1, $t0, 65535
	andi $t2, $t1, 65535
	sll $t2, $t2, 2
	andi $t2, $t2, 65535
	lui $t3, %hi(X)
	sh $t1, %lo(X)($t3)
	lui $t1, %hi(Y)
	sh $t2, %lo(Y)($t1)
	addiu $t0, $t0, 1
	xor $t1, $t0, $a0
	sltu $t1, $zero, $t1
	bne $t1, $zero, label2
	nop
label4:
	jr $ra
	nop
