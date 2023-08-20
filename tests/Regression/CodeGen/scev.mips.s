.data
.text
.p2align 2
.globl foo4
foo4:
	blez $a1, label2
	nop
	addiu $t0, $a1, -3
	blez $t0, label32
	nop
	addiu $t1, $a1, -3
	addiu $t3, $a1, -18
	addiu $t0, $t1, -15
	blez $t0, label38
	nop
	move $t0, $a0
	move $t2, $zero
.p2align 2
label14:
	sll $t4, $t2, 2
	sw $t4, 0($t0)
	addiu $t4, $t2, 1
	sll $t4, $t4, 2
	sw $t4, 4($t0)
	addiu $t4, $t2, 2
	sll $t4, $t4, 2
	sw $t4, 8($t0)
	addiu $t4, $t2, 3
	sll $t4, $t4, 2
	sw $t4, 12($t0)
	addiu $t4, $t2, 4
	sll $t4, $t4, 2
	sw $t4, 16($t0)
	addiu $t4, $t2, 5
	sll $t4, $t4, 2
	sw $t4, 20($t0)
	addiu $t4, $t2, 6
	sll $t4, $t4, 2
	sw $t4, 24($t0)
	addiu $t4, $t2, 7
	sll $t4, $t4, 2
	sw $t4, 28($t0)
	addiu $t4, $t2, 8
	sll $t4, $t4, 2
	sw $t4, 32($t0)
	addiu $t4, $t2, 9
	sll $t4, $t4, 2
	sw $t4, 36($t0)
	addiu $t4, $t2, 10
	sll $t4, $t4, 2
	sw $t4, 40($t0)
	addiu $t4, $t2, 11
	sll $t4, $t4, 2
	sw $t4, 44($t0)
	addiu $t4, $t2, 12
	sll $t4, $t4, 2
	sw $t4, 48($t0)
	addiu $t4, $t2, 13
	sll $t4, $t4, 2
	sw $t4, 52($t0)
	addiu $t4, $t2, 14
	sll $t4, $t4, 2
	sw $t4, 56($t0)
	addiu $t4, $t2, 15
	sll $t4, $t4, 2
	sw $t4, 60($t0)
	addiu $t2, $t2, 16
	subu $t4, $t3, $t2
	blez $t4, label111
	nop
	addiu $t0, $t0, 64
	b label14
	nop
label111:
	move $t3, $t2
label5:
	subu $t0, $t1, $t3
	blez $t0, label42
	nop
	sll $t0, $t3, 2
	addu $t0, $a0, $t0
	move $t2, $t3
	b label9
	nop
label12:
	addiu $t0, $t0, 16
label9:
	sll $t3, $t2, 2
	sw $t3, 0($t0)
	addiu $t3, $t2, 1
	sll $t3, $t3, 2
	sw $t3, 4($t0)
	addiu $t3, $t2, 2
	sll $t3, $t3, 2
	sw $t3, 8($t0)
	addiu $t3, $t2, 3
	sll $t3, $t3, 2
	sw $t3, 12($t0)
	addiu $t2, $t2, 4
	subu $t3, $t1, $t2
	bgtz $t3, label12
	nop
label42:
	move $t0, $t2
label18:
	subu $t1, $a1, $t0
	blez $t1, label2
	nop
	sll $t1, $t0, 2
	addu $t1, $a0, $t1
	b label21
	nop
label24:
	addiu $t1, $t1, 4
label21:
	sll $t2, $t0, 2
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	subu $t2, $a1, $t0
	bgtz $t2, label24
	nop
label2:
	jr $ra
	nop
label38:
	move $t3, $zero
	move $t2, $zero
	b label5
	nop
label32:
	move $t0, $zero
	b label18
	nop
