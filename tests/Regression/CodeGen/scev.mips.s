.data
.text
.p2align 2
.globl foo4
foo4:
	blez $a1, label30
	nop
	addiu $t0, $a1, -3
	blez $t0, label38
	nop
	addiu $t1, $a1, -3
	addiu $t3, $a1, -18
	addiu $t0, $t1, -15
	blez $t0, label57
	nop
	move $t0, $a0
	move $t2, $zero
	move $t4, $zero
	b label25
	nop
.p2align 2
label29:
	addiu $t0, $t0, 64
.p2align 2
label25:
	sw $t2, 0($t0)
	addiu $t5, $t2, 4
	sw $t5, 4($t0)
	addiu $t5, $t2, 8
	sw $t5, 8($t0)
	addiu $t5, $t2, 12
	sw $t5, 12($t0)
	addiu $t5, $t2, 16
	sw $t5, 16($t0)
	addiu $t5, $t2, 20
	sw $t5, 20($t0)
	addiu $t5, $t2, 24
	sw $t5, 24($t0)
	addiu $t5, $t2, 28
	sw $t5, 28($t0)
	addiu $t5, $t2, 32
	sw $t5, 32($t0)
	addiu $t5, $t2, 36
	sw $t5, 36($t0)
	addiu $t5, $t2, 40
	sw $t5, 40($t0)
	addiu $t5, $t2, 44
	sw $t5, 44($t0)
	addiu $t5, $t2, 48
	sw $t5, 48($t0)
	addiu $t5, $t2, 52
	sw $t5, 52($t0)
	addiu $t5, $t2, 56
	sw $t5, 56($t0)
	addiu $t5, $t2, 60
	sw $t5, 60($t0)
	addiu $t4, $t4, 16
	addiu $t2, $t2, 64
	subu $t5, $t3, $t4
	bgtz $t5, label29
	nop
	move $t5, $t2
	move $t3, $t4
label13:
	subu $t0, $t1, $t3
	blez $t0, label61
	nop
	sll $t0, $t3, 2
	addu $t0, $a0, $t0
	move $t2, $t5
	b label19
	nop
label23:
	addiu $t0, $t0, 16
label19:
	sw $t2, 0($t0)
	addiu $t4, $t2, 4
	sw $t4, 4($t0)
	addiu $t4, $t2, 8
	sw $t4, 8($t0)
	addiu $t4, $t2, 12
	sw $t4, 12($t0)
	addiu $t3, $t3, 4
	addiu $t2, $t2, 16
	subu $t4, $t1, $t3
	bgtz $t4, label23
	nop
	move $t0, $t3
	move $t1, $t2
label3:
	subu $t2, $a1, $t0
	blez $t2, label30
	nop
	sll $t2, $t0, 2
	addu $t2, $a0, $t2
	b label7
	nop
label11:
	addiu $t2, $t2, 4
label7:
	addiu $t0, $t0, 1
	sw $t1, 0($t2)
	addiu $t1, $t1, 4
	subu $t3, $a1, $t0
	bgtz $t3, label11
	nop
label30:
	jr $ra
	nop
label38:
	move $t0, $zero
	move $t1, $zero
	b label3
	nop
label57:
	move $t5, $zero
	move $t3, $zero
	move $t2, $zero
	move $t4, $zero
	b label13
	nop
label61:
	move $t0, $t4
	move $t1, $t2
	b label3
	nop
