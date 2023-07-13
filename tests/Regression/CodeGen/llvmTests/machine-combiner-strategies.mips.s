.data
.text
.globl test_local_strategy
test_local_strategy:
	lw $t0, 16($sp)
	lw $t1, 20($sp)
	div $zero, $a0, $a1
	mflo $t2
	subu $v0, $t2, $a2
	bne $v0, $zero, label3
	nop
	addu $t0, $a3, $t0
	addu $t0, $t1, $t0
	addu $v0, $t0, $v0
label3:
	jr $ra
	nop
