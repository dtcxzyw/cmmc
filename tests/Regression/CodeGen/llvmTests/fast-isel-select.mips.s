.data
.text
.p2align 2
.globl fastisel_select
fastisel_select:
	subu $t0, $a0, $a1
	sltu $t0, $zero, $t0
	subu $t0, $zero, $t0
	li $t1, 1204476887
	and $v0, $t0, $t1
	jr $ra
	nop
