.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl add_imm
add_imm:
	str r4 [#0, sp]
	add r4, r0, #1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl add_large_imm
add_large_imm:
	str r4 [#0, sp]
	add r4, r0, #262144
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl add_reg
add_reg:
	str r4 [#0, sp]
	add r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl and_imm
and_imm:
	str r4 [#0, sp]
	and r4, r0, #1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl and_large_imm
and_large_imm:
	str r4 [#0, sp]
	str r5 [#4, sp]
	mov r4, #262144
	and r5, r0, r4
	mov r0, r5
	ldr r5, [#4, sp]
	ldr r4, [#0, sp]
	bx lr
.globl and_reg
and_reg:
	str r4 [#0, sp]
	and r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl or_imm
or_imm:
	str r4 [#0, sp]
	orr r4, r0, #1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl or_large_imm
or_large_imm:
	str r4 [#0, sp]
	str r5 [#4, sp]
	mov r4, #262144
	orr r5, r0, r4
	mov r0, r5
	ldr r5, [#4, sp]
	ldr r4, [#0, sp]
	bx lr
.globl or_reg
or_reg:
	str r4 [#0, sp]
	orr r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl xor_imm
xor_imm:
	str r4 [#0, sp]
	eor r4, r0, #1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl xor_large_imm
xor_large_imm:
	str r4 [#0, sp]
	str r5 [#4, sp]
	mov r4, #262144
	eor r5, r0, r4
	mov r0, r5
	ldr r5, [#4, sp]
	ldr r4, [#0, sp]
	bx lr
.globl xor_reg
xor_reg:
	str r4 [#0, sp]
	eor r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl sub_imm
sub_imm:
	str r4 [#0, sp]
	sub r4, r0, #1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl sub_reg
sub_reg:
	str r4 [#0, sp]
	sub r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl mul_imm
mul_imm:
	str r4 [#0, sp]
	str r5 [#4, sp]
	mov r4, #3
	mul r5, r0, r4
	mov r0, r5
	ldr r5, [#4, sp]
	ldr r4, [#0, sp]
	bx lr
.globl mul_reg
mul_reg:
	str r4 [#0, sp]
	mul r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl div_imm
div_imm:
	str r4 [#0, sp]
	str r5 [#4, sp]
	mov r4, #3
	sdiv r5, r0, r4
	mov r0, r5
	ldr r5, [#4, sp]
	ldr r4, [#0, sp]
	bx lr
.globl div_reg
div_reg:
	str r4 [#0, sp]
	sdiv r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl mod_imm
mod_imm:
	mov r1, #3
	bl __aeabi_idivmod
	mov r0, r1
	bx lr
.globl mod_reg
mod_reg:
	bl __aeabi_idivmod
	mov r0, r1
	bx lr
.globl shl_imm
shl_imm:
	str r4 [#0, sp]
	lsl r4, r0, #3
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl shl_reg
shl_reg:
	str r4 [#0, sp]
	lsl r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl ashr_imm
ashr_imm:
	str r4 [#0, sp]
	asr r4, r0, #3
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl ashr_reg
ashr_reg:
	str r4 [#0, sp]
	asr r4, r0, r1
	mov r0, r4
	ldr r4, [#0, sp]
	bx lr
.globl s2f
s2f:
	vstr s16 [#4, sp]
	vstr s17 [#8, sp]
	vldr s16, [#0, sp]
	vmov r0, s16
	vcvt.f32.s32 s17, r0
	vmov.f32 s0, s17
	vldr s17, [#8, sp]
	vldr s16, [#4, sp]
	bx lr
.globl f2s
f2s:
	vstr s16 [#0, sp]
	str r4 [#4, sp]
	vcvt.s32.f32 s16, s0
	vmov r4, s16
	mov r0, r4
	ldr r4, [#4, sp]
	vldr s16, [#0, sp]
	bx lr
.globl fadd
fadd:
	vstr s16 [#0, sp]
	vadd.f32 s16, s0, s2
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
.globl fadd_imm
fadd_imm:
	vstr s16 [#0, sp]
	vstr s17 [#4, sp]
	vmov.f32 s16, #1
	vadd.f32 s17, s0, s16
	vmov.f32 s0, s17
	vldr s17, [#4, sp]
	vldr s16, [#0, sp]
	bx lr
.globl fadd_identity
fadd_identity:
	bx lr
.globl fsub
fsub:
	vstr s16 [#0, sp]
	vsub.f32 s16, s0, s2
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
.globl fsub_imm
fsub_imm:
	vstr s16 [#0, sp]
	vstr s17 [#4, sp]
	vmov.f32 s16, #1
	vsub.f32 s17, s0, s16
	vmov.f32 s0, s17
	vldr s17, [#4, sp]
	vldr s16, [#0, sp]
	bx lr
.globl fmul
fmul:
	vstr s16 [#0, sp]
	vmul.f32 s16, s0, s2
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
.globl fmul_imm
fmul_imm:
	vstr s16 [#0, sp]
	vadd.f32 s16, s0, s0
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
.globl fdiv
fdiv:
	vstr s16 [#0, sp]
	vdiv.f32 s16, s0, s2
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
.globl fdiv_imm
fdiv_imm:
	vstr s16 [#0, sp]
	vstr s17 [#4, sp]
	vmov.f32 s16, #0.5
	vmul.f32 s17, s0, s16
	vmov.f32 s0, s17
	vldr s17, [#4, sp]
	vldr s16, [#0, sp]
	bx lr
.globl fneg
fneg:
	vstr s16 [#0, sp]
	vneg.f32 s16, s0
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
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
	movt r0, #293 @ Implicit Use: r0
	bx lr
.globl fp_zero
fp_zero:
	vstr s16 [#0, sp]
	vmov.f32 s16, #0
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
.globl fp_imm0
fp_imm0:
	vstr s16 [#0, sp]
	vmov.f32 s16, #8
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
.globl fp_imm1
fp_imm1:
	vstr s16 [#0, sp]
	vmov.f32 s16, #3.14159
	vmov.f32 s0, s16
	vldr s16, [#0, sp]
	bx lr
