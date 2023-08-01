.data
.text
.p2align 2
.globl test1
test1:
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	jr $ra
	nop
.p2align 2
.globl test3
test3:
	move $v0, $zero
	jr $ra
	nop
