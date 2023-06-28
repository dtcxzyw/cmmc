.data
.align 2
.globl s
s:
	.byte	0
	.byte	0
.align 4
.globl g1
g1:
	.4byte	0
.align 4
.globl g2
g2:
	.4byte	0
.align 4
.globl g0
g0:
	.4byte	0
.text
.globl func
func:
	lui $t0, %hi(s)
	addiu $t3, $t0, %lo(s)
	lh $t0, %lo(s)($t0)
	lui $t1, %hi(g1)
	addiu $t4, $t1, %lo(g1)
	lw $t1, %lo(g1)($t1)
	lui $t2, %hi(g2)
	lw $t2, %lo(g2)($t2)
	sltu $t2, $zero, $t2
	bne $t2, $zero, label17
	nop
	move $t5, $zero
	li $t2, 1
label2:
	sltu $t7, $zero, $t2
	move $t6, $t7
	andi $t7, $t7, 65535
	andi $t7, $t7, 65535
	xori $t7, $t7, 1
	andi $t0, $t0, 65535
	addu $t0, $t7, $t0
	andi $t0, $t0, 65535
	andi $t7, $t0, 65535
	subu $t8, $zero, $t1
	xor $t8, $t7, $t8
	sltu $t8, $zero, $t8
	bne $t8, $zero, label10
	nop
	addiu $t5, $t5, 1
	li $t6, 12
	divu $zero, $t2, $t6
	mflo $t2
	sltu $t6, $zero, $t5
	bne $t6, $zero, label2
	nop
	b label15
	nop
label10:
	addiu $t0, $t7, -1
	andi $t7, $t0, 65535
	beq $t6, $zero, label14
	nop
	move $t0, $t2
	lui $t6, %hi(g0)
	sw $t2, %lo(g0)($t6)
	move $t0, $t7
	addiu $t5, $t5, 1
	li $t6, 12
	divu $zero, $t2, $t6
	mflo $t2
	sltu $t6, $zero, $t5
	bne $t6, $zero, label2
	nop
	b label15
	nop
label17:
	andi $t0, $t0, 65535
	andi $t0, $t0, 65535
	andi $t0, $t0, 65535
	subu $t4, $zero, $t1
	xor $t1, $t0, $t4
	sltu $t1, $zero, $t1
	sll $t1, $t1, 16
	sra $t1, $t1, 16
	andi $t1, $t1, 65535
	andi $t1, $t1, 65535
	addu $t0, $t0, $t1
	andi $t0, $t0, 65535
	li $t2, 1
	move $t1, $zero
	b label18
	nop
label15:
	sh $t0, 0($t3)
	jr $ra
	nop
label18:
	sltiu $t5, $t1, 1
	andi $t5, $t5, 65535
	andi $t5, $t5, 65535
	andi $t0, $t0, 65535
	addu $t0, $t0, $t5
	andi $t0, $t0, 65535
	andi $t0, $t0, 65535
	xor $t5, $t0, $t4
	sltu $t5, $zero, $t5
	sll $t5, $t5, 16
	sra $t5, $t5, 16
	andi $t5, $t5, 65535
	andi $t5, $t5, 65535
	addu $t0, $t0, $t5
	andi $t0, $t0, 65535
	addiu $t2, $t2, 1
	li $t5, 12
	divu $zero, $t1, $t5
	mflo $t1
	sltu $t5, $zero, $t2
	bne $t5, $zero, label18
	nop
	b label15
	nop
label14:
	sw $zero, 0($t4)
	move $t0, $zero
	move $t1, $zero
	lui $t6, %hi(g0)
	sw $zero, %lo(g0)($t6)
	move $t0, $t7
	addiu $t5, $t5, 1
	li $t6, 12
	divu $zero, $t2, $t6
	mflo $t2
	sltu $t6, $zero, $t5
	bne $t6, $zero, label2
	nop
	b label15
	nop
