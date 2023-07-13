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
	sll $t0, $a1, 2
	addiu $t0, $t0, 4
	addu $t0, $a0, $t0
	li $t1, 10
	beq $t0, $t1, label38
	nop
	sll $t1, $a1, 3
	addiu $t1, $t1, 4
	addu $t1, $a0, $t1
	mult $t1, $t0
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
	sll $t0, $a1, 1
	addiu $t0, $t0, 4
	addu $t0, $a0, $t0
	li $t1, 10
	beq $t0, $t1, label60
	nop
	sll $t1, $a1, 3
	addiu $t1, $t1, 4
	addu $t1, $a0, $t1
	mult $t1, $t0
	mflo $v0
	b label51
	nop
label60:
	move $v0, $zero
label51:
	jr $ra
	nop
