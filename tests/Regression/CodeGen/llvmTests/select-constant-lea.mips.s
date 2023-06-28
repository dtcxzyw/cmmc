.data
.text
.globl select_unsigned_lt_10_8_13
select_unsigned_lt_10_8_13:
	sltiu $t0, $a0, 10
	li $t1, 8
	li $v0, 13
	movn $v0, $t1, $t0
	jr $ra
	nop
