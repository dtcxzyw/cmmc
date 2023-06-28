.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
	.4byte	1092616192
	.4byte	3226013648
	.4byte	1086918628
.bss
.text
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	sltu $t0, $zero, $a0
	movn $a2, $a1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
	sltiu $t0, $a0, 1
	movn $a2, $a1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	mtc1 $a2, $f4
	sltu $t0, $zero, $a0
	mov.s $f0, $f14
	movz.s $f0, $f4, $t0
	jr $ra
	nop
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	mtc1 $a2, $f4
	sltiu $t0, $a0, 1
	mov.s $f0, $f14
	movz.s $f0, $f4, $t0
	jr $ra
	nop
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	slt $t0, $a0, $a1
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a0, $a1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	slt $t0, $a1, $a0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a1, $a0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	xor $t0, $a0, $a1
	sltiu $t0, $t0, 1
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	xor $t0, $a0, $a1
	sltiu $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	c.eq.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	c.eq.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	c.eq.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	c.eq.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	c.ole.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	c.ole.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	c.ult.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	movn $a3, $a2, $t0
	move $v0, $a3
	jr $ra
	nop
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	c.ult.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_cross
select_cross:
	slt $v0, $a0, $a1
	li $t1, 1
	li $t0, 10
	movn $t0, $t1, $v0
	slt $t1, $a1, $a2
	movn $v0, $t0, $t1
	jr $ra
	nop
.globl select_cross_fpr
select_cross_fpr:
	slt $t0, $a0, $a1
	move $t1, $t0
	subu $t2, $a1, $a2
	bgez $t2, label223
	nop
	lui $t1, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t1, %lo(__cmmc_fp_constant_pool)
	lwc1 $f6, 0($t1)
	lwc1 $f4, 4($t1)
	mov.s $f0, $f6
	movz.s $f0, $f4, $t0
	b label213
	nop
label223:
	mtc1 $t1, $f4
	cvt.s.w $f0, $f4
label213:
	jr $ra
	nop
.globl select_round
select_round:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 8($t1)
	c.olt.s $f12, $f4
	li $t0, 1
	movf $t0, $zero, $fcc0
	lwc1 $f4, 12($t1)
	add.s $f4, $f12, $f4
	mov.s $f0, $f4
	movz.s $f0, $f12, $t0
	jr $ra
	nop
.globl select_bitset
select_bitset:
	sltiu $t0, $a0, 1
	xori $t1, $a1, 1
	sltiu $t1, $t1, 1
	and $t0, $t0, $t1
	subu $t0, $zero, $t0
	and $v0, $a2, $t0
	jr $ra
	nop
.globl select_imax
select_imax:
	slt $t0, $a1, $a0
	movn $a1, $a0, $t0
	move $v0, $a1
	jr $ra
	nop
.globl select_imin
select_imin:
	slt $t0, $a0, $a1
	movn $a1, $a0, $t0
	move $v0, $a1
	jr $ra
	nop
