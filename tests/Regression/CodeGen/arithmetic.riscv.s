.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530010
.text
.p2align 2
.globl add_imm
add_imm:
	addiw a0, a0, 1
	ret
.p2align 2
.globl add_large_imm
add_large_imm:
	lui a1, 64
	addw a0, a0, a1
	ret
.p2align 2
.globl add_reg
add_reg:
	addw a0, a0, a1
	ret
.p2align 2
.globl and_imm
and_imm:
	andi a0, a0, 1
	ret
.p2align 2
.globl and_large_imm
and_large_imm:
	lui a1, 64
	and a0, a0, a1
	ret
.p2align 2
.globl and_reg
and_reg:
	and a0, a0, a1
	ret
.p2align 2
.globl or_imm
or_imm:
	ori a0, a0, 1
	ret
.p2align 2
.globl or_large_imm
or_large_imm:
	lui a1, 64
	or a0, a0, a1
	ret
.p2align 2
.globl or_reg
or_reg:
	or a0, a0, a1
	ret
.p2align 2
.globl xor_imm
xor_imm:
	xori a0, a0, 1
	ret
.p2align 2
.globl xor_large_imm
xor_large_imm:
	lui a1, 64
	xor a0, a0, a1
	ret
.p2align 2
.globl xor_reg
xor_reg:
	xor a0, a0, a1
	ret
.p2align 2
.globl sub_imm
sub_imm:
	addiw a0, a0, -1
	ret
.p2align 2
.globl sub_inverted_imm
sub_inverted_imm:
	li a1, 1
	subw a0, a1, a0
	ret
.p2align 2
.globl sub_reg
sub_reg:
	subw a0, a0, a1
	ret
.p2align 2
.globl mul_imm
mul_imm:
	sh1add a0, a0, a0
	ret
.p2align 2
.globl mul_to_shl
mul_to_shl:
	slliw a0, a0, 2
	ret
.p2align 2
.globl mul_reg
mul_reg:
	mulw a0, a0, a1
	ret
.p2align 2
.globl div2
div2:
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	ret
.p2align 2
.globl div4
div4:
	slli a1, a0, 1
	srli a2, a1, 62
	add a3, a0, a2
	sraiw a0, a3, 2
	ret
.p2align 2
.globl div3
div3:
	li a3, 1431655766
	mul a1, a0, a3
	srli a3, a1, 63
	srli a2, a1, 32
	add a0, a3, a2
	ret
.p2align 2
.globl div11
div11:
	li a3, 780903145
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 33
	add a0, a3, a2
	ret
.p2align 2
.globl div30
div30:
	li a3, -2004318071
	mul a1, a0, a3
	srli a2, a1, 32
	add a0, a2, a0
	srliw a2, a0, 31
	sraiw a1, a0, 4
	add a0, a2, a1
	ret
.p2align 2
.globl divNeg30
divNeg30:
	li a3, 2004318071
	mul a1, a0, a3
	srli a2, a1, 32
	sub a0, a2, a0
	srliw a2, a0, 31
	sraiw a1, a0, 4
	add a0, a2, a1
	ret
.p2align 2
.globl div_shl
div_shl:
	slli a2, a0, 1
	li a5, 64
	subw a3, a5, a1
	srl a4, a2, a3
	add a2, a0, a4
	sraw a0, a2, a1
	ret
.p2align 2
.globl div_reg
div_reg:
	divw a0, a0, a1
	ret
.p2align 2
.globl mod_imm
mod_imm:
	li a3, 1431655766
	mul a1, a0, a3
	srli a3, a1, 63
	srli a2, a1, 32
	add a1, a3, a2
	sh1add a2, a1, a1
	subw a0, a0, a2
	ret
.p2align 2
.globl mod_reg
mod_reg:
	remw a0, a0, a1
	ret
.p2align 2
.globl mod2
mod2:
	srliw a1, a0, 31
	add a2, a0, a1
	andi a3, a2, -2
	subw a0, a0, a3
	ret
.p2align 2
.globl mod30
mod30:
	li a1, -2004318071
	mul a2, a0, a1
	srli a3, a2, 32
	add a1, a3, a0
	srliw a3, a1, 31
	sraiw a2, a1, 4
	add a1, a3, a2
	slliw a2, a1, 4
	subw a3, a2, a1
	slli a1, a3, 1
	subw a0, a0, a1
	ret
.p2align 2
.globl mod_large1
mod_large1:
	li a3, 1152921497
	li a4, 1000000007
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	ret
.p2align 2
.globl mod_large2
mod_large2:
	li a3, 1876499845
	li a4, 300000
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 49
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	ret
.p2align 2
.globl shl_imm
shl_imm:
	slliw a0, a0, 3
	ret
.p2align 2
.globl shl_reg
shl_reg:
	sllw a0, a0, a1
	ret
.p2align 2
.globl ashr_imm
ashr_imm:
	sraiw a0, a0, 3
	ret
.p2align 2
.globl ashr_reg
ashr_reg:
	sraw a0, a0, a1
	ret
.p2align 2
.globl s2f
s2f:
	fcvt.s.w f10, a0
	ret
.p2align 2
.globl f2s
f2s:
	fcvt.w.s a0, f10, rtz
	ret
.p2align 2
.globl fadd
fadd:
	fadd.s f10, f10, f11
	ret
.p2align 2
.globl fadd_imm
fadd_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	ret
.p2align 2
.globl fadd_identity
fadd_identity:
	ret
.p2align 2
.globl fsub
fsub:
	fsub.s f10, f10, f11
	ret
.p2align 2
.globl fsub_imm
fsub_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
	ret
.p2align 2
.globl fmul
fmul:
	fmul.s f10, f10, f11
	ret
.p2align 2
.globl fmul_imm
fmul_imm:
	fadd.s f10, f10, f10
	ret
.p2align 2
.globl fdiv
fdiv:
	fdiv.s f10, f10, f11
	ret
.p2align 2
.globl fdiv_imm
fdiv_imm:
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	ret
.p2align 2
.globl fneg
fneg:
	fneg.s f10, f10
	ret
.p2align 2
.globl s2f2s
s2f2s:
	fcvt.s.w f10, a0
	fcvt.w.s a0, f10, rtz
	ret
.p2align 2
.globl f2s2f
f2s2f:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
	ret
.p2align 2
.globl zero
zero:
	mv a0, zero
	ret
.p2align 2
.globl imm
imm:
	li a0, 1
	ret
.p2align 2
.globl large_imm0
large_imm0:
	lui a0, 256
	ret
.p2align 2
.globl large_imm1
large_imm1:
	li a0, 19260817
	ret
.p2align 2
.globl fp_zero
fp_zero:
	fmv.w.x f10, zero
	ret
.p2align 2
.globl fp_imm0
fp_imm0:
	lui a0, 266240
	fmv.w.x f10, a0
	ret
.p2align 2
.globl fp_imm1
fp_imm1:
pcrel268:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel268)
	flw f10, 0(a0)
	ret
.p2align 2
.globl and_trunc
and_trunc:
	andi a2, a0, 1
	and a0, a1, a2
	ret
.p2align 2
.globl ucmp1
ucmp1:
	addiw a1, a0, -48
	sltiu a0, a1, 10
	ret
.p2align 2
.globl ucmp2
ucmp2:
	xori a1, a0, 1
	sltiu a0, a1, 1
	ret
.p2align 2
.globl ucmp3
ucmp3:
	sltiu a0, a0, 100
	ret
.p2align 2
.globl abs
abs:
	subw a1, zero, a0
	max a0, a1, a0
	ret
.p2align 2
.globl nabs
nabs:
	subw a1, zero, a0
	min a0, a1, a0
	ret
.p2align 2
.globl absdiff
absdiff:
	subw a2, a0, a1
	subw a3, a1, a0
	max a0, a3, a2
	ret
.p2align 2
.globl mul_with_constant_0
mul_with_constant_0:
	mv a0, zero
	ret
.p2align 2
.globl mul_with_constant_1
mul_with_constant_1:
	ret
.p2align 2
.globl mul_with_constant_neg_1
mul_with_constant_neg_1:
	subw a0, zero, a0
	ret
.p2align 2
.globl mul_with_constant_100
mul_with_constant_100:
	li a1, 100
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_1000
mul_with_constant_1000:
	li a1, 1000
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_400
mul_with_constant_400:
	li a1, 400
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_1000000
mul_with_constant_1000000:
	li a1, 1000000
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_10
mul_with_constant_10:
	sh2add a1, a0, a0
	slliw a0, a1, 1
	ret
.p2align 2
.globl mul_with_constant_270
mul_with_constant_270:
	li a1, 270
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_3
mul_with_constant_3:
	sh1add a0, a0, a0
	ret
.p2align 2
.globl mul_with_constant_85
mul_with_constant_85:
	li a1, 85
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_23
mul_with_constant_23:
	li a1, 23
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_23
mul_with_constant_neg_23:
	li a1, -23
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_82
mul_with_constant_neg_82:
	li a1, -82
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_103
mul_with_constant_neg_103:
	li a1, -103
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_neg_59
mul_with_constant_neg_59:
	li a1, -59
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_17
mul_with_constant_17:
	slliw a1, a0, 4
	addw a0, a1, a0
	ret
.p2align 2
.globl mul_with_constant_128875
mul_with_constant_128875:
	li a1, 128875
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_19980130
mul_with_constant_19980130:
	li a1, 19980130
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_19971231
mul_with_constant_19971231:
	li a1, 19971231
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_8193
mul_with_constant_8193:
	slliw a1, a0, 13
	addw a0, a1, a0
	ret
.p2align 2
.globl mul_with_constant_270369
mul_with_constant_270369:
	li a1, 270369
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_33
mul_with_constant_33:
	slliw a1, a0, 5
	addw a0, a1, a0
	ret
.p2align 2
.globl mul_with_constant_16777216
mul_with_constant_16777216:
	slliw a0, a0, 24
	ret
.p2align 2
.globl mul_with_constant_1073741824
mul_with_constant_1073741824:
	slliw a0, a0, 30
	ret
.p2align 2
.globl mul_with_constant_60
mul_with_constant_60:
	slliw a1, a0, 4
	subw a2, a1, a0
	slliw a0, a2, 2
	ret
.p2align 2
.globl mul_with_constant_300
mul_with_constant_300:
	li a1, 300
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_with_constant_10000
mul_with_constant_10000:
	li a1, 10000
	mulw a0, a0, a1
	ret
.p2align 2
.globl mul_neg2
mul_neg2:
	slliw a1, a0, 1
	subw a0, zero, a1
	ret
.p2align 2
.globl andn
andn:
	fcvt.s.w f10, a1
	lui a3, 266752
	fmv.w.x f11, a3
	sltu a3, zero, a0
	feq.s a2, f10, f11
	xori a1, a2, 1
	and a0, a1, a3
	ret
.p2align 2
.globl sign
sign:
	sraiw a0, a0, 31
	ret
.p2align 2
.globl select_add_one
select_add_one:
	sltu a2, zero, a1
	addw a0, a0, a2
	ret
.p2align 2
.globl select_sub_one
select_sub_one:
	sltu a2, zero, a1
	subw a0, a0, a2
	ret
