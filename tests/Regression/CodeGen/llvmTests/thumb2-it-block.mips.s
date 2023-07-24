.data
.text
.globl test
test:
.p2align 2
	subu $t0, $zero, $a0
	slti $t1, $a0, 0
	movn $a0, $t0, $t1
	subu $t0, $zero, $a1
	slti $t1, $a1, 0
	movn $a1, $t0, $t1
	addu $v0, $a0, $a1
	jr $ra
	nop
