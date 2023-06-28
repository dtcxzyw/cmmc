.data
.text
.globl pass_fast_bool
pass_fast_bool:
	sltu $t0, $zero, $a0
	li $t1, 66
	move $v0, $zero
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl pass_vector_bool
pass_vector_bool:
	sltu $t0, $zero, $a0
	li $t1, 66
	move $v0, $zero
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl ret_true
ret_true:
	li $v0, 1
	jr $ra
	nop
