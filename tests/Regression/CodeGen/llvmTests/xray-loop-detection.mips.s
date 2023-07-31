.data
.text
.globl foo
foo:
.p2align 2
	bne $a0, $zero, label8
	nop
	move $v0, $zero
label2:
	jr $ra
	nop
label8:
	move $v0, $zero
label4:
	addiu $v0, $v0, 1
	bne $a0, $v0, label4
	nop
	b label2
	nop
