.data
.text
.p2align 2
.globl smin_lt
smin_lt:
	slt $t0, $a0, $a1
	move $v0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl smax_lt
smax_lt:
	slt $t0, $a0, $a1
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl smin_le
smin_le:
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	movn $a1, $a0, $t0
	move $v0, $a1
	jr $ra
	nop
.p2align 2
.globl smax_le
smax_le:
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl smin_gt
smin_gt:
	slt $t0, $a1, $a0
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl smax_gt
smax_gt:
	slt $t0, $a1, $a0
	move $v0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl smin_ge
smin_ge:
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	movn $a0, $a1, $t0
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl smax_ge
smax_ge:
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	movn $a1, $a0, $t0
	move $v0, $a1
	jr $ra
	nop
.p2align 2
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
.p2align 2
.globl clamp_mask2
clamp_mask2:
	slti $t0, $a0, 255
	li $v0, 255
	movn $v0, $a0, $t0
	slti $t0, $a0, 0
	movn $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl smax_zero
smax_zero:
	slt $t0, $zero, $a0
	subu $t0, $zero, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl smax_imm
smax_imm:
	li $t0, 127
	slt $t0, $t0, $a0
	li $v0, 127
	movn $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl smin_imm
smin_imm:
	slti $t0, $a0, 255
	li $v0, 255
	movn $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl ssat
ssat:
	li $t0, 254
	slt $t1, $t0, $a0
	li $t2, 255
	move $t0, $a0
	movn $t0, $t2, $t1
	slti $t1, $t0, -255
	li $t2, -256
	movn $t0, $t2, $t1
	move $v0, $t0
	jr $ra
	nop
