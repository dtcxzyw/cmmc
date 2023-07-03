.data
.data
.align 4
.globl M
M:
	.4byte	0
.align 4
.globl total
total:
	.4byte	0
.align 4
.globl g
g:
	.4byte	0
.text
.globl foo
foo:
	lui $t0, %hi(M)
	lw $t0, %lo(M)($t0)
	move $t1, $t0
	blez $t0, label8
	nop
	lui $t0, %hi(total)
	addiu $t2, $t0, %lo(total)
	lw $t0, %lo(total)($t0)
	addiu $t3, $t1, -1
	blez $t3, label23
	nop
	li $t3, 1
label3:
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t1, $t3
	blez $t4, label23
	nop
	b label3
	nop
label8:
	jr $ra
	nop
label23:
	sw $t0, 0($t2)
	b label8
	nop
.globl goo
goo:
	lui $t0, %hi(M)
	lw $t0, %lo(M)($t0)
	move $t1, $t0
	blez $t0, label52
	nop
	lui $t0, %hi(total)
	addiu $t2, $t0, %lo(total)
	lw $t4, %lo(total)($t0)
	move $t0, $t4
	lui $t5, %hi(g)
	addiu $t3, $t5, %lo(g)
	sw $t4, %lo(g)($t5)
	addiu $t4, $t1, -1
	blez $t4, label70
	nop
	li $t4, 1
label47:
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t1, $t4
	blez $t5, label70
	nop
	b label47
	nop
label52:
	jr $ra
	nop
label70:
	sw $t0, 0($t2)
	b label52
	nop
