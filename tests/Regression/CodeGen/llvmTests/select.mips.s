.data
.text
.globl select_add_1
select_add_1:
.p2align 2
	addu $t0, $a1, $a2
	sltu $t1, $zero, $a0
	movn $a2, $t0, $t1
	move $v0, $a2
	jr $ra
	nop
.globl select_add_2
select_add_2:
.p2align 2
	addu $v0, $a1, $a2
	sltu $t0, $zero, $a0
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_add_3
select_add_3:
.p2align 2
	sltu $t0, $zero, $a0
	addiu $v0, $a1, 42
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_and_1
select_and_1:
.p2align 2
	and $t0, $a1, $a2
	sltu $t1, $zero, $a0
	movn $a2, $t0, $t1
	move $v0, $a2
	jr $ra
	nop
.globl select_and_2
select_and_2:
.p2align 2
	and $v0, $a1, $a2
	sltu $t0, $zero, $a0
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_and_3
select_and_3:
.p2align 2
	sltu $t0, $zero, $a0
	andi $v0, $a1, 42
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_ashr_1
select_ashr_1:
.p2align 2
	srlv $t0, $a1, $a2
	sltu $t1, $zero, $a0
	movn $a2, $t0, $t1
	move $v0, $a2
	jr $ra
	nop
.globl select_ashr_2
select_ashr_2:
.p2align 2
	srlv $v0, $a1, $a2
	sltu $t0, $zero, $a0
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_ashr_3
select_ashr_3:
.p2align 2
	sltu $t0, $zero, $a0
	li $t1, 42
	srlv $v0, $a1, $t1
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_lshr_1
select_lshr_1:
.p2align 2
	srlv $t0, $a1, $a2
	sltu $t1, $zero, $a0
	movn $a2, $t0, $t1
	move $v0, $a2
	jr $ra
	nop
.globl select_lshr_2
select_lshr_2:
.p2align 2
	srlv $v0, $a1, $a2
	sltu $t0, $zero, $a0
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_lshr_3
select_lshr_3:
.p2align 2
	sltu $t0, $zero, $a0
	li $t1, 42
	srlv $v0, $a1, $t1
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_or
select_or:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	sltiu $t0, $t0, 1
	or $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_or_1
select_or_1:
.p2align 2
	andi $t0, $a2, 1
	sltiu $t0, $t0, 1
	or $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_or_1b
select_or_1b:
.p2align 2
	andi $t0, $a2, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	or $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_or_2
select_or_2:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	sltiu $t0, $t0, 1
	or $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl select_or_2b
select_or_2b:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	or $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl select_or_3
select_or_3:
.p2align 2
	andi $t0, $a2, 1
	sltiu $t0, $t0, 1
	or $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl select_or_3b
select_or_3b:
.p2align 2
	andi $t0, $a2, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	or $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl select_or_b
select_or_b:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	or $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_shl_1
select_shl_1:
.p2align 2
	sllv $t0, $a1, $a2
	sltu $t1, $zero, $a0
	movn $a2, $t0, $t1
	move $v0, $a2
	jr $ra
	nop
.globl select_shl_2
select_shl_2:
.p2align 2
	sllv $v0, $a1, $a2
	sltu $t0, $zero, $a0
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_shl_3
select_shl_3:
.p2align 2
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	and $v0, $a1, $t0
	jr $ra
	nop
.globl select_sub_1
select_sub_1:
.p2align 2
	subu $t0, $a1, $a2
	sltu $t1, $zero, $a0
	movn $a2, $t0, $t1
	move $v0, $a2
	jr $ra
	nop
.globl select_sub_2
select_sub_2:
.p2align 2
	subu $v0, $a1, $a2
	sltu $t0, $zero, $a0
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_sub_3
select_sub_3:
.p2align 2
	sltu $t0, $zero, $a0
	addiu $v0, $a1, -42
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_udiv_1
select_udiv_1:
.p2align 2
	beq $a0, $zero, label203
	nop
	divu $zero, $a1, $a2
	mflo $v0
	b label197
	nop
label203:
	move $v0, $a2
label197:
	jr $ra
	nop
.globl select_udiv_2
select_udiv_2:
.p2align 2
	beq $a0, $zero, label216
	nop
	move $v0, $a1
	b label209
	nop
label216:
	divu $zero, $a1, $a2
	mflo $v0
label209:
	jr $ra
	nop
.globl select_udiv_3
select_udiv_3:
.p2align 2
	beq $a0, $zero, label228
	nop
	move $v0, $a1
	b label222
	nop
label228:
	li $t0, 42
	divu $zero, $a1, $t0
	mflo $v0
label222:
	jr $ra
	nop
.globl select_xor_1
select_xor_1:
.p2align 2
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	sltiu $t1, $t0, 1
	andi $t2, $a0, 65535
	xori $t0, $t2, 43
	movn $t0, $t2, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_1b
select_xor_1b:
.p2align 2
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	xori $t0, $t0, 1
	sltu $t1, $zero, $t0
	andi $t2, $a0, 65535
	xori $t0, $t2, 43
	movn $t0, $t2, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_2
select_xor_2:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	sltiu $t0, $t0, 1
	xor $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_xor_2b
select_xor_2b:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	xor $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_xor_3
select_xor_3:
.p2align 2
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	sltiu $t1, $t0, 1
	andi $t0, $a0, 65535
	xori $t2, $t0, 43
	movn $t0, $t2, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_3b
select_xor_3b:
.p2align 2
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	xori $t0, $t0, 1
	sltu $t1, $zero, $t0
	andi $t0, $a0, 65535
	xori $t2, $t0, 43
	movn $t0, $t2, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_4
select_xor_4:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	sltiu $t0, $t0, 1
	xor $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl select_xor_4b
select_xor_4b:
.p2align 2
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	xor $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
