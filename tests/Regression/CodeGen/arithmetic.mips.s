.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
	.4byte	1056964608
	.4byte	1090519040
	.4byte	1078530010
	.4byte	1092616192
.text
.globl add_imm
add_imm:
.p2align 2
	addiu $v0, $a0, 1
	jr $ra
	nop
.globl add_large_imm
add_large_imm:
.p2align 2
	li $t0, 262144
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_reg
add_reg:
.p2align 2
	addu $v0, $a0, $a1
	jr $ra
	nop
.globl and_imm
and_imm:
.p2align 2
	andi $v0, $a0, 1
	jr $ra
	nop
.globl and_large_imm
and_large_imm:
.p2align 2
	li $t0, 262144
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_reg
and_reg:
.p2align 2
	and $v0, $a0, $a1
	jr $ra
	nop
.globl or_imm
or_imm:
.p2align 2
	ori $v0, $a0, 1
	jr $ra
	nop
.globl or_large_imm
or_large_imm:
.p2align 2
	li $t0, 262144
	or $v0, $a0, $t0
	jr $ra
	nop
.globl or_reg
or_reg:
.p2align 2
	or $v0, $a0, $a1
	jr $ra
	nop
.globl xor_imm
xor_imm:
.p2align 2
	xori $v0, $a0, 1
	jr $ra
	nop
.globl xor_large_imm
xor_large_imm:
.p2align 2
	li $t0, 262144
	xor $v0, $a0, $t0
	jr $ra
	nop
.globl xor_reg
xor_reg:
.p2align 2
	xor $v0, $a0, $a1
	jr $ra
	nop
.globl sub_imm
sub_imm:
.p2align 2
	addiu $v0, $a0, -1
	jr $ra
	nop
.globl sub_inverted_imm
sub_inverted_imm:
.p2align 2
	li $t0, 1
	subu $v0, $t0, $a0
	jr $ra
	nop
.globl sub_reg
sub_reg:
.p2align 2
	subu $v0, $a0, $a1
	jr $ra
	nop
.globl mul_imm
mul_imm:
.p2align 2
	sll $t0, $a0, 1
	addu $v0, $t0, $a0
	jr $ra
	nop
.globl mul_to_shl
mul_to_shl:
.p2align 2
	sll $v0, $a0, 2
	jr $ra
	nop
.globl mul_reg
mul_reg:
.p2align 2
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl div2
div2:
.p2align 2
	li $t0, 2
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div4
div4:
.p2align 2
	li $t0, 4
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div3
div3:
.p2align 2
	li $t0, 3
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div11
div11:
.p2align 2
	li $t0, 11
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div30
div30:
.p2align 2
	li $t0, 30
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl divNeg30
divNeg30:
.p2align 2
	li $t0, -30
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div_shl
div_shl:
.p2align 2
	li $t0, 1
	sllv $t0, $t0, $a1
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div_reg
div_reg:
.p2align 2
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl mod_imm
mod_imm:
.p2align 2
	li $t0, 3
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod_reg
mod_reg:
.p2align 2
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl mod2
mod2:
.p2align 2
	li $t0, 2
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod30
mod30:
.p2align 2
	li $t0, 30
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod_large1
mod_large1:
.p2align 2
	li $t0, 1000000007
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod_large2
mod_large2:
.p2align 2
	li $t0, 300000
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl shl_imm
shl_imm:
.p2align 2
	sll $v0, $a0, 3
	jr $ra
	nop
.globl shl_reg
shl_reg:
.p2align 2
	sllv $v0, $a0, $a1
	jr $ra
	nop
.globl ashr_imm
ashr_imm:
.p2align 2
	sra $v0, $a0, 3
	jr $ra
	nop
.globl ashr_reg
ashr_reg:
.p2align 2
	srav $v0, $a0, $a1
	jr $ra
	nop
.globl s2f
s2f:
.p2align 2
	mtc1 $a0, $f4
	cvt.s.w $f0, $f4
	jr $ra
	nop
.globl f2s
f2s:
.p2align 2
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
.globl fadd
fadd:
.p2align 2
	add.s $f0, $f12, $f14
	jr $ra
	nop
.globl fadd_imm
fadd_imm:
.p2align 2
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	add.s $f0, $f12, $f4
	jr $ra
	nop
.globl fadd_identity
fadd_identity:
.p2align 2
	mov.s $f0, $f12
	jr $ra
	nop
.globl fsub
fsub:
.p2align 2
	sub.s $f0, $f12, $f14
	jr $ra
	nop
.globl fsub_imm
fsub_imm:
.p2align 2
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	sub.s $f0, $f12, $f4
	jr $ra
	nop
.globl fmul
fmul:
.p2align 2
	mul.s $f0, $f12, $f14
	jr $ra
	nop
.globl fmul_imm
fmul_imm:
.p2align 2
	add.s $f0, $f12, $f12
	jr $ra
	nop
.globl fdiv
fdiv:
.p2align 2
	div.s $f0, $f12, $f14
	jr $ra
	nop
.globl fdiv_imm
fdiv_imm:
.p2align 2
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 4($t0)
	mul.s $f0, $f12, $f4
	jr $ra
	nop
.globl fneg
fneg:
.p2align 2
	neg.s $f0, $f12
	jr $ra
	nop
.globl s2f2s
s2f2s:
.p2align 2
	mtc1 $a0, $f4
	cvt.s.w $f4, $f4
	trunc.w.s $f4, $f4
	mfc1 $v0, $f4
	jr $ra
	nop
.globl f2s2f
f2s2f:
.p2align 2
	trunc.w.s $f4, $f12
	cvt.s.w $f0, $f4
	jr $ra
	nop
.globl zero
zero:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl imm
imm:
.p2align 2
	li $v0, 1
	jr $ra
	nop
.globl large_imm0
large_imm0:
.p2align 2
	li $v0, 1048576
	jr $ra
	nop
.globl large_imm1
large_imm1:
.p2align 2
	li $v0, 19260817
	jr $ra
	nop
.globl fp_zero
fp_zero:
.p2align 2
	mtc1 $zero, $f0
	jr $ra
	nop
.globl fp_imm0
fp_imm0:
.p2align 2
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 8($t0)
	jr $ra
	nop
.globl fp_imm1
fp_imm1:
.p2align 2
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 12($t0)
	jr $ra
	nop
.globl and_trunc
and_trunc:
.p2align 2
	andi $t0, $a0, 1
	and $v0, $a1, $t0
	jr $ra
	nop
.globl ucmp1
ucmp1:
.p2align 2
	addiu $t0, $a0, -48
	sltiu $v0, $t0, 10
	jr $ra
	nop
.globl ucmp2
ucmp2:
.p2align 2
	xori $t0, $a0, 1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl ucmp3
ucmp3:
.p2align 2
	sltiu $v0, $a0, 100
	jr $ra
	nop
.globl abs
abs:
.p2align 2
	sra $t0, $a0, 31
	xor $t1, $a0, $t0
	subu $v0, $t1, $t0
	jr $ra
	nop
.globl nabs
nabs:
.p2align 2
	sra $t0, $a0, 31
	xor $t1, $a0, $t0
	subu $v0, $t0, $t1
	jr $ra
	nop
.globl absdiff
absdiff:
.p2align 2
	subu $t0, $a0, $a1
	sra $t1, $t0, 31
	xor $t0, $t0, $t1
	subu $v0, $t0, $t1
	jr $ra
	nop
.globl mul_with_constant_0
mul_with_constant_0:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl mul_with_constant_1
mul_with_constant_1:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl mul_with_constant_neg_1
mul_with_constant_neg_1:
.p2align 2
	subu $v0, $zero, $a0
	jr $ra
	nop
.globl mul_with_constant_100
mul_with_constant_100:
.p2align 2
	li $t0, 100
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_1000
mul_with_constant_1000:
.p2align 2
	li $t0, 1000
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_400
mul_with_constant_400:
.p2align 2
	li $t0, 400
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_1000000
mul_with_constant_1000000:
.p2align 2
	li $t0, 1000000
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_10
mul_with_constant_10:
.p2align 2
	sll $t0, $a0, 2
	addu $t0, $t0, $a0
	sll $v0, $t0, 1
	jr $ra
	nop
.globl mul_with_constant_270
mul_with_constant_270:
.p2align 2
	li $t0, 270
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_3
mul_with_constant_3:
.p2align 2
	sll $t0, $a0, 1
	addu $v0, $t0, $a0
	jr $ra
	nop
.globl mul_with_constant_85
mul_with_constant_85:
.p2align 2
	li $t0, 85
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_23
mul_with_constant_23:
.p2align 2
	li $t0, 23
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_neg_23
mul_with_constant_neg_23:
.p2align 2
	li $t0, -23
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_neg_82
mul_with_constant_neg_82:
.p2align 2
	li $t0, -82
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_neg_103
mul_with_constant_neg_103:
.p2align 2
	li $t0, -103
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_neg_59
mul_with_constant_neg_59:
.p2align 2
	li $t0, -59
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_17
mul_with_constant_17:
.p2align 2
	sll $t0, $a0, 4
	addu $v0, $t0, $a0
	jr $ra
	nop
.globl mul_with_constant_128875
mul_with_constant_128875:
.p2align 2
	li $t0, 128875
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_19980130
mul_with_constant_19980130:
.p2align 2
	li $t0, 19980130
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_19971231
mul_with_constant_19971231:
.p2align 2
	li $t0, 19971231
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_8193
mul_with_constant_8193:
.p2align 2
	sll $t0, $a0, 13
	addu $v0, $t0, $a0
	jr $ra
	nop
.globl mul_with_constant_270369
mul_with_constant_270369:
.p2align 2
	li $t0, 270369
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_33
mul_with_constant_33:
.p2align 2
	sll $t0, $a0, 5
	addu $v0, $t0, $a0
	jr $ra
	nop
.globl mul_with_constant_16777216
mul_with_constant_16777216:
.p2align 2
	sll $v0, $a0, 24
	jr $ra
	nop
.globl mul_with_constant_1073741824
mul_with_constant_1073741824:
.p2align 2
	sll $v0, $a0, 30
	jr $ra
	nop
.globl mul_with_constant_60
mul_with_constant_60:
.p2align 2
	sll $t0, $a0, 4
	subu $t0, $t0, $a0
	sll $v0, $t0, 2
	jr $ra
	nop
.globl mul_with_constant_300
mul_with_constant_300:
.p2align 2
	li $t0, 300
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_with_constant_10000
mul_with_constant_10000:
.p2align 2
	li $t0, 10000
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_neg2
mul_neg2:
.p2align 2
	sll $t0, $a0, 1
	subu $v0, $zero, $t0
	jr $ra
	nop
.globl andn
andn:
.p2align 2
	mtc1 $a1, $f4
	cvt.s.w $f4, $f4
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f6, 16($t0)
	c.eq.s $f4, $f6
	li $t0, 1
	movt $t0, $zero, $fcc0
	sltu $t1, $zero, $a0
	and $v0, $t0, $t1
	jr $ra
	nop
.globl sign
sign:
.p2align 2
	sra $v0, $a0, 31
	jr $ra
	nop
.globl select_add_one
select_add_one:
.p2align 2
	sltu $t0, $zero, $a1
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl select_sub_one
select_sub_one:
.p2align 2
	sltu $t0, $zero, $a1
	subu $v0, $a0, $t0
	jr $ra
	nop
