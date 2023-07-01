.data
.text
.globl smin_lt
smin_lt:
	slt $t0, $a0, $a1
	move $v0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl smax_lt
smax_lt:
	slt $t0, $a0, $a1
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl smin_le
smin_le:
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	movn $a1, $a0, $t0
	move $v0, $a1
	jr $ra
	nop
.globl smax_le
smax_le:
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl smin_gt
smin_gt:
	slt $t0, $a1, $a0
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl smax_gt
smax_gt:
	slt $t0, $a1, $a0
	move $v0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl smin_ge
smin_ge:
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl smax_ge
smax_ge:
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	movn $a1, $a0, $t0
	move $v0, $a1
	jr $ra
	nop
.globl clamp_mask
clamp_mask:
	slt $t0, $zero, $a0
	subu $t0, $zero, $t0
	and $v0, $a0, $t0
	li $t0, 127
	slt $t1, $t0, $a0
	movn $v0, $t0, $t1
	jr $ra
	nop
.globl smax_zero
smax_zero:
	slt $t0, $zero, $a0
	subu $t0, $zero, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
