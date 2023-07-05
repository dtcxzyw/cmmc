.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl add_imm
add_imm:
	add r0, r0, #1
	bx lr
.globl add_large_imm
add_large_imm:
	add r0, r0, #262144
	bx lr
.globl add_reg
add_reg:
	add r0, r0, r1
	bx lr
.globl and_imm
and_imm:
	and r0, r0, #1
	bx lr
.globl and_large_imm
and_large_imm:
	and r0, r0, #262144
	bx lr
.globl and_reg
and_reg:
	and r0, r0, r1
	bx lr
.globl or_imm
or_imm:
	orr r0, r0, #1
	bx lr
.globl or_large_imm
or_large_imm:
	orr r0, r0, #262144
	bx lr
.globl or_reg
or_reg:
	orr r0, r0, r1
	bx lr
.globl xor_imm
xor_imm:
	eor r0, r0, #1
	bx lr
.globl xor_large_imm
xor_large_imm:
	eor r0, r0, #262144
	bx lr
.globl xor_reg
xor_reg:
	eor r0, r0, r1
	bx lr
.globl sub_imm
sub_imm:
	sub r0, r0, #1
	bx lr
.globl sub_inverted_imm
sub_inverted_imm:
	rsb r0, r0, #1
	bx lr
.globl sub_reg
sub_reg:
	sub r0, r0, r1
	bx lr
.globl mul_imm
mul_imm:
	add r0, r0, r0, lsl #1
	bx lr
.globl mul_to_shl
mul_to_shl:
	lsl r0, r0, #2
	bx lr
.globl mul_reg
mul_reg:
	mul r0, r0, r1
	bx lr
.globl div2
div2:
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bx lr
.globl div4
div4:
	asr r1, r0, #31
	add r0, r0, r1, lsr #30
	asr r0, r0, #2
	bx lr
.globl div3
div3:
	movw r1, #21846
	movt r1, #21845
	smmul r0, r0, r1
	add r0, r0, r0, lsr #31
	bx lr
.globl div11
div11:
	movw r1, #41705
	movt r1, #11915
	smmul r0, r0, r1
	asr r1, r0, #1
	add r0, r1, r0, lsr #31
	bx lr
.globl div30
div30:
	movw r1, #34953
	movt r1, #34952
	smmla r0, r0, r1, r0
	asr r1, r0, #4
	add r0, r1, r0, lsr #31
	bx lr
.globl divNeg30
divNeg30:
	movw r1, #30583
	movt r1, #30583
	smmul r1, r0, r1
	sub r0, r1, r0
	asr r1, r0, #4
	add r0, r1, r0, lsr #31
	bx lr
.globl div_reg
div_reg:
	sdiv r0, r0, r1
	bx lr
.globl mod_imm
mod_imm:
	mov r1, #3
	movw r2, #21846
	movt r2, #21845
	smmul r2, r0, r2
	add r2, r2, r2, lsr #31
	mls r0, r2, r1, r0
	bx lr
.globl mod_reg
mod_reg:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl mod2
mod2:
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	sub r0, r0, r1, lsl #1
	bx lr
.globl mod30
mod30:
	mov r1, #30
	movw r2, #34953
	movt r2, #34952
	smmla r2, r0, r2, r0
	asr r3, r2, #4
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	bx lr
.globl mod_large1
mod_large1:
	movw r1, #51719
	movw r2, #12185
	movt r1, #15258
	movt r2, #17592
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	bx lr
.globl mod_large2
mod_large2:
	movw r1, #37856
	movw r2, #7557
	movt r1, #4
	movt r2, #28633
	smmul r2, r0, r2
	asr r3, r2, #17
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	bx lr
.globl shl_imm
shl_imm:
	lsl r0, r0, #3
	bx lr
.globl shl_reg
shl_reg:
	lsl r0, r0, r1
	bx lr
.globl ashr_imm
ashr_imm:
	asr r0, r0, #3
	bx lr
.globl ashr_reg
ashr_reg:
	asr r0, r0, r1
	bx lr
.globl s2f
s2f:
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	bx lr
.globl f2s
f2s:
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
.globl fadd
fadd:
	vadd.f32 s0, s0, s1
	bx lr
.globl fadd_imm
fadd_imm:
	mov r0, #1065353216
	vmov s1, r0
	vadd.f32 s0, s0, s1
	bx lr
.globl fadd_identity
fadd_identity:
	bx lr
.globl fsub
fsub:
	vsub.f32 s0, s0, s1
	bx lr
.globl fsub_imm
fsub_imm:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
	bx lr
.globl fmul
fmul:
	vmul.f32 s0, s0, s1
	bx lr
.globl fmul_imm
fmul_imm:
	vadd.f32 s0, s0, s0
	bx lr
.globl fdiv
fdiv:
	vdiv.f32 s0, s0, s1
	bx lr
.globl fdiv_imm
fdiv_imm:
	mov r0, #1056964608
	vmov s1, r0
	vmul.f32 s0, s0, s1
	bx lr
.globl fneg
fneg:
	vneg.f32 s0, s0
	bx lr
.globl s2f2s
s2f2s:
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
.globl f2s2f
f2s2f:
	vcvt.s32.f32 s0, s0
	vcvt.f32.s32 s0, s0
	bx lr
.globl zero
zero:
	mov r0, #0
	bx lr
.globl imm
imm:
	mov r0, #1
	bx lr
.globl large_imm0
large_imm0:
	mov r0, #1048576
	bx lr
.globl large_imm1
large_imm1:
	movw r0, #58769
	movt r0, #293
	bx lr
.globl fp_zero
fp_zero:
	mov r0, #0
	vmov s0, r0
	bx lr
.globl fp_imm0
fp_imm0:
	mov r0, #1090519040
	vmov s0, r0
	bx lr
.globl fp_imm1
fp_imm1:
	movw r0, #4058
	movt r0, #16457
	vmov s0, r0
	bx lr
.globl and_trunc
and_trunc:
	and r0, r0, #1
	and r0, r1, r0
	bx lr
.globl ucmp1
ucmp1:
	sub r0, r0, #48
	cmp r0, #10
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl ucmp2
ucmp2:
	sub r0, r0, #1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl ucmp3
ucmp3:
	cmp r0, #100
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl abs
abs:
	cmp r0, #0
	rsbmi r0, r0, #0
	bx lr
.globl nabs
nabs:
	cmp r0, #0
	rsbpl r0, r0, #0
	bx lr
.globl absdiff
absdiff:
	subs r0, r0, r1
	rsbmi r0, r0, #0
	bx lr
.globl mul_with_constant_0
mul_with_constant_0:
	mov r0, #0
	bx lr
.globl mul_with_constant_1
mul_with_constant_1:
	bx lr
.globl mul_with_constant_neg_1
mul_with_constant_neg_1:
	rsb r0, r0, #0
	bx lr
.globl mul_with_constant_100
mul_with_constant_100:
	add r0, r0, r0, lsl #2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #2
	bx lr
.globl mul_with_constant_1000
mul_with_constant_1000:
	rsb r1, r0, r0, lsl #6
	rsb r0, r0, r1, lsl #1
	lsl r0, r0, #3
	bx lr
.globl mul_with_constant_400
mul_with_constant_400:
	add r0, r0, r0, lsl #2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	bx lr
.globl mul_with_constant_1000000
mul_with_constant_1000000:
	rsb r1, r0, r0, lsl #5
	rsb r1, r1, r1, lsl #6
	add r0, r0, r1, lsl #3
	lsl r0, r0, #6
	bx lr
.globl mul_with_constant_10
mul_with_constant_10:
	add r0, r0, r0, lsl #2
	lsl r0, r0, #1
	bx lr
.globl mul_with_constant_270
mul_with_constant_270:
	add r0, r0, r0, lsl #3
	rsb r0, r0, r0, lsl #4
	lsl r0, r0, #1
	bx lr
.globl mul_with_constant_3
mul_with_constant_3:
	add r0, r0, r0, lsl #1
	bx lr
.globl mul_with_constant_85
mul_with_constant_85:
	add r0, r0, r0, lsl #2
	add r0, r0, r0, lsl #4
	bx lr
.globl mul_with_constant_23
mul_with_constant_23:
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #3
	bx lr
.globl mul_with_constant_neg_23
mul_with_constant_neg_23:
	add r1, r0, r0, lsl #1
	sub r0, r0, r1, lsl #3
	bx lr
.globl mul_with_constant_neg_82
mul_with_constant_neg_82:
	add r1, r0, r0, lsl #2
	add r0, r0, r1, lsl #3
	lsl r0, r0, #1
	rsb r0, r0, #0
	bx lr
.globl mul_with_constant_neg_103
mul_with_constant_neg_103:
	rsb r1, r0, r0, lsl #3
	rsb r1, r0, r1, lsl #1
	sub r0, r0, r1, lsl #3
	bx lr
.globl mul_with_constant_neg_59
mul_with_constant_neg_59:
	rsb r1, r0, r0, lsl #4
	sub r0, r0, r1, lsl #2
	bx lr
.globl mul_with_constant_17
mul_with_constant_17:
	add r0, r0, r0, lsl #4
	bx lr
.globl mul_with_constant_128875
mul_with_constant_128875:
	movw r1, #63339
	movt r1, #1
	mul r0, r0, r1
	bx lr
.globl mul_with_constant_19980130
mul_with_constant_19980130:
	movw r1, #57186
	movt r1, #304
	mul r0, r0, r1
	bx lr
.globl mul_with_constant_19971231
mul_with_constant_19971231:
	movw r1, #48287
	movt r1, #304
	mul r0, r0, r1
	bx lr
.globl mul_with_constant_8193
mul_with_constant_8193:
	add r0, r0, r0, lsl #13
	bx lr
.globl mul_with_constant_270369
mul_with_constant_270369:
	add r0, r0, r0, lsl #5
	add r0, r0, r0, lsl #13
	bx lr
.globl mul_with_constant_33
mul_with_constant_33:
	add r0, r0, r0, lsl #5
	bx lr
.globl mul_with_constant_16777216
mul_with_constant_16777216:
	lsl r0, r0, #24
	bx lr
.globl mul_with_constant_1073741824
mul_with_constant_1073741824:
	lsl r0, r0, #30
	bx lr
.globl mul_with_constant_60
mul_with_constant_60:
	rsb r0, r0, r0, lsl #4
	lsl r0, r0, #2
	bx lr
.globl mul_with_constant_300
mul_with_constant_300:
	add r0, r0, r0, lsl #2
	rsb r0, r0, r0, lsl #4
	lsl r0, r0, #2
	bx lr
.globl mul_with_constant_10000
mul_with_constant_10000:
	rsb r1, r0, r0, lsl #6
	rsb r0, r0, r1, lsl #1
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	bx lr
.globl mul_neg2
mul_neg2:
	lsl r0, r0, #1
	rsb r0, r0, #0
	bx lr
.globl andn
andn:
	vmov s0, r1
	movw r1, #0
	movt r1, #16672
	vmov s1, r1
	mov r1, #0
	vcvt.f32.s32 s0, s0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movweq r1, #1
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bic r0, r0, r1
	bx lr
