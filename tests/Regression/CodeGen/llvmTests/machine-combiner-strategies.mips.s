.data
.text
.globl test_local_strategy
test_local_strategy:
	lw $t1, 16($sp)
	lw $t2, 20($sp)
	div $zero, $a0, $a1
	mflo $t0
	subu $t0, $t0, $a2
	move $v0, $t0
	bne $t0, $zero, label3
	nop
	addu $t0, $a3, $t1
	addu $t0, $t2, $t0
	addu $v0, $t0, $v0
label3:
	jr $ra
	nop
