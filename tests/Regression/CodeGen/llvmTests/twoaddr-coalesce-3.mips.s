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
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	b label71
	nop
label8:
	jr $ra
	nop
label23:
	sw $t0, 0($t2)
	b label8
	nop
label71:
	li $t4, 2
	div $zero, $t3, $t4
	mflo $t4
	addu $t0, $t4, $t0
	addiu $t3, $t3, 1
	subu $t4, $t3, $t1
	bgez $t4, label23
	nop
	b label71
	nop
.globl goo
goo:
	lui $t0, %hi(M)
	lw $t0, %lo(M)($t0)
	move $t1, $t0
	blez $t0, label82
	nop
	lui $t0, %hi(total)
	addiu $t2, $t0, %lo(total)
	lw $t4, %lo(total)($t0)
	move $t0, $t4
	lui $t5, %hi(g)
	addiu $t3, $t5, %lo(g)
	sw $t4, %lo(g)($t5)
	addiu $t4, $t1, -1
	blez $t4, label100
	nop
	li $t4, 1
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	b label151
	nop
label82:
	jr $ra
	nop
label100:
	sw $t0, 0($t2)
	b label82
	nop
label151:
	li $t5, 2
	div $zero, $t4, $t5
	mflo $t5
	addu $t0, $t5, $t0
	sw $t0, 0($t3)
	addiu $t4, $t4, 1
	subu $t5, $t4, $t1
	bgez $t5, label100
	nop
	b label151
	nop
