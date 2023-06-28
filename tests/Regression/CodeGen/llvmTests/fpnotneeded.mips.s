.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl f
f:
	.4byte	1065353216
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1073741824
	.4byte	1065353216
.bss
.text
.globl foo
foo:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	lui $t0, %hi(f)
	swc1 $f4, %lo(f)($t0)
	jr $ra
	nop
.globl fv
fv:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f0, 4($t0)
	jr $ra
	nop
.globl iv
iv:
	lui $t0, %hi(i)
	lw $v0, %lo(i)($t0)
	jr $ra
	nop
.globl vif
vif:
	jr $ra
	nop
.globl vv
vv:
	jr $ra
	nop
