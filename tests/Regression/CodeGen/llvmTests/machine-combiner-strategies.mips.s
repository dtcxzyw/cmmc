.data
.text
.globl test_local_strategy
test_local_strategy:
.p2align 2
	lw $t1, 16($sp)
	lw $t0, 20($sp)
	div $zero, $a0, $a1
	mflo $t2
	subu $v0, $t2, $a2
	addu $t1, $a3, $t1
	addu $t0, $t0, $t1
	addu $t0, $v0, $t0
	sltiu $t1, $v0, 1
	movn $v0, $t0, $t1
	jr $ra
	nop
