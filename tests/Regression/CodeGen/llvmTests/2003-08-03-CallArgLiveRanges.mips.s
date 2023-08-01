.data
.text
.p2align 2
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
.p2align 2
.globl test
test:
	lw $t0, 16($sp)
	lw $t0, 20($sp)
	lw $t0, 24($sp)
	lw $t0, 28($sp)
	lw $t0, 32($sp)
	lw $t0, 36($sp)
	move $v0, $zero
	jr $ra
	nop
