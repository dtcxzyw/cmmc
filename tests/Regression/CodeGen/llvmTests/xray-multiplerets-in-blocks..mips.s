.data
.text
.p2align 2
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
.p2align 2
.globl different_constant
different_constant:
	srl $t0, $a0, 8
	li $t1, 16711935
	and $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
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
.p2align 2
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
.p2align 2
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
.p2align 2
.globl extra_maskop_uses2
extra_maskop_uses2:
	sll $t0, $a0, 8
	li $t1, -16711936
	and $t0, $t0, $t1
	srl $t1, $a0, 8
	li $t2, 16711935
	and $t2, $t1, $t2
	or $t1, $t0, $t2
	mult $t0, $t2
	mflo $t0
	mult $t1, $t0
	mflo $v0
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	sll $t1, $a0, 8
	andi $t2, $t1, 65280
	srl $t0, $a0, 8
	andi $t3, $t0, 255
	or $t2, $t2, $t3
	li $t3, -16777216
	and $t1, $t1, $t3
	or $t1, $t2, $t1
	li $t2, 16711680
	and $t0, $t0, $t2
	or $v0, $t1, $t0
	jr $ra
	nop
.p2align 2
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
.p2align 2
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
