.data
.text
.globl test_ifcvt
test_ifcvt:
.p2align 2
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
