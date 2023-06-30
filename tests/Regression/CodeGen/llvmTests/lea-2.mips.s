.data
.text
.globl test1
test1:
	sll $t0, $a0, 2
	addiu $t1, $a1, -5
	addu $v0, $t0, $t1
	jr $ra
	nop
