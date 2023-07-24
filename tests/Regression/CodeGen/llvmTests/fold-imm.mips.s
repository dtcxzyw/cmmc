.data
.text
.globl test
test:
.p2align 2
	addiu $v0, $a0, 1
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	addiu $v0, $a0, 4
	jr $ra
	nop
