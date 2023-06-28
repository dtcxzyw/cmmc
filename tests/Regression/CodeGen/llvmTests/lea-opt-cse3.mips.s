.data
.section .rodata
.bss
.text
.globl foo
foo:
	sll $t1, $a1, 1
	addiu $t0, $a0, 4
	addu $t1, $t0, $t1
	sll $t2, $a1, 2
	addu $t0, $t0, $t2
	mult $t1, $t0
	mflo $v0
	jr $ra
	nop
.globl foo1
foo1:
	sll $t1, $a1, 2
	addiu $t0, $a0, 4
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
	xori $t2, $t1, 10
	sltiu $t2, $t2, 1
	bne $t2, $zero, label36
	nop
	sll $t2, $a1, 3
	addu $t0, $t0, $t2
	mult $t1, $t0
	mflo $v0
	b label27
	nop
label36:
	move $v0, $zero
label27:
	jr $ra
	nop
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	addiu $t0, $a0, 4
	sll $t1, $a1, 1
	addu $t1, $t0, $t1
	xori $t2, $t1, 10
	sltiu $t2, $t2, 1
	bne $t2, $zero, label56
	nop
	sll $t2, $a1, 3
	addu $t0, $t0, $t2
	mult $t1, $t0
	mflo $v0
	b label47
	nop
label56:
	move $v0, $zero
label47:
	jr $ra
	nop
