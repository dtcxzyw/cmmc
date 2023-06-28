.data
.text
.globl fastisel_select
fastisel_select:
	subu $t0, $a0, $a1
	sltu $t0, $zero, $t0
	li $t1, 1204476887
	move $v0, $zero
	movn $v0, $t1, $t0
	jr $ra
	nop
