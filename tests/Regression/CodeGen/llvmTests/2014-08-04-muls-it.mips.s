.data
.text
.globl function
function:
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	bne $t0, $zero, label9
	nop
	mult $a0, $a0
	mflo $v0
	b label3
	nop
label9:
	move $v0, $a0
label3:
	jr $ra
	nop
