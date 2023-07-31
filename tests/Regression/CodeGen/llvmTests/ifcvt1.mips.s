.data
.text
.globl t1
t1:
.p2align 2
	bne $a0, $zero, label9
	nop
	addiu $v0, $a1, -1
	b label3
	nop
label9:
	addiu $v0, $a1, 1
label3:
	jr $ra
	nop
