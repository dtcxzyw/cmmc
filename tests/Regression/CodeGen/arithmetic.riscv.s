.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530010
.text
.globl add_imm
add_imm:
	addiw t1, a0, 1
	mv a0, t1
	ret
.globl add_large_imm
add_large_imm:
	li t1, 262144
	addw t2, a0, t1
	mv a0, t2
	ret
.globl add_reg
add_reg:
	addw t1, a0, a1
	mv a0, t1
	ret
.globl and_imm
and_imm:
	andi t1, a0, 1
	mv a0, t1
	ret
.globl and_large_imm
and_large_imm:
	li t1, 262144
	and t2, a0, t1
	mv a0, t2
	ret
.globl and_reg
and_reg:
	and t1, a0, a1
	mv a0, t1
	ret
.globl or_imm
or_imm:
	ori t1, a0, 1
	mv a0, t1
	ret
.globl or_large_imm
or_large_imm:
	li t1, 262144
	or t2, a0, t1
	mv a0, t2
	ret
.globl or_reg
or_reg:
	or t1, a0, a1
	mv a0, t1
	ret
.globl xor_imm
xor_imm:
	xori t1, a0, 1
	mv a0, t1
	ret
.globl xor_large_imm
xor_large_imm:
	li t1, 262144
	xor t2, a0, t1
	mv a0, t2
	ret
.globl xor_reg
xor_reg:
	xor t1, a0, a1
	mv a0, t1
	ret
.globl sub_imm
sub_imm:
	addiw t1, a0, -1
	mv a0, t1
	ret
.globl sub_inverted_imm
sub_inverted_imm:
	li t1, 1
	subw t2, t1, a0
	mv a0, t2
	ret
.globl sub_reg
sub_reg:
	subw t1, a0, a1
	mv a0, t1
	ret
.globl mul_imm
mul_imm:
	li t1, 3
	mulw t2, a0, t1
	mv a0, t2
	ret
.globl mul_to_shl
mul_to_shl:
	slliw t1, a0, 2
	mv a0, t1
	ret
.globl mul_reg
mul_reg:
	mulw t1, a0, a1
	mv a0, t1
	ret
.globl div_imm
div_imm:
	li t1, 3
	divw t2, a0, t1
	mv a0, t2
	ret
.globl div_reg
div_reg:
	divw t1, a0, a1
	mv a0, t1
	ret
.globl mod_imm
mod_imm:
	li t1, 3
	remw t2, a0, t1
	mv a0, t2
	ret
.globl mod_reg
mod_reg:
	remw t1, a0, a1
	mv a0, t1
	ret
.globl shl_imm
shl_imm:
	slliw t1, a0, 3
	mv a0, t1
	ret
.globl shl_reg
shl_reg:
	sllw t1, a0, a1
	mv a0, t1
	ret
.globl ashr_imm
ashr_imm:
	sraiw t1, a0, 3
	mv a0, t1
	ret
.globl ashr_reg
ashr_reg:
	sraw t1, a0, a1
	mv a0, t1
	ret
.globl s2f
s2f:
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
.globl s2f2s
s2f2s:
	fcvt.s.w f0, a0
	fcvt.w.s t1, f0, rtz
	mv a0, t1
	ret
.globl f2s2f
f2s2f:
	fcvt.w.s t1, f10, rtz
	fcvt.s.w f0, t1
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
pcrel225:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi t2, t1, %pcrel_lo(pcrel225)
	flw f0, 0(t2)
	fmv.s f10, f0
	ret
