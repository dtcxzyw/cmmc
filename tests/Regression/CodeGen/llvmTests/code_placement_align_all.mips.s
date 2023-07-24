.data
.text
.globl foo
foo:
.p2align 2
	beq $a0, $zero, label2
	nop
	addiu $v0, $a0, 2
	b label3
	nop
label2:
	sltiu $t0, $a1, 1
	li $v0, 5
	movn $v0, $zero, $t0
label3:
	jr $ra
	nop
