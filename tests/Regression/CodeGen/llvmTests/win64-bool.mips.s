.data
.text
.globl pass_bool
pass_bool:
.p2align 2
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	andi $v0, $t0, 66
	jr $ra
	nop
.globl ret_true
ret_true:
.p2align 2
	li $v0, 1
	jr $ra
	nop
