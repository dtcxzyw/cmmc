.data
.text
.p2align 2
.globl foo
foo:
	beq $a0, $zero, label8
	nop
	move $t0, $zero
label4:
	addiu $t0, $t0, 1
	bne $a0, $t0, label4
	nop
	move $v0, $t0
label2:
	jr $ra
	nop
label8:
	move $v0, $zero
	b label2
	nop
