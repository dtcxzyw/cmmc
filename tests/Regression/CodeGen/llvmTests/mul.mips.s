.data
.text
.globl f1
f1:
	mult $a0, $a0
	mflo $v0
	jr $ra
	nop
.globl f2
f2:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl f3
f3:
	li $t0, 5
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl f4
f4:
	sll $v0, $a0, 2
	jr $ra
	nop
