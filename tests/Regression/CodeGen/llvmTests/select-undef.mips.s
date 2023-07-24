.data
.text
.globl func
func:
.p2align 2
	slti $t0, $a0, 10
	move $v0, $a1
	movn $v0, $zero, $t0
	jr $ra
	nop
