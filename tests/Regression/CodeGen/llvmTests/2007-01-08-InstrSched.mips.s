.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1077936128
	.4byte	1084227584
	.4byte	1088421888
	.4byte	1093664768
.text
.globl foo
foo:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	mul.s $f4, $f12, $f4
	lwc1 $f6, 4($t0)
	mul.s $f6, $f12, $f6
	add.s $f4, $f4, $f6
	lwc1 $f6, 8($t0)
	mul.s $f6, $f12, $f6
	add.s $f4, $f4, $f6
	lwc1 $f6, 12($t0)
	mul.s $f6, $f12, $f6
	add.s $f0, $f4, $f6
	jr $ra
	nop
