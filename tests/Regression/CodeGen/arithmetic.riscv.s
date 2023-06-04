.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065353216
	.4byte	1073741824
.text
.globl add_imm
add_imm:
	mv t1, a0
	addiw t2, t1, 1
	mv a0, t2
	jr ra
.globl add_large_imm
add_large_imm:
	mv t1, a0
	li t2, 262144
	addw t3, t1, t2
	mv a0, t3
	jr ra
.globl add_reg
add_reg:
	mv t1, a0
	mv t2, a1
	addw t3, t1, t2
	mv a0, t3
	jr ra
.globl and_imm
and_imm:
	mv t1, a0
	andi t2, t1, 1
	mv a0, t2
	jr ra
.globl and_large_imm
and_large_imm:
	mv t1, a0
	li t2, 262144
	and t3, t1, t2
	mv a0, t3
	jr ra
.globl and_reg
and_reg:
	mv t1, a0
	mv t2, a1
	and t3, t1, t2
	mv a0, t3
	jr ra
.globl or_imm
or_imm:
	mv t1, a0
	ori t2, t1, 1
	mv a0, t2
	jr ra
.globl or_large_imm
or_large_imm:
	mv t1, a0
	li t2, 262144
	or t3, t1, t2
	mv a0, t3
	jr ra
.globl or_reg
or_reg:
	mv t1, a0
	mv t2, a1
	or t3, t1, t2
	mv a0, t3
	jr ra
.globl xor_imm
xor_imm:
	mv t1, a0
	xori t2, t1, 1
	mv a0, t2
	jr ra
.globl xor_large_imm
xor_large_imm:
	mv t1, a0
	li t2, 262144
	xor t3, t1, t2
	mv a0, t3
	jr ra
.globl xor_reg
xor_reg:
	mv t1, a0
	mv t2, a1
	xor t3, t1, t2
	mv a0, t3
	jr ra
.globl sub_imm
sub_imm:
	mv t1, a0
	addiw t2, t1, -1
	mv a0, t2
	jr ra
.globl sub_reg
sub_reg:
	mv t1, a0
	mv t2, a1
	subw t3, t1, t2
	mv a0, t3
	jr ra
.globl mul_imm
mul_imm:
	mv t1, a0
	li t2, 3
	mulw t3, t1, t2
	mv a0, t3
	jr ra
.globl mul_reg
mul_reg:
	mv t1, a0
	mv t2, a1
	mulw t3, t1, t2
	mv a0, t3
	jr ra
.globl div_imm
div_imm:
	mv t1, a0
	li t2, 3
	divw t3, t1, t2
	mv a0, t3
	jr ra
.globl div_reg
div_reg:
	mv t1, a0
	mv t2, a1
	divw t3, t1, t2
	mv a0, t3
	jr ra
.globl mod_imm
mod_imm:
	mv t1, a0
	li t2, 3
	remw t3, t1, t2
	mv a0, t3
	jr ra
.globl mod_reg
mod_reg:
	mv t1, a0
	mv t2, a1
	remw t3, t1, t2
	mv a0, t3
	jr ra
.globl shl_imm
shl_imm:
	mv t1, a0
	slliw t2, t1, 3
	mv a0, t2
	jr ra
.globl shl_reg
shl_reg:
	mv t1, a0
	mv t2, a1
	sllw t3, t1, t2
	mv a0, t3
	jr ra
.globl ashr_imm
ashr_imm:
	mv t1, a0
	sraiw t2, t1, 3
	mv a0, t2
	jr ra
.globl ashr_reg
ashr_reg:
	mv t1, a0
	mv t2, a1
	sraw t3, t1, t2
	mv a0, t3
	jr ra
.globl s2f
s2f:
	mv t1, a0
	fcvt.s.w f0, t1
	fmv.s f10, f0
	jr ra
.globl f2s
f2s:
	fcvt.w.s t1, f10, rtz
	mv a0, t1
	jr ra
.globl fadd
fadd:
	fadd.s f0, f10, f11
	fmv.s f10, f0
	jr ra
.globl fadd_imm
fadd_imm:
	la t1, __cmmc_fp_constant_pool
	flw f0, 0(t1)
	fadd.s f1, f10, f0
	fmv.s f10, f1
	jr ra
.globl fadd_identity
fadd_identity:
	fmv.s f10, f10
	jr ra
.globl fsub
fsub:
	fsub.s f0, f10, f11
	fmv.s f10, f0
	jr ra
.globl fsub_imm
fsub_imm:
	la t1, __cmmc_fp_constant_pool
	flw f0, 0(t1)
	fsub.s f1, f10, f0
	fmv.s f10, f1
	jr ra
.globl fmul
fmul:
	fmul.s f0, f10, f11
	fmv.s f10, f0
	jr ra
.globl fmul_imm
fmul_imm:
	la t1, __cmmc_fp_constant_pool
	flw f0, 4(t1)
	fmul.s f1, f10, f0
	fmv.s f10, f1
	jr ra
.globl fdiv
fdiv:
	fdiv.s f0, f10, f11
	fmv.s f10, f0
	jr ra
.globl fdiv_imm
fdiv_imm:
	la t1, __cmmc_fp_constant_pool
	flw f0, 4(t1)
	fdiv.s f1, f10, f0
	fmv.s f10, f1
	jr ra
.globl fneg
fneg:
	fneg.s f0, f10
	fmv.s f10, f0
	jr ra
