.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
	.4byte	1056964608
	.4byte	1090519040
	.4byte	1078530010
.text
.globl add_imm
add_imm:
	addiu $v0, $a0, 1
	jr $ra
	nop
.globl add_large_imm
add_large_imm:
	li $t0, 262144
	addu $v0, $a0, $t0
	jr $ra
	nop
.globl add_reg
add_reg:
	addu $v0, $a0, $a1
	jr $ra
	nop
.globl and_imm
and_imm:
	andi $v0, $a0, 1
	jr $ra
	nop
.globl and_large_imm
and_large_imm:
	li $t0, 262144
	and $v0, $a0, $t0
	jr $ra
	nop
.globl and_reg
and_reg:
	and $v0, $a0, $a1
	jr $ra
	nop
.globl or_imm
or_imm:
	ori $v0, $a0, 1
	jr $ra
	nop
.globl or_large_imm
or_large_imm:
	li $t0, 262144
	or $v0, $a0, $t0
	jr $ra
	nop
.globl or_reg
or_reg:
	or $v0, $a0, $a1
	jr $ra
	nop
.globl xor_imm
xor_imm:
	xori $v0, $a0, 1
	jr $ra
	nop
.globl xor_large_imm
xor_large_imm:
	li $t0, 262144
	xor $v0, $a0, $t0
	jr $ra
	nop
.globl xor_reg
xor_reg:
	xor $v0, $a0, $a1
	jr $ra
	nop
.globl sub_imm
sub_imm:
	addiu $v0, $a0, -1
	jr $ra
	nop
.globl sub_inverted_imm
sub_inverted_imm:
	li $t0, 1
	subu $v0, $t0, $a0
	jr $ra
	nop
.globl sub_reg
sub_reg:
	subu $v0, $a0, $a1
	jr $ra
	nop
.globl mul_imm
mul_imm:
	li $t0, 3
	mult $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl mul_to_shl
mul_to_shl:
	sll $v0, $a0, 2
	jr $ra
	nop
.globl mul_reg
mul_reg:
	mult $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl div2
div2:
	li $t0, 2
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div4
div4:
	li $t0, 4
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div3
div3:
	li $t0, 3
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div11
div11:
	li $t0, 11
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div30
div30:
	li $t0, 30
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl divNeg30
divNeg30:
	li $t0, -30
	div $zero, $a0, $t0
	mflo $v0
	jr $ra
	nop
.globl div_reg
div_reg:
	div $zero, $a0, $a1
	mflo $v0
	jr $ra
	nop
.globl mod_imm
mod_imm:
	li $t0, 3
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod_reg
mod_reg:
	div $zero, $a0, $a1
	mfhi $v0
	jr $ra
	nop
.globl mod2
mod2:
	li $t0, 2
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod30
mod30:
	li $t0, 30
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod_large1
mod_large1:
	li $t0, 1000000007
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl mod_large2
mod_large2:
	li $t0, 300000
	div $zero, $a0, $t0
	mfhi $v0
	jr $ra
	nop
.globl shl_imm
shl_imm:
	sll $v0, $a0, 3
	jr $ra
	nop
.globl shl_reg
shl_reg:
	sllv $v0, $a0, $a1
	jr $ra
	nop
.globl ashr_imm
ashr_imm:
	sra $v0, $a0, 3
	jr $ra
	nop
.globl ashr_reg
ashr_reg:
	srav $v0, $a0, $a1
	jr $ra
	nop
.globl s2f
s2f:
	mtc1 $a0, $f4
	cvt.s.w $f0, $f4
	jr $ra
	nop
.globl f2s
f2s:
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
.globl fadd
fadd:
	add.s $f0, $f12, $f14
	jr $ra
	nop
.globl fadd_imm
fadd_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	add.s $f0, $f12, $f4
	jr $ra
	nop
.globl fadd_identity
fadd_identity:
	mov.s $f0, $f12
	jr $ra
	nop
.globl fsub
fsub:
	sub.s $f0, $f12, $f14
	jr $ra
	nop
.globl fsub_imm
fsub_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	sub.s $f0, $f12, $f4
	jr $ra
	nop
.globl fmul
fmul:
	mul.s $f0, $f12, $f14
	jr $ra
	nop
.globl fmul_imm
fmul_imm:
	add.s $f0, $f12, $f12
	jr $ra
	nop
.globl fdiv
fdiv:
	div.s $f0, $f12, $f14
	jr $ra
	nop
.globl fdiv_imm
fdiv_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 4($t0)
	mul.s $f0, $f12, $f4
	jr $ra
	nop
.globl fneg
fneg:
	neg.s $f0, $f12
	jr $ra
	nop
.globl s2f2s
s2f2s:
	mtc1 $a0, $f4
	cvt.s.w $f4, $f4
	trunc.w.s $f4, $f4
	mfc1 $v0, $f4
	jr $ra
	nop
.globl f2s2f
f2s2f:
	trunc.w.s $f4, $f12
	cvt.s.w $f0, $f4
	jr $ra
	nop
.globl zero
zero:
	move $v0, $zero
	jr $ra
	nop
.globl imm
imm:
	li $v0, 1
	jr $ra
	nop
.globl large_imm0
large_imm0:
	li $v0, 1048576
	jr $ra
	nop
.globl large_imm1
large_imm1:
	li $v0, 19260817
	jr $ra
	nop
.globl fp_zero
fp_zero:
	mtc1 $zero, $f0
	jr $ra
	nop
.globl fp_imm0
fp_imm0:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 8($t0)
	jr $ra
	nop
.globl fp_imm1
fp_imm1:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 12($t0)
	jr $ra
	nop
.globl and_trunc
and_trunc:
	andi $t0, $a0, 1
	and $v0, $a1, $t0
	jr $ra
	nop
.globl ucmp1
ucmp1:
	addiu $t0, $a0, -48
	sltiu $v0, $t0, 10
	jr $ra
	nop
.globl ucmp2
ucmp2:
	xori $t0, $a0, 1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl ucmp3
ucmp3:
	sltiu $v0, $a0, 100
	jr $ra
	nop
