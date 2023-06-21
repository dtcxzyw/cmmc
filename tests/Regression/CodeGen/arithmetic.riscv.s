.data
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530010
.text
.globl add_imm
add_imm:
	addiw a1, a0, 1
	mv a0, a1
	ret
.globl add_large_imm
add_large_imm:
	li a1, 262144
	addw a2, a0, a1
	mv a0, a2
	ret
.globl add_reg
add_reg:
	addw a2, a0, a1
	mv a0, a2
	ret
.globl and_imm
and_imm:
	andi a1, a0, 1
	mv a0, a1
	ret
.globl and_large_imm
and_large_imm:
	li a1, 262144
	and a2, a0, a1
	mv a0, a2
	ret
.globl and_reg
and_reg:
	and a2, a0, a1
	mv a0, a2
	ret
.globl or_imm
or_imm:
	ori a1, a0, 1
	mv a0, a1
	ret
.globl or_large_imm
or_large_imm:
	li a1, 262144
	or a2, a0, a1
	mv a0, a2
	ret
.globl or_reg
or_reg:
	or a2, a0, a1
	mv a0, a2
	ret
.globl xor_imm
xor_imm:
	xori a1, a0, 1
	mv a0, a1
	ret
.globl xor_large_imm
xor_large_imm:
	li a1, 262144
	xor a2, a0, a1
	mv a0, a2
	ret
.globl xor_reg
xor_reg:
	xor a2, a0, a1
	mv a0, a2
	ret
.globl sub_imm
sub_imm:
	addiw a1, a0, -1
	mv a0, a1
	ret
.globl sub_inverted_imm
sub_inverted_imm:
	li a1, 1
	subw a2, a1, a0
	mv a0, a2
	ret
.globl sub_reg
sub_reg:
	subw a2, a0, a1
	mv a0, a2
	ret
.globl mul_imm
mul_imm:
	li a1, 3
	mulw a2, a0, a1
	mv a0, a2
	ret
.globl mul_to_shl
mul_to_shl:
	slliw a1, a0, 2
	mv a0, a1
	ret
.globl mul_reg
mul_reg:
	mulw a2, a0, a1
	mv a0, a2
	ret
.globl div_imm
div_imm:
	li a1, 3
	divw a2, a0, a1
	mv a0, a2
	ret
.globl div_reg
div_reg:
	divw a2, a0, a1
	mv a0, a2
	ret
.globl mod_imm
mod_imm:
	li a1, 3
	remw a2, a0, a1
	mv a0, a2
	ret
.globl mod_reg
mod_reg:
	remw a2, a0, a1
	mv a0, a2
	ret
.globl shl_imm
shl_imm:
	slliw a1, a0, 3
	mv a0, a1
	ret
.globl shl_reg
shl_reg:
	sllw a2, a0, a1
	mv a0, a2
	ret
.globl ashr_imm
ashr_imm:
	sraiw a1, a0, 3
	mv a0, a1
	ret
.globl ashr_reg
ashr_reg:
	sraw a2, a0, a1
	mv a0, a2
	ret
.globl s2f
s2f:
	fcvt.s.w f10, a0
	ret
.globl f2s
f2s:
	fcvt.w.s a0, f10, rtz
	ret
.globl fadd
fadd:
	fadd.s f12, f10, f11
	fmv.s f10, f12
	ret
.globl fadd_imm
fadd_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fadd.s f12, f10, f11
	fmv.s f10, f12
	ret
.globl fadd_identity
fadd_identity:
	ret
.globl fsub
fsub:
	fsub.s f12, f10, f11
	fmv.s f10, f12
	ret
.globl fsub_imm
fsub_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f12, f10, f11
	fmv.s f10, f12
	ret
.globl fmul
fmul:
	fmul.s f12, f10, f11
	fmv.s f10, f12
	ret
.globl fmul_imm
fmul_imm:
	fadd.s f11, f10, f10
	fmv.s f10, f11
	ret
.globl fdiv
fdiv:
	fdiv.s f12, f10, f11
	fmv.s f10, f12
	ret
.globl fdiv_imm
fdiv_imm:
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f12, f10, f11
	fmv.s f10, f12
	ret
.globl fneg
fneg:
	fneg.s f11, f10
	fmv.s f10, f11
	ret
.globl s2f2s
s2f2s:
	fcvt.s.w f10, a0
	fcvt.w.s a1, f10, rtz
	mv a0, a1
	ret
.globl f2s2f
f2s2f:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f11, a0
	fmv.s f10, f11
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
	fmv.w.x f10, zero
	ret
.globl fp_imm0
fp_imm0:
	lui a0, 266240
	fmv.w.x f10, a0
	ret
.globl fp_imm1
fp_imm1:
pcrel279:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel279)
	flw f10, 0(a1)
	ret
