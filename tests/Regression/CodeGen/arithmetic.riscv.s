.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530010
.text
.globl add_imm
add_imm:
.p2align 2
	addiw a0, a0, 1
	ret
.globl add_large_imm
add_large_imm:
.p2align 2
	lui a1, 64
	addw a0, a0, a1
	ret
.globl add_reg
add_reg:
.p2align 2
	addw a0, a0, a1
	ret
.globl and_imm
and_imm:
.p2align 2
	andi a0, a0, 1
	ret
.globl and_large_imm
and_large_imm:
.p2align 2
	lui a1, 64
	and a0, a0, a1
	ret
.globl and_reg
and_reg:
.p2align 2
	and a0, a0, a1
	ret
.globl or_imm
or_imm:
.p2align 2
	ori a0, a0, 1
	ret
.globl or_large_imm
or_large_imm:
.p2align 2
	lui a1, 64
	or a0, a0, a1
	ret
.globl or_reg
or_reg:
.p2align 2
	or a0, a0, a1
	ret
.globl xor_imm
xor_imm:
.p2align 2
	xori a0, a0, 1
	ret
.globl xor_large_imm
xor_large_imm:
.p2align 2
	lui a1, 64
	xor a0, a0, a1
	ret
.globl xor_reg
xor_reg:
.p2align 2
	xor a0, a0, a1
	ret
.globl sub_imm
sub_imm:
.p2align 2
	addiw a0, a0, -1
	ret
.globl sub_inverted_imm
sub_inverted_imm:
.p2align 2
	li a1, 1
	subw a0, a1, a0
	ret
.globl sub_reg
sub_reg:
.p2align 2
	subw a0, a0, a1
	ret
.globl mul_imm
mul_imm:
.p2align 2
	sh1add a0, a0, a0
	ret
.globl mul_to_shl
mul_to_shl:
.p2align 2
	slliw a0, a0, 2
	ret
.globl mul_reg
mul_reg:
.p2align 2
	mulw a0, a0, a1
	ret
.globl div2
div2:
.p2align 2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	ret
.globl div4
div4:
.p2align 2
	slli a1, a0, 1
	srli a2, a1, 62
	add a3, a0, a2
	sraiw a0, a3, 2
	ret
.globl div3
div3:
.p2align 2
	li a3, 1431655766
	mul a1, a0, a3
	srli a3, a1, 63
	srli a2, a1, 32
	add a0, a3, a2
	ret
.globl div11
div11:
.p2align 2
	li a3, 780903145
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 33
	add a0, a3, a2
	ret
.globl div30
div30:
.p2align 2
	li a1, -2004318071
	mul a3, a0, a1
	srli a2, a3, 32
	add a0, a2, a0
	srliw a2, a0, 31
	sraiw a1, a0, 4
	add a0, a2, a1
	ret
.globl divNeg30
divNeg30:
.p2align 2
	li a1, 2004318071
	mul a3, a0, a1
	srli a2, a3, 32
	sub a0, a2, a0
	srliw a2, a0, 31
	sraiw a1, a0, 4
	add a0, a2, a1
	ret
.globl div_shl
div_shl:
.p2align 2
	slli a2, a0, 1
	li a3, 64
	subw a4, a3, a1
	srl a2, a2, a4
	add a3, a0, a2
	sraw a0, a3, a1
	ret
.globl div_reg
div_reg:
.p2align 2
	divw a0, a0, a1
	ret
.globl mod_imm
mod_imm:
.p2align 2
	li a3, 1431655766
	mul a1, a0, a3
	srli a3, a1, 63
	srli a2, a1, 32
	add a1, a3, a2
	sh1add a2, a1, a1
	subw a0, a0, a2
	ret
.globl mod_reg
mod_reg:
.p2align 2
	remw a0, a0, a1
	ret
.globl mod2
mod2:
.p2align 2
	srliw a1, a0, 31
	add a2, a0, a1
	andi a3, a2, -2
	subw a0, a0, a3
	ret
.globl mod30
mod30:
.p2align 2
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
.globl mod_large1
mod_large1:
.p2align 2
	li a3, 1152921497
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw a0, a0, a3
	ret
.globl mod_large2
mod_large2:
.p2align 2
	li a3, 1876499845
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 49
	add a1, a3, a2
	li a2, 300000
	mulw a3, a1, a2
	subw a0, a0, a3
	ret
.globl shl_imm
shl_imm:
.p2align 2
	slliw a0, a0, 3
	ret
.globl shl_reg
shl_reg:
.p2align 2
	sllw a0, a0, a1
	ret
.globl ashr_imm
ashr_imm:
.p2align 2
	sraiw a0, a0, 3
	ret
.globl ashr_reg
ashr_reg:
.p2align 2
	sraw a0, a0, a1
	ret
.globl s2f
s2f:
.p2align 2
	fcvt.s.w f10, a0
	ret
.globl f2s
f2s:
.p2align 2
	fcvt.w.s a0, f10, rtz
	ret
.globl fadd
fadd:
.p2align 2
	fadd.s f10, f10, f11
	ret
.globl fadd_imm
fadd_imm:
.p2align 2
	lui a0, 260096
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	ret
.globl fadd_identity
fadd_identity:
.p2align 2
	ret
.globl fsub
fsub:
.p2align 2
	fsub.s f10, f10, f11
	ret
.globl fsub_imm
fsub_imm:
.p2align 2
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
	ret
.globl fmul
fmul:
.p2align 2
	fmul.s f10, f10, f11
	ret
.globl fmul_imm
fmul_imm:
.p2align 2
	fadd.s f10, f10, f10
	ret
.globl fdiv
fdiv:
.p2align 2
	fdiv.s f10, f10, f11
	ret
.globl fdiv_imm
fdiv_imm:
.p2align 2
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	ret
.globl fneg
fneg:
.p2align 2
	fneg.s f10, f10
	ret
.globl s2f2s
s2f2s:
.p2align 2
	fcvt.s.w f10, a0
	fcvt.w.s a0, f10, rtz
	ret
.globl f2s2f
f2s2f:
.p2align 2
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
	ret
.globl zero
zero:
.p2align 2
	mv a0, zero
	ret
.globl imm
imm:
.p2align 2
	li a0, 1
	ret
.globl large_imm0
large_imm0:
.p2align 2
	lui a0, 256
	ret
.globl large_imm1
large_imm1:
.p2align 2
	li a0, 19260817
	ret
.globl fp_zero
fp_zero:
.p2align 2
	fmv.w.x f10, zero
	ret
.globl fp_imm0
fp_imm0:
.p2align 2
	lui a0, 266240
	fmv.w.x f10, a0
	ret
.globl fp_imm1
fp_imm1:
.p2align 2
pcrel268:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel268)
	flw f10, 0(a1)
	ret
.globl and_trunc
and_trunc:
.p2align 2
	andi a2, a0, 1
	and a0, a1, a2
	ret
.globl ucmp1
ucmp1:
.p2align 2
	addiw a1, a0, -48
	sltiu a0, a1, 10
	ret
.globl ucmp2
ucmp2:
.p2align 2
	xori a1, a0, 1
	sltiu a0, a1, 1
	ret
.globl ucmp3
ucmp3:
.p2align 2
	sltiu a0, a0, 100
	ret
.globl abs
abs:
.p2align 2
	subw a1, zero, a0
	max a0, a1, a0
	ret
.globl nabs
nabs:
.p2align 2
	subw a1, zero, a0
	min a0, a1, a0
	ret
.globl absdiff
absdiff:
.p2align 2
	subw a2, a0, a1
	subw a3, a1, a0
	max a0, a3, a2
	ret
.globl mul_with_constant_0
mul_with_constant_0:
.p2align 2
	mv a0, zero
	ret
.globl mul_with_constant_1
mul_with_constant_1:
.p2align 2
	ret
.globl mul_with_constant_neg_1
mul_with_constant_neg_1:
.p2align 2
	subw a0, zero, a0
	ret
.globl mul_with_constant_100
mul_with_constant_100:
.p2align 2
	li a1, 100
	mulw a0, a0, a1
	ret
.globl mul_with_constant_1000
mul_with_constant_1000:
.p2align 2
	li a1, 1000
	mulw a0, a0, a1
	ret
.globl mul_with_constant_400
mul_with_constant_400:
.p2align 2
	li a1, 400
	mulw a0, a0, a1
	ret
.globl mul_with_constant_1000000
mul_with_constant_1000000:
.p2align 2
	li a1, 1000000
	mulw a0, a0, a1
	ret
.globl mul_with_constant_10
mul_with_constant_10:
.p2align 2
	sh2add a1, a0, a0
	slliw a0, a1, 1
	ret
.globl mul_with_constant_270
mul_with_constant_270:
.p2align 2
	li a1, 270
	mulw a0, a0, a1
	ret
.globl mul_with_constant_3
mul_with_constant_3:
.p2align 2
	sh1add a0, a0, a0
	ret
.globl mul_with_constant_85
mul_with_constant_85:
.p2align 2
	li a1, 85
	mulw a0, a0, a1
	ret
.globl mul_with_constant_23
mul_with_constant_23:
.p2align 2
	li a1, 23
	mulw a0, a0, a1
	ret
.globl mul_with_constant_neg_23
mul_with_constant_neg_23:
.p2align 2
	li a1, -23
	mulw a0, a0, a1
	ret
.globl mul_with_constant_neg_82
mul_with_constant_neg_82:
.p2align 2
	li a1, -82
	mulw a0, a0, a1
	ret
.globl mul_with_constant_neg_103
mul_with_constant_neg_103:
.p2align 2
	li a1, -103
	mulw a0, a0, a1
	ret
.globl mul_with_constant_neg_59
mul_with_constant_neg_59:
.p2align 2
	li a1, -59
	mulw a0, a0, a1
	ret
.globl mul_with_constant_17
mul_with_constant_17:
.p2align 2
	slliw a1, a0, 4
	addw a0, a1, a0
	ret
.globl mul_with_constant_128875
mul_with_constant_128875:
.p2align 2
	li a1, 128875
	mulw a0, a0, a1
	ret
.globl mul_with_constant_19980130
mul_with_constant_19980130:
.p2align 2
	li a1, 19980130
	mulw a0, a0, a1
	ret
.globl mul_with_constant_19971231
mul_with_constant_19971231:
.p2align 2
	li a1, 19971231
	mulw a0, a0, a1
	ret
.globl mul_with_constant_8193
mul_with_constant_8193:
.p2align 2
	slliw a1, a0, 13
	addw a0, a1, a0
	ret
.globl mul_with_constant_270369
mul_with_constant_270369:
.p2align 2
	li a1, 270369
	mulw a0, a0, a1
	ret
.globl mul_with_constant_33
mul_with_constant_33:
.p2align 2
	slliw a1, a0, 5
	addw a0, a1, a0
	ret
.globl mul_with_constant_16777216
mul_with_constant_16777216:
.p2align 2
	slliw a0, a0, 24
	ret
.globl mul_with_constant_1073741824
mul_with_constant_1073741824:
.p2align 2
	slliw a0, a0, 30
	ret
.globl mul_with_constant_60
mul_with_constant_60:
.p2align 2
	slliw a1, a0, 4
	subw a2, a1, a0
	slliw a0, a2, 2
	ret
.globl mul_with_constant_300
mul_with_constant_300:
.p2align 2
	li a1, 300
	mulw a0, a0, a1
	ret
.globl mul_with_constant_10000
mul_with_constant_10000:
.p2align 2
	li a1, 10000
	mulw a0, a0, a1
	ret
.globl mul_neg2
mul_neg2:
.p2align 2
	slliw a1, a0, 1
	subw a0, zero, a1
	ret
.globl andn
andn:
.p2align 2
	fcvt.s.w f10, a1
	lui a2, 266752
	fmv.w.x f11, a2
	sltu a2, zero, a0
	feq.s a3, f10, f11
	xori a1, a3, 1
	and a0, a1, a2
	ret
.globl sign
sign:
.p2align 2
	sraiw a0, a0, 31
	ret
.globl select_add_one
select_add_one:
.p2align 2
	sltu a2, zero, a1
	addw a0, a0, a2
	ret
.globl select_sub_one
select_sub_one:
.p2align 2
	sltu a2, zero, a1
	subw a0, a0, a2
	ret
