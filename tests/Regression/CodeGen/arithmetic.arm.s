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
	mov r1, #3
	mul r0, r0, r1
	bx lr
.globl mul_to_shl
mul_to_shl:
	lsl r0, r0, #2
	bx lr
.globl mul_reg
mul_reg:
	mul r0, r0, r1
	bx lr
.globl div_imm
div_imm:
	mov r1, #3
	sdiv r0, r0, r1
	bx lr
.globl div_reg
div_reg:
	sdiv r0, r0, r1
	bx lr
.globl mod_imm
mod_imm:
	mov r1, #3
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl mod_reg
mod_reg:
	sdiv r2, r0, r1
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
