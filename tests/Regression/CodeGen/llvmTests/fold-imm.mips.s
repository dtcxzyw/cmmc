.data
.text
.p2align 2
.globl test
test:
	addiu $v0, $a0, 1
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	addiu $v0, $a0, 4
	jr $ra
	nop
