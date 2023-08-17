.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1082130432
.text
.p2align 2
.globl test1
test1:
	add.s $f4, $f12, $f12
	add.s $f0, $f4, $f4
	jr $ra
	nop
.p2align 2
.globl test10
test10:
	neg.s $f4, $f12
	add.s $f0, $f12, $f4
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	mul.s $f4, $f12, $f4
	add.s $f6, $f12, $f12
	add.s $f0, $f4, $f6
	jr $ra
	nop
.p2align 2
.globl test3
test3:
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t0)
	mul.s $f4, $f12, $f4
	add.s $f6, $f12, $f12
	add.s $f0, $f4, $f6
	jr $ra
	nop
.p2align 2
.globl test4
test4:
	add.s $f4, $f12, $f12
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f6, 0($t0)
	mul.s $f6, $f12, $f6
	add.s $f0, $f4, $f6
	jr $ra
	nop
.p2align 2
.globl test5
test5:
	add.s $f4, $f12, $f12
	lui $t0, %hi(__cmmc_fp_constant_pool)
	addiu $t0, $t0, %lo(__cmmc_fp_constant_pool)
	lwc1 $f6, 0($t0)
	mul.s $f6, $f12, $f6
	add.s $f0, $f4, $f6
	jr $ra
	nop
.p2align 2
.globl test6
test6:
	mtc1 $zero, $f0
	jr $ra
	nop
.p2align 2
.globl test7
test7:
	mtc1 $zero, $f0
	jr $ra
	nop
.p2align 2
.globl test8
test8:
	mov.s $f0, $f12
	jr $ra
	nop
.p2align 2
.globl test9
test9:
	mov.s $f0, $f12
	jr $ra
	nop
