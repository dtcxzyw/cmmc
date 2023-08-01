.data
.text
.p2align 2
.globl test1
test1:
	xori $t0, $a0, 31
	li $t1, 32
	subu $v0, $t1, $t0
	jr $ra
	nop
