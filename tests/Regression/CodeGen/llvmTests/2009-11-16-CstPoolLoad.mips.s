.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1079613850
.text
.globl h
h:
.p2align 2
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 0($t0)
	jr $ra
	nop
