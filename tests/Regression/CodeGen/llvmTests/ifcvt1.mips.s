.data
.text
.globl t1
t1:
	beq $a0, $zero, label2
	nop
	addiu $v0, $a1, 1
	b label3
	nop
label2:
	addiu $v0, $a1, -1
label3:
	jr $ra
	nop
