.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
	.4byte	1073741824
.text
.globl add_imm
add_imm:
	addiu $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl add_large_imm
add_large_imm:
	li $t0, 262144
	addu $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl add_reg
add_reg:
	addu $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl and_imm
and_imm:
	andi $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl and_large_imm
and_large_imm:
	li $t0, 262144
	and $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl and_reg
and_reg:
	and $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl or_imm
or_imm:
	ori $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl or_large_imm
or_large_imm:
	li $t0, 262144
	or $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl or_reg
or_reg:
	or $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl xor_imm
xor_imm:
	xori $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl xor_large_imm
xor_large_imm:
	li $t0, 262144
	xor $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl xor_reg
xor_reg:
	xor $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl sub_imm
sub_imm:
	addiu $t0, $a0, -1
	move $v0, $t0
	jr $ra
	nop
.globl sub_reg
sub_reg:
	subu $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl mul_imm
mul_imm:
	li $t0, 3
	mult $a0, $t0
	mflo $t1
	move $v0, $t1
	jr $ra
	nop
.globl mul_reg
mul_reg:
	mult $a0, $a1
	mflo $t0
	move $v0, $t0
	jr $ra
	nop
.globl div_imm
div_imm:
	li $t0, 3
	div $zero, $a0, $t0
	mflo $t1
	move $v0, $t1
	jr $ra
	nop
.globl div_reg
div_reg:
	div $zero, $a0, $a1
	mflo $t0
	move $v0, $t0
	jr $ra
	nop
.globl mod_imm
mod_imm:
	li $t0, 3
	div $zero, $a0, $t0
	mfhi $t1
	move $v0, $t1
	jr $ra
	nop
.globl mod_reg
mod_reg:
	div $zero, $a0, $a1
	mfhi $t0
	move $v0, $t0
	jr $ra
	nop
.globl shl_imm
shl_imm:
	sll $t0, $a0, 3
	move $v0, $t0
	jr $ra
	nop
.globl shl_reg
shl_reg:
	sllv $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl ashr_imm
ashr_imm:
	sra $t0, $a0, 3
	move $v0, $t0
	jr $ra
	nop
.globl ashr_reg
ashr_reg:
	srav $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl s2f
s2f:
	mtc1 $a0, $f4
	cvt.s.w $f6, $f4
	mov.s $f0, $f6
	jr $ra
	nop
.globl f2s
f2s:
	trunc.w.s $f4, $f12
	mfc1 $t0, $f4
	move $v0, $t0
	jr $ra
	nop
.globl fadd
fadd:
	add.s $f4, $f12, $f14
	mov.s $f0, $f4
	jr $ra
	nop
.globl fadd_imm
fadd_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	add.s $f6, $f12, $f4
	mov.s $f0, $f6
	jr $ra
	nop
.globl fadd_identity
fadd_identity:
	mov.s $f0, $f12
	jr $ra
	nop
.globl fsub
fsub:
	sub.s $f4, $f12, $f14
	mov.s $f0, $f4
	jr $ra
	nop
.globl fsub_imm
fsub_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	sub.s $f6, $f12, $f4
	mov.s $f0, $f6
	jr $ra
	nop
.globl fmul
fmul:
	mul.s $f4, $f12, $f14
	mov.s $f0, $f4
	jr $ra
	nop
.globl fmul_imm
fmul_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 4($t1)
	mul.s $f6, $f12, $f4
	mov.s $f0, $f6
	jr $ra
	nop
.globl fdiv
fdiv:
	div.s $f4, $f12, $f14
	mov.s $f0, $f4
	jr $ra
	nop
.globl fdiv_imm
fdiv_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 4($t1)
	div.s $f6, $f12, $f4
	mov.s $f0, $f6
	jr $ra
	nop
.globl fneg
fneg:
	neg.s $f4, $f12
	mov.s $f0, $f4
	jr $ra
	nop
