.data
.text
.globl bswap_ror_commuted
bswap_ror_commuted:
	srl $t0, $a0, 8
	li $t1, 16711935
	and $t0, $t0, $t1
	sll $t1, $a0, 8
	li $t2, -16711936
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl different_constant
different_constant:
	srl $t0, $a0, 8
	li $t1, 16711935
	and $v0, $t0, $t1
	jr $ra
	nop
.globl different_op
different_op:
	sll $t0, $a0, 8
	li $t1, 16711936
	addu $t0, $t0, $t1
	srl $t1, $a0, 8
	li $t2, 16711935
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl different_shift_amount
different_shift_amount:
	sll $t0, $a0, 9
	li $t1, -16711936
	and $t0, $t0, $t1
	srl $t1, $a0, 8
	li $t2, 16711935
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl different_vars
different_vars:
	sll $t0, $a0, 8
	li $t1, -16711936
	and $t0, $t0, $t1
	srl $t1, $a1, 8
	li $t2, 16711935
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl extra_maskop_uses2
extra_maskop_uses2:
	sll $t0, $a0, 8
	li $t1, -16711936
	and $t0, $t0, $t1
	srl $t1, $a0, 8
	li $t2, 16711935
	and $t1, $t1, $t2
	or $t2, $t0, $t1
	mult $t0, $t2
	mflo $t0
	mult $t1, $t0
	mflo $v0
	jr $ra
	nop
.globl f2
f2:
	sll $t0, $a0, 8
	andi $t1, $t0, 65280
	li $t2, -16777216
	and $t0, $t0, $t2
	or $t0, $t1, $t0
	srl $t1, $a0, 8
	andi $t2, $t1, 255
	li $t3, 16711680
	and $t1, $t1, $t3
	or $t1, $t2, $t1
	or $v0, $t0, $t1
	jr $ra
	nop
.globl not_rev16
not_rev16:
	srl $t0, $a0, 8
	li $t1, -16711936
	and $t0, $t0, $t1
	sll $t1, $a0, 8
	li $t2, 16711935
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl rev16
rev16:
	sll $t0, $a0, 8
	li $t1, -16711936
	and $t0, $t0, $t1
	srl $t1, $a0, 8
	li $t2, 16711935
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
