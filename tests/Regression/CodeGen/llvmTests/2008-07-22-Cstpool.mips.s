.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	1082759578
	.4byte	1082340147
.text
.globl F
F:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	add.s $f4, $f12, $f4
	lwc1 $f6, 4($t0)
	add.s $f0, $f4, $f6
	jr $ra
	nop
