.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530010
.text
.globl add_imm
add_imm:
	mv t1, a0
	addiw t2, a0, 1
	mv a0, t2
	jr ra
.globl add_large_imm
add_large_imm:
	mv t1, a0
	li t2, 262144
	addw t3, a0, t2
	mv a0, t3
	jr ra
.globl add_reg
add_reg:
	mv t1, a0
	mv t2, a1
	addw t3, a0, a1
	mv a0, t3
	jr ra
.globl and_imm
and_imm:
	mv t1, a0
	andi t2, a0, 1
	mv a0, t2
	jr ra
.globl and_large_imm
and_large_imm:
	mv t1, a0
	li t2, 262144
	and t3, a0, t2
	mv a0, t3
	jr ra
.globl and_reg
and_reg:
	mv t1, a0
	mv t2, a1
	and t3, a0, a1
	mv a0, t3
	jr ra
.globl or_imm
or_imm:
	mv t1, a0
	ori t2, a0, 1
	mv a0, t2
	jr ra
.globl or_large_imm
or_large_imm:
	mv t1, a0
	li t2, 262144
	or t3, a0, t2
	mv a0, t3
	jr ra
.globl or_reg
or_reg:
	mv t1, a0
	mv t2, a1
	or t3, a0, a1
	mv a0, t3
	jr ra
.globl xor_imm
xor_imm:
	mv t1, a0
	xori t2, a0, 1
	mv a0, t2
	jr ra
.globl xor_large_imm
xor_large_imm:
	mv t1, a0
	li t2, 262144
	xor t3, a0, t2
	mv a0, t3
	jr ra
.globl xor_reg
xor_reg:
	mv t1, a0
	mv t2, a1
	xor t3, a0, a1
	mv a0, t3
	jr ra
.globl sub_imm
sub_imm:
	mv t1, a0
	addiw t2, a0, -1
	mv a0, t2
	jr ra
.globl sub_reg
sub_reg:
	mv t1, a0
	mv t2, a1
	subw t3, a0, a1
	mv a0, t3
	jr ra
.globl mul_imm
mul_imm:
	mv t1, a0
	li t2, 3
	mulw t3, a0, t2
	mv a0, t3
	jr ra
.globl mul_reg
mul_reg:
	mv t1, a0
	mv t2, a1
	mulw t3, a0, a1
	mv a0, t3
	jr ra
.globl div_imm
div_imm:
	mv t1, a0
	li t2, 3
	divw t3, a0, t2
	mv a0, t3
	jr ra
.globl div_reg
div_reg:
	mv t1, a0
	mv t2, a1
	divw t3, a0, a1
	mv a0, t3
	jr ra
.globl mod_imm
mod_imm:
	mv t1, a0
	li t2, 3
	remw t3, a0, t2
	mv a0, t3
	jr ra
.globl mod_reg
mod_reg:
	mv t1, a0
	mv t2, a1
	remw t3, a0, a1
	mv a0, t3
	jr ra
.globl shl_imm
shl_imm:
	mv t1, a0
	slliw t2, a0, 3
	mv a0, t2
	jr ra
.globl shl_reg
shl_reg:
	mv t1, a0
	mv t2, a1
	sllw t3, a0, a1
	mv a0, t3
	jr ra
.globl ashr_imm
ashr_imm:
	mv t1, a0
	sraiw t2, a0, 3
	mv a0, t2
	jr ra
.globl ashr_reg
ashr_reg:
	mv t1, a0
	mv t2, a1
	sraw t3, a0, a1
	mv a0, t3
	jr ra
.globl s2f
s2f:
	mv t1, a0
	fcvt.s.w f0, a0
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
	lui t1, 260096
	fmv.w.x f0, t1
	fadd.s f1, f10, f0
	fmv.s f10, f1
	jr ra
.globl fadd_identity
fadd_identity:
	jr ra
.globl fsub
fsub:
	fsub.s f0, f10, f11
	fmv.s f10, f0
	jr ra
.globl fsub_imm
fsub_imm:
	lui t1, 260096
	fmv.w.x f0, t1
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
	fadd.s f0, f10, f10
	fmv.s f10, f0
	jr ra
.globl fdiv
fdiv:
	fdiv.s f0, f10, f11
	fmv.s f10, f0
	jr ra
.globl fdiv_imm
fdiv_imm:
	lui t1, 258048
	fmv.w.x f0, t1
	fmul.s f1, f10, f0
	fmv.s f10, f1
	jr ra
.globl fneg
fneg:
	fneg.s f0, f10
	fmv.s f10, f0
	jr ra
.globl zero
zero:
	mv a0, zero
	jr ra
.globl imm
imm:
	li a0, 1
	jr ra
.globl large_imm0
large_imm0:
	li a0, 1048576
	jr ra
.globl large_imm1
large_imm1:
	li a0, 19260817
	jr ra
.globl fp_zero
fp_zero:
	fmv.w.x f0, zero
	fmv.s f10, f0
	jr ra
.globl fp_imm0
fp_imm0:
	lui t1, 266240
	fmv.w.x f0, t1
	fmv.s f10, f0
	jr ra
.globl fp_imm1
fp_imm1:
	la t1, __cmmc_fp_constant_pool
	flw f0, 0(t1)
	fmv.s f10, f0
	jr ra
