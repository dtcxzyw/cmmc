.data
.text
.p2align 2
.globl test
test:
	beq $a0, $zero, label10
	nop
	move $v0, $a1
	b label2
	nop
label10:
	slt $v0, $a2, $a3
label2:
	jr $ra
	nop
