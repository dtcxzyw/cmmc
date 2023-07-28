.data
.text
.globl foo4
foo4:
.p2align 2
	blez $a1, label9
	nop
	addiu $t0, $a1, -4
	bgtz $t0, label18
	nop
	move $t0, $zero
	move $t1, $zero
	b label6
	nop
label18:
	move $t0, $zero
	move $t1, $zero
label3:
	sll $t2, $t0, 2
	addu $t2, $a0, $t2
	sw $t1, 0($t2)
	addiu $t3, $t1, 4
	sw $t3, 4($t2)
	addiu $t3, $t1, 8
	sw $t3, 8($t2)
	addiu $t3, $t1, 12
	sw $t3, 12($t2)
	addiu $t3, $t0, 8
	addiu $t1, $t1, 16
	addiu $t2, $t0, 4
	subu $t0, $a1, $t3
	bgtz $t0, label33
	nop
	move $t0, $t1
	move $t1, $t2
	b label6
	nop
label33:
	move $t0, $t2
	b label3
	nop
label6:
	sll $t2, $t1, 2
	addu $t2, $a0, $t2
	sw $t0, 0($t2)
	addiu $t1, $t1, 1
	addiu $t0, $t0, 4
	subu $t2, $a1, $t1
	bgtz $t2, label6
	nop
label9:
	jr $ra
	nop
