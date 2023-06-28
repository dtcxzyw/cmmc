.data
.section .rodata
.bss
.text
.globl compare_i_gt
compare_i_gt:
	li $t0, -78
	slt $t0, $t0, $a0
	li $t1, 42
	li $v0, 24
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl compare_r_eq
compare_r_eq:
	subu $t0, $zero, $a1
	xor $t0, $a0, $t0
	sltiu $t0, $t0, 1
	li $t1, 42
	li $v0, 24
	movn $v0, $t1, $t0
	jr $ra
	nop
