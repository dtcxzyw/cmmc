.data
.text
.globl test
test:
	beq $a0, $zero, label11
	nop
	move $v0, $a1
	b label2
	nop
label11:
	slt $v0, $a2, $a3
label2:
	jr $ra
	nop
