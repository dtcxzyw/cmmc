.data
.section .rodata
.bss
.text
.globl pass_fast_bool
pass_fast_bool:
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	andi $v0, $t0, 66
	jr $ra
	nop
.globl pass_vector_bool
pass_vector_bool:
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	andi $v0, $t0, 66
	jr $ra
	nop
.globl ret_true
ret_true:
	li $v0, 1
	jr $ra
	nop
