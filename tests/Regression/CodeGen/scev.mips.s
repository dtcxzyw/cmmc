.data
.text
.globl foo4
foo4:
.p2align 2
	blez $a1, label9
	nop
	addiu $t2, $a1, -4
	bgtz $t2, label19
	nop
	move $t0, $zero
	move $t1, $zero
	b label6
	nop
label19:
	move $t1, $zero
	move $t0, $zero
label3:
	sll $t3, $t1, 2
	addu $t3, $a0, $t3
	sw $t0, 0($t3)
	addiu $t4, $t0, 4
	sw $t4, 4($t3)
	addiu $t4, $t0, 8
	sw $t4, 8($t3)
	addiu $t4, $t0, 12
	sw $t4, 12($t3)
	addiu $t1, $t1, 4
	addiu $t0, $t0, 16
	subu $t3, $t2, $t1
	bgtz $t3, label3
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
