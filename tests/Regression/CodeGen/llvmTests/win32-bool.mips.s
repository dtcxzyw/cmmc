.data
.text
.p2align 2
.globl pass_fast_bool
pass_fast_bool:
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	andi $v0, $t0, 66
	jr $ra
	nop
.p2align 2
.globl pass_vector_bool
pass_vector_bool:
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	andi $v0, $t0, 66
	jr $ra
	nop
.p2align 2
.globl ret_true
ret_true:
	li $v0, 1
	jr $ra
	nop
