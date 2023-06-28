.data
.text
.globl func
func:
	slti $t0, $a0, 10
	movn $a1, $zero, $t0
	move $v0, $a1
	jr $ra
	nop
