.data
.align 4
.globl x
x:
	.zero	40
.align 4
__cmmc_fp_constant_pool:
	.4byte	1082130432
.text
.globl cse_imm
cse_imm:
	li $t0, 10
	mult $a0, $t0
	mflo $t1
	mult $a1, $t0
	mflo $t2
	xor $t3, $a2, $t2
	addu $v0, $t1, $t3
	jr $ra
	nop
.globl cse_global
cse_global:
	lui $t0, %hi(x)
	addiu $t1, $t0, %lo(x)
	lw $t2, %lo(x)($t0)
	lw $t3, 4($t1)
	addu $v0, $t2, $t3
	jr $ra
	nop
.globl cse_fp
cse_fp:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	mul.s $f6, $f12, $f4
	lwc1 $f8, 0($t1)
	mul.s $f10, $f14, $f8
	add.s $f0, $f6, $f10
	jr $ra
	nop
