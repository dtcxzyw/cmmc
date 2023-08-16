.data
.text
.p2align 2
.globl test_ifcvt
test_ifcvt:
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
