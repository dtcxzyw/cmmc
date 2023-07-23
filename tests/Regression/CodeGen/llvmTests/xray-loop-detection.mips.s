.data
.text
.globl foo
foo:
	beq $a0, $zero, label9
	nop
	move $v0, $zero
	addiu $v0, $zero, 1
	bne $a0, $v0, label4
	nop
	b label2
	nop
label9:
	move $v0, $zero
label2:
	jr $ra
	nop
label4:
	addiu $v0, $v0, 1
	bne $a0, $v0, label4
	nop
	b label2
	nop
