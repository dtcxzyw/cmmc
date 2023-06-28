.data
.text
.globl foo
foo:
	beq $a0, $zero, label9
	nop
	li $v0, 1
	b label2
	nop
label9:
	sltu $t0, $zero, $a1
	li $t1, 2
	move $v0, $zero
	movn $v0, $t1, $t0
label2:
	jr $ra
	nop
