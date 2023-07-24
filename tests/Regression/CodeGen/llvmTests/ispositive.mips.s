.data
.text
.globl test1
test1:
.p2align 2
	srl $v0, $a0, 31
	jr $ra
	nop
