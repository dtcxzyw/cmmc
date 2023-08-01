.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530011
	.4byte	1065353216
.text
.p2align 2
.globl float_imm
float_imm:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 0($t0)
	jr $ra
	nop
.p2align 2
.globl float_imm_op
float_imm_op:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 4($t0)
	add.s $f0, $f12, $f4
	jr $ra
	nop
