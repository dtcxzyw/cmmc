.data
.text
.globl t1
t1:
	bne $a0, $zero, label5
	nop
	addiu $v0, $a1, -1
label3:
	jr $ra
	nop
label5:
	addiu $v0, $a1, 1
	b label3
	nop
