.data
.text
.globl f1
f1:
	sltu $t0, $zero, $a0
	bne $t0, $zero, label10
	nop
	move $v0, $a0
	b label2
	nop
label10:
	mult $a0, $a1
	mflo $t0
	subu $v0, $a2, $t0
label2:
	jr $ra
	nop
