.data
.text
.globl test
test:
	li $t0, -1
	slt $t0, $t0, $a0
	li $t1, 2
	subu $v0, $t1, $t0
	jr $ra
	nop
