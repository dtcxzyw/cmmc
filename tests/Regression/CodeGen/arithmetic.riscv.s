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
	ret
.globl add_large_imm
add_large_imm:
	mv t1, a0
	li t2, 262144
	addw t3, a0, t2
	mv a0, t3
	ret
.globl add_reg
add_reg:
	mv t1, a0
	mv t2, a1
	addw t3, a0, a1
	mv a0, t3
	ret
.globl and_imm
and_imm:
	mv t1, a0
	andi t2, a0, 1
	mv a0, t2
	ret
.globl and_large_imm
and_large_imm:
	mv t1, a0
	li t2, 262144
	and t3, a0, t2
	mv a0, t3
	ret
.globl and_reg
and_reg:
	mv t1, a0
	mv t2, a1
	and t3, a0, a1
	mv a0, t3
	ret
.globl or_imm
or_imm:
	mv t1, a0
	ori t2, a0, 1
	mv a0, t2
	ret
.globl or_large_imm
or_large_imm:
	mv t1, a0
	li t2, 262144
	or t3, a0, t2
	mv a0, t3
	ret
.globl or_reg
or_reg:
	mv t1, a0
	mv t2, a1
	or t3, a0, a1
	mv a0, t3
	ret
.globl xor_imm
xor_imm:
	mv t1, a0
	xori t2, a0, 1
	mv a0, t2
	ret
.globl xor_large_imm
xor_large_imm:
	mv t1, a0
	li t2, 262144
	xor t3, a0, t2
	mv a0, t3
	ret
.globl xor_reg
xor_reg:
	mv t1, a0
	mv t2, a1
	xor t3, a0, a1
	mv a0, t3
	ret
.globl sub_imm
sub_imm:
	mv t1, a0
	addiw t2, a0, -1
	mv a0, t2
	ret
.globl sub_reg
sub_reg:
	mv t1, a0
	mv t2, a1
	subw t3, a0, a1
	mv a0, t3
	ret
.globl mul_imm
mul_imm:
	mv t1, a0
	li t2, 3
	mulw t3, a0, t2
	mv a0, t3
	ret
.globl mul_reg
mul_reg:
	mv t1, a0
	mv t2, a1
	mulw t3, a0, a1
	mv a0, t3
	ret
.globl div_imm
div_imm:
	mv t1, a0
	li t2, 3
	divw t3, a0, t2
	mv a0, t3
	ret
.globl div_reg
div_reg:
	mv t1, a0
	mv t2, a1
	divw t3, a0, a1
	mv a0, t3
	ret
.globl mod_imm
mod_imm:
	mv t1, a0
	li t2, 3
	remw t3, a0, t2
	mv a0, t3
	ret
.globl mod_reg
mod_reg:
	mv t1, a0
	mv t2, a1
	remw t3, a0, a1
	mv a0, t3
	ret
.globl shl_imm
shl_imm:
	mv t1, a0
	slliw t2, a0, 3
	mv a0, t2
	ret
.globl shl_reg
shl_reg:
	mv t1, a0
	mv t2, a1
	sllw t3, a0, a1
	mv a0, t3
	ret
.globl ashr_imm
ashr_imm:
	mv t1, a0
	sraiw t2, a0, 3
	mv a0, t2
	ret
.globl ashr_reg
ashr_reg:
	mv t1, a0
	mv t2, a1
	sraw t3, a0, a1
	mv a0, t3
	ret
.globl s2f
s2f:
	mv t1, a0
	fcvt.s.w f0, a0
	fmv.s f10, f0
	ret
.globl f2s
f2s:
	fcvt.w.s t1, f10, rtz
	mv a0, t1
	ret
.globl fadd
fadd:
	fadd.s f0, f10, f11
	fmv.s f10, f0
	ret
.globl fadd_imm
fadd_imm:
	lui t1, 260096
	fmv.w.x f0, t1
	fadd.s f1, f10, f0
	fmv.s f10, f1
	ret
.globl fadd_identity
fadd_identity:
	ret
.globl fsub
fsub:
	fsub.s f0, f10, f11
	fmv.s f10, f0
	ret
.globl fsub_imm
fsub_imm:
	lui t1, 260096
	fmv.w.x f0, t1
	fsub.s f1, f10, f0
	fmv.s f10, f1
	ret
.globl fmul
fmul:
	fmul.s f0, f10, f11
	fmv.s f10, f0
	ret
.globl fmul_imm
fmul_imm:
	fadd.s f0, f10, f10
	fmv.s f10, f0
	ret
.globl fdiv
fdiv:
	fdiv.s f0, f10, f11
	fmv.s f10, f0
	ret
.globl fdiv_imm
fdiv_imm:
	lui t1, 258048
	fmv.w.x f0, t1
	fmul.s f1, f10, f0
	fmv.s f10, f1
	ret
.globl fneg
fneg:
	fneg.s f0, f10
	fmv.s f10, f0
	ret
.globl zero
zero:
	mv a0, zero
	ret
.globl imm
imm:
	li a0, 1
	ret
.globl large_imm0
large_imm0:
	li a0, 1048576
	ret
.globl large_imm1
large_imm1:
	li a0, 19260817
	ret
.globl fp_zero
fp_zero:
	fmv.w.x f0, zero
	fmv.s f10, f0
	ret
.globl fp_imm0
fp_imm0:
	lui t1, 266240
	fmv.w.x f0, t1
	fmv.s f10, f0
	ret
.globl fp_imm1
fp_imm1:
pcrel238:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t1, %pcrel_lo(pcrel238)
	flw f0, 0(t2)
	fmv.s f10, f0
	ret
