.data
.text
.globl foo
foo:
	sll $t0, $a1, 1
	addiu $t0, $t0, 4
	addu $t0, $a0, $t0
	sll $t1, $a1, 2
	addiu $t1, $t1, 4
	addu $t1, $a0, $t1
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
.globl foo1
foo1:
	sll $t0, $a1, 2
	addiu $t0, $t0, 4
	addu $t0, $a0, $t0
	sll $t1, $a1, 3
	addiu $t1, $t1, 4
	addu $t1, $a0, $t1
	mult $t0, $t1
	mflo $v0
	jr $ra
	nop
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	addiu $t0, $a0, 4
	sll $t1, $a1, 2
	addu $t1, $t0, $t1
	li $t2, 10
	beq $t1, $t2, label38
	nop
	sll $t2, $a1, 3
	addu $t0, $t0, $t2
	mult $t0, $t1
	mflo $v0
	b label29
	nop
label38:
	move $v0, $zero
label29:
	jr $ra
	nop
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	addiu $t0, $a0, 4
	sll $t1, $a1, 1
	addu $t1, $t0, $t1
	li $t2, 10
	beq $t1, $t2, label59
	nop
	sll $t2, $a1, 3
	addu $t0, $t0, $t2
	mult $t0, $t1
	mflo $v0
	b label50
	nop
label59:
	move $v0, $zero
label50:
	jr $ra
	nop
