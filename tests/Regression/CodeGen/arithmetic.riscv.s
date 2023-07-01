.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1078530010
.text
.globl add_imm
add_imm:
	addiw a0, a0, 1
	ret
.globl add_large_imm
add_large_imm:
	li a1, 262144
	addw a0, a0, a1
	ret
.globl add_reg
add_reg:
	addw a0, a0, a1
	ret
.globl and_imm
and_imm:
	andi a0, a0, 1
	ret
.globl and_large_imm
and_large_imm:
	li a1, 262144
	and a0, a0, a1
	ret
.globl and_reg
and_reg:
	and a0, a0, a1
	ret
.globl or_imm
or_imm:
	ori a0, a0, 1
	ret
.globl or_large_imm
or_large_imm:
	li a1, 262144
	or a0, a0, a1
	ret
.globl or_reg
or_reg:
	or a0, a0, a1
	ret
.globl xor_imm
xor_imm:
	xori a0, a0, 1
	ret
.globl xor_large_imm
xor_large_imm:
	li a1, 262144
	xor a0, a0, a1
	ret
.globl xor_reg
xor_reg:
	xor a0, a0, a1
	ret
.globl sub_imm
sub_imm:
	addiw a0, a0, -1
	ret
.globl sub_inverted_imm
sub_inverted_imm:
	li a1, 1
	subw a0, a1, a0
	ret
.globl sub_reg
sub_reg:
	subw a0, a0, a1
	ret
.globl mul_imm
mul_imm:
	li a1, 3
	mulw a0, a0, a1
	ret
.globl mul_to_shl
mul_to_shl:
	slliw a0, a0, 2
	ret
.globl mul_reg
mul_reg:
	mulw a0, a0, a1
	ret
.globl div2
div2:
	srliw a1, a0, 31
	add a0, a0, a1
	sraiw a0, a0, 1
	ret
.globl div4
div4:
	slli a1, a0, 1
	srli a1, a1, 62
	add a0, a0, a1
	sraiw a0, a0, 2
	ret
.globl div3
div3:
	li a1, 1431655766
	mul a0, a0, a1
	srli a1, a0, 32
	srli a0, a0, 63
	add a0, a0, a1
	ret
.globl div11
div11:
	li a1, 780903145
	mul a0, a0, a1
	srai a1, a0, 33
	srli a0, a0, 63
	add a0, a0, a1
	ret
.globl div30
div30:
	li a1, -2004318071
	mul a1, a0, a1
	srli a1, a1, 32
	add a0, a1, a0
	sraiw a1, a0, 4
	srliw a0, a0, 31
	add a0, a0, a1
	ret
.globl divNeg30
divNeg30:
	li a1, 2004318071
	mul a1, a0, a1
	srli a1, a1, 32
	sub a0, a1, a0
	sraiw a1, a0, 4
	srliw a0, a0, 31
	add a0, a0, a1
	ret
.globl div_reg
div_reg:
	divw a0, a0, a1
	ret
.globl mod_imm
mod_imm:
	li a1, 1431655766
	mul a1, a0, a1
	srli a2, a1, 32
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 3
	mulw a1, a1, a2
	subw a0, a0, a1
	ret
.globl mod_reg
mod_reg:
	remw a0, a0, a1
	ret
.globl mod2
mod2:
	srliw a1, a0, 31
	add a1, a0, a1
	andi a1, a1, -2
	subw a0, a0, a1
	ret
.globl mod30
mod30:
	li a1, -2004318071
	mul a1, a0, a1
	srli a1, a1, 32
	add a1, a1, a0
	sraiw a2, a1, 4
	srliw a1, a1, 31
	add a1, a1, a2
	li a2, 30
	mulw a1, a1, a2
	subw a0, a0, a1
	ret
.globl mod_large1
mod_large1:
	li a1, 1152921497
	mul a1, a0, a1
	srai a2, a1, 60
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 1000000007
	mulw a1, a1, a2
	subw a0, a0, a1
	ret
.globl mod_large2
mod_large2:
	li a1, 1876499845
	mul a1, a0, a1
	srai a2, a1, 49
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 300000
	mulw a1, a1, a2
	subw a0, a0, a1
	ret
.globl shl_imm
shl_imm:
	slliw a0, a0, 3
	ret
.globl shl_reg
shl_reg:
	sllw a0, a0, a1
	ret
.globl ashr_imm
ashr_imm:
	sraiw a0, a0, 3
	ret
.globl ashr_reg
ashr_reg:
	sraw a0, a0, a1
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
	fadd.s f10, f10, f11
	ret
.globl fadd_imm
fadd_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fadd.s f10, f10, f11
	ret
.globl fadd_identity
fadd_identity:
	ret
.globl fsub
fsub:
	fsub.s f10, f10, f11
	ret
.globl fsub_imm
fsub_imm:
	lui a0, 260096
	fmv.w.x f11, a0
	fsub.s f10, f10, f11
	ret
.globl fmul
fmul:
	fmul.s f10, f10, f11
	ret
.globl fmul_imm
fmul_imm:
	fadd.s f10, f10, f10
	ret
.globl fdiv
fdiv:
	fdiv.s f10, f10, f11
	ret
.globl fdiv_imm
fdiv_imm:
	lui a0, 258048
	fmv.w.x f11, a0
	fmul.s f10, f10, f11
	ret
.globl fneg
fneg:
	fneg.s f10, f10
	ret
.globl s2f2s
s2f2s:
	fcvt.s.w f10, a0
	fcvt.w.s a0, f10, rtz
	ret
.globl f2s2f
f2s2f:
	fcvt.w.s a0, f10, rtz
	fcvt.s.w f10, a0
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
pcrel251:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel251)
	flw f10, 0(a0)
	ret
.globl and_trunc
and_trunc:
	andi a0, a0, 1
	and a0, a1, a0
	ret
.globl ucmp1
ucmp1:
	addiw a0, a0, -48
	sltiu a0, a0, 10
	ret
.globl ucmp2
ucmp2:
	xori a0, a0, 1
	sltiu a0, a0, 1
	ret
.globl ucmp3
ucmp3:
	sltiu a0, a0, 100
	ret
.globl abs
abs:
	subw a1, zero, a0
	max a0, a1, a0
	ret
.globl nabs
nabs:
	subw a1, zero, a0
	min a0, a1, a0
	ret
.globl absdiff
absdiff:
	subw a2, a0, a1
	subw a0, a1, a0
	max a0, a0, a2
	ret
