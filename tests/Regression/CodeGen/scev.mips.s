.data
.text
.globl foo4
foo4:
	blez $a1, label9
	nop
	move $t0, $zero
	move $t2, $zero
label2:
	addiu $t1, $t2, 4
	subu $t3, $a1, $t1
	bgtz $t3, label5
	nop
	sll $t1, $t2, 2
	addu $t1, $a0, $t1
	sw $t0, 0($t1)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 4
	subu $t1, $a1, $t2
	bgtz $t1, label6
	nop
	b label9
	nop
label5:
	sll $t2, $t2, 2
	addu $t2, $a0, $t2
	sw $t0, 0($t2)
	addiu $t3, $t0, 4
	sw $t3, 4($t2)
	addiu $t3, $t0, 8
	sw $t3, 8($t2)
	addiu $t3, $t0, 12
	sw $t3, 12($t2)
	addiu $t0, $t0, 16
	move $t2, $t1
	b label2
	nop
label6:
	sll $t1, $t2, 2
	addu $t1, $a0, $t1
	sw $t0, 0($t1)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 4
	subu $t1, $a1, $t2
	bgtz $t1, label6
	nop
label9:
	jr $ra
	nop
