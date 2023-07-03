.data
.text
.globl foo
foo:
	sltu $t0, $zero, $a0
	bne $t0, $zero, label9
	nop
	move $v0, $zero
	b label2
	nop
label9:
	move $t0, $zero
	b label4
	nop
label2:
	jr $ra
	nop
label4:
	addiu $t0, $t0, 1
	xor $t1, $a0, $t0
	sltu $t1, $zero, $t1
	bne $t1, $zero, label4
	nop
	move $v0, $t0
	b label2
	nop
