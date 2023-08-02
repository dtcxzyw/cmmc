.data
.text
.p2align 2
.globl foo4
foo4:
	blez $a1, label13
	nop
	addiu $t0, $a1, -4
	blez $t0, label21
	nop
	addiu $t2, $a1, -20
	addiu $t1, $t0, -16
	blez $t1, label27
	nop
	move $t1, $zero
	move $t3, $zero
.p2align 2
label4:
	sll $t4, $t3, 2
	addu $t4, $a0, $t4
	sw $t1, 0($t4)
	addiu $t5, $t1, 4
	sw $t5, 4($t4)
	addiu $t5, $t1, 8
	sw $t5, 8($t4)
	addiu $t5, $t1, 12
	sw $t5, 12($t4)
	addiu $t5, $t1, 16
	sw $t5, 16($t4)
	addiu $t5, $t1, 20
	sw $t5, 20($t4)
	addiu $t5, $t1, 24
	sw $t5, 24($t4)
	addiu $t5, $t1, 28
	sw $t5, 28($t4)
	addiu $t5, $t1, 32
	sw $t5, 32($t4)
	addiu $t5, $t1, 36
	sw $t5, 36($t4)
	addiu $t5, $t1, 40
	sw $t5, 40($t4)
	addiu $t5, $t1, 44
	sw $t5, 44($t4)
	addiu $t5, $t1, 48
	sw $t5, 48($t4)
	addiu $t5, $t1, 52
	sw $t5, 52($t4)
	addiu $t5, $t1, 56
	sw $t5, 56($t4)
	addiu $t5, $t1, 60
	sw $t5, 60($t4)
	addiu $t3, $t3, 16
	addiu $t1, $t1, 64
	subu $t4, $t2, $t3
	bgtz $t4, label4
	nop
label7:
	sll $t2, $t3, 2
	addu $t2, $a0, $t2
	sw $t1, 0($t2)
	addiu $t4, $t1, 4
	sw $t4, 4($t2)
	addiu $t4, $t1, 8
	sw $t4, 8($t2)
	addiu $t4, $t1, 12
	sw $t4, 12($t2)
	addiu $t3, $t3, 4
	addiu $t1, $t1, 16
	subu $t2, $t0, $t3
	bgtz $t2, label7
	nop
	move $t0, $t1
	move $t1, $t3
label10:
	sll $t2, $t1, 2
	addu $t2, $a0, $t2
	sw $t0, 0($t2)
	addiu $t1, $t1, 1
	addiu $t0, $t0, 4
	subu $t2, $a1, $t1
	bgtz $t2, label10
	nop
label13:
	jr $ra
	nop
label21:
	move $t0, $zero
	move $t1, $zero
	b label10
	nop
label27:
	move $t3, $zero
	move $t1, $zero
	b label7
	nop
