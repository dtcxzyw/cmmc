.data
.text
.globl select_add_1
select_add_1:
	sltu $t0, $zero, $a0
	addu $t1, $a1, $a2
	movn $a2, $t1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_add_2
select_add_2:
	sltu $t0, $zero, $a0
	addu $v0, $a1, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_add_3
select_add_3:
	sltu $t0, $zero, $a0
	addiu $v0, $a1, 42
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_and_1
select_and_1:
	sltu $t0, $zero, $a0
	and $t1, $a1, $a2
	movn $a2, $t1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_and_2
select_and_2:
	sltu $t0, $zero, $a0
	and $v0, $a1, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_and_3
select_and_3:
	sltu $t0, $zero, $a0
	andi $v0, $a1, 42
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_ashr_1
select_ashr_1:
	sltu $t0, $zero, $a0
	srlv $t1, $a1, $a2
	movn $a2, $t1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_ashr_2
select_ashr_2:
	sltu $t0, $zero, $a0
	srlv $v0, $a1, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_ashr_3
select_ashr_3:
	sltu $t0, $zero, $a0
	li $t1, 42
	srlv $v0, $a1, $t1
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_lshr_1
select_lshr_1:
	sltu $t0, $zero, $a0
	srlv $t1, $a1, $a2
	movn $a2, $t1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_lshr_2
select_lshr_2:
	sltu $t0, $zero, $a0
	srlv $v0, $a1, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_lshr_3
select_lshr_3:
	sltu $t0, $zero, $a0
	li $t1, 42
	srlv $v0, $a1, $t1
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_or
select_or:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	sltiu $t0, $t0, 1
	or $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_or_1
select_or_1:
	andi $t0, $a2, 1
	sltiu $t0, $t0, 1
	or $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_or_1b
select_or_1b:
	andi $t0, $a2, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	or $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_or_2
select_or_2:
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
	andi $t0, $a2, 1
	sltiu $t0, $t0, 1
	or $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
.globl select_or_3b
select_or_3b:
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
	sltu $t0, $zero, $a0
	sllv $t1, $a1, $a2
	movn $a2, $t1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_shl_2
select_shl_2:
	sltu $t0, $zero, $a0
	sllv $v0, $a1, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_shl_3
select_shl_3:
	sltu $t0, $zero, $a0
	subu $t0, $zero, $t0
	and $v0, $a1, $t0
	jr $ra
	nop
.globl select_sub_1
select_sub_1:
	sltu $t0, $zero, $a0
	subu $t1, $a1, $a2
	movn $a2, $t1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_sub_2
select_sub_2:
	sltu $t0, $zero, $a0
	subu $v0, $a1, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_sub_3
select_sub_3:
	sltu $t0, $zero, $a0
	addiu $v0, $a1, -42
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl select_udiv_1
select_udiv_1:
	beq $a0, $zero, label204
	nop
	divu $zero, $a1, $a2
	mflo $v0
	b label197
	nop
label204:
	move $v0, $a2
label197:
	jr $ra
	nop
.globl select_udiv_2
select_udiv_2:
	beq $a0, $zero, label216
	nop
	move $v0, $a1
	b label208
	nop
label216:
	divu $zero, $a1, $a2
	mflo $v0
label208:
	jr $ra
	nop
.globl select_udiv_3
select_udiv_3:
	beq $a0, $zero, label227
	nop
	move $v0, $a1
	b label220
	nop
label227:
	li $t0, 42
	divu $zero, $a1, $t0
	mflo $v0
label220:
	jr $ra
	nop
.globl select_xor_1
select_xor_1:
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label242
	nop
	andi $t0, $a0, 65535
	b label233
	nop
label242:
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
label233:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_1b
select_xor_1b:
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label259
	nop
	andi $t0, $a0, 65535
	b label250
	nop
label259:
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
label250:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_2
select_xor_2:
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	sltiu $t0, $t0, 1
	xor $v0, $a0, $a1
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl select_xor_2b
select_xor_2b:
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
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	bne $t0, $zero, label297
	nop
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
	b label288
	nop
label297:
	andi $t0, $a0, 65535
label288:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_3b
select_xor_3b:
	andi $t0, $a1, 255
	andi $t0, $t0, 1
	li $t1, 1
	beq $t0, $t1, label314
	nop
	andi $t0, $a0, 65535
	xori $t0, $t0, 43
	b label305
	nop
label314:
	andi $t0, $a0, 65535
label305:
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl select_xor_4
select_xor_4:
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
	andi $t0, $a2, 255
	andi $t0, $t0, 1
	xori $t0, $t0, 1
	sltu $t0, $zero, $t0
	xor $t1, $a0, $a1
	movn $a0, $t1, $t0
	move $v0, $a0
	jr $ra
	nop
