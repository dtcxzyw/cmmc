.data
.text
.globl foo
foo:
	beq $a0, $zero, label9
	nop
	move $v0, $zero
	addiu $v0, $zero, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	b label4
	nop
label9:
	move $v0, $zero
label2:
	jr $ra
	nop
label4:
	addiu $v0, $v0, 1
	beq $a0, $v0, label2
	nop
	b label4
	nop
