.data
.text
.globl t1
t1:
	bne $a0, $zero, label10
	nop
	addiu $v0, $a1, -1
	b label3
	nop
label10:
	addiu $v0, $a1, 1
label3:
	jr $ra
	nop