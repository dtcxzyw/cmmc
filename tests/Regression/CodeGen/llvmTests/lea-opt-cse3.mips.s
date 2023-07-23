.data
.text
.globl foo
foo:
	addiu $t0, $a0, 4
	sll $t1, $a1, 1
	addu $t1, $t0, $t1
	sll $t2, $a1, 2
	addu $t0, $t0, $t2
	mult $t1, $t0
	mflo $v0
	jr $ra
	nop
.globl foo1
foo1:
	addiu $t0, $a0, 4
	sll $t1, $a1, 2
	addu $t1, $t0, $t1
	sll $t2, $a1, 3
	addu $t0, $t0, $t2
	mult $t1, $t0
	mflo $v0
	jr $ra
	nop
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	addiu $t0, $a0, 4
	sll $t1, $a1, 2
	addu $t1, $t0, $t1
	li $t2, 10
	bne $t1, $t2, label26
	nop
	move $v0, $zero
label27:
	jr $ra
	nop
label26:
	sll $t2, $a1, 3
	addu $t0, $t0, $t2
	mult $t0, $t1
	mflo $v0
	b label27
	nop
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	addiu $t0, $a0, 4
	sll $t1, $a1, 1
	addu $t1, $t0, $t1
	li $t2, 10
	bne $t1, $t2, label47
	nop
	move $v0, $zero
label48:
	jr $ra
	nop
label47:
	sll $t2, $a1, 3
	addu $t0, $t0, $t2
	mult $t0, $t1
	mflo $v0
	b label48
	nop
