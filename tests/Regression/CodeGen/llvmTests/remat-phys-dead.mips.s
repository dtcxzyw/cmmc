.data
.text
.globl test_remat
test_remat:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl test_remat32
test_remat32:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
