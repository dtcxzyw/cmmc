.data
.text
.globl sgt
sgt:
.p2align 2
	li $t0, 32767
	slt $t0, $t0, $a0
	li $t1, 7
	li $v0, 5
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl slt
slt:
.p2align 2
	slti $t0, $a0, 7
	li $t1, 4
	subu $v0, $t1, $t0
	jr $ra
	nop
