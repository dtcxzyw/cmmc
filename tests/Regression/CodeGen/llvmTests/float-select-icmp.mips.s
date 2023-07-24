.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
.text
.globl select_icmp_eq
select_icmp_eq:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	xor $t0, $a0, $a1
	sltiu $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_ne
select_icmp_ne:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	xor $t0, $a0, $a1
	sltu $t0, $zero, $t0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_sge
select_icmp_sge:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a0, $a1
	xori $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_sgt
select_icmp_sgt:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a1, $a0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_sgt_zero
select_icmp_sgt_zero:
.p2align 2
	slt $t0, $zero, $a0
	mtc1 $zero, $f4
	lui $t1, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t1, %lo(__cmmc_fp_constant_pool)
	lwc1 $f6, 0($t1)
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_sle
select_icmp_sle:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a1, $a0
	xori $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_slt
select_icmp_slt:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	slt $t0, $a0, $a1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_slt_one
select_icmp_slt_one:
.p2align 2
	slti $t0, $a0, 1
	lui $t1, %hi(__cmmc_fp_constant_pool)
	addiu $t1, $t1, %lo(__cmmc_fp_constant_pool)
	lwc1 $f4, 0($t1)
	mtc1 $zero, $f6
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_uge
select_icmp_uge:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	sltu $t0, $a0, $a1
	xori $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_ugt
select_icmp_ugt:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	sltu $t0, $a1, $a0
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_ule
select_icmp_ule:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	sltu $t0, $a1, $a0
	xori $t0, $t0, 1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
.globl select_icmp_ult
select_icmp_ult:
.p2align 2
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	sltu $t0, $a0, $a1
	mov.s $f0, $f4
	movz.s $f0, $f6, $t0
	jr $ra
	nop
