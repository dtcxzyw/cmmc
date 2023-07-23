.data
.text
.globl test
test:
	bne $a0, $zero, label11
	nop
	slt $v0, $a2, $a3
	b label2
	nop
label11:
	move $v0, $a1
label2:
	jr $ra
	nop
