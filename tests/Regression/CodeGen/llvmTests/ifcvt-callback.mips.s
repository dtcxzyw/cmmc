.data
.text
.globl test_ifcvt
test_ifcvt:
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
