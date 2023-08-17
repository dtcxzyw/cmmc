.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1079613850
.text
.p2align 2
.globl h
h:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 0($t0)
	jr $ra
	nop
