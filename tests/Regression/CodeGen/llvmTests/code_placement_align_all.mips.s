.data
.text
.p2align 2
.globl foo
foo:
	bne $a0, $zero, label9
	nop
	sltiu $t0, $a1, 1
	li $v0, 5
	movn $v0, $zero, $t0
	b label3
	nop
label9:
	addiu $v0, $a0, 2
label3:
	jr $ra
	nop
