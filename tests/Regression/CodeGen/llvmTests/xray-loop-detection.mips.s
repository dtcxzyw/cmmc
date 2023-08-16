.data
.text
.p2align 2
.globl foo
foo:
	bne $a0, $zero, label8
	nop
	move $v0, $zero
label2:
	jr $ra
	nop
label8:
	move $t0, $zero
label4:
	addiu $t0, $t0, 1
	bne $a0, $t0, label4
	nop
	move $v0, $t0
	b label2
	nop
