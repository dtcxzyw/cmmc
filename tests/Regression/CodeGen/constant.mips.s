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
	li $t1, 10
	mult $a0, $t1
	mflo $t0
	mult $a1, $t1
	mflo $t1
	xor $t1, $a2, $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
.globl cse_global
cse_global:
	lui $t1, %hi(x)
	addiu $t0, $t1, %lo(x)
	lw $t1, %lo(x)($t1)
	lw $t0, 4($t0)
	addu $v0, $t1, $t0
	jr $ra
	nop
.globl cse_fp
cse_fp:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	mul.s $f4, $f12, $f4
	lwc1 $f6, 0($t0)
	mul.s $f6, $f14, $f6
	add.s $f0, $f4, $f6
	jr $ra
	nop
