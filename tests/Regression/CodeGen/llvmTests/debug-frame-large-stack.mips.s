.data
.text
.globl test1
test1:
	jr $ra
	nop
.globl test2
test2:
	jr $ra
	nop
.globl test3
test3:
	move $v0, $zero
	jr $ra
	nop
