.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl my_fabs
my_fabs:
	sub sp, sp, #12
	str r4, [sp, #8]
	vmov s0, r0
	mov r4, #0
	vmov s1, r4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	vstr s0, [sp, #4]
	bmi label12
	vmov.f32 s1, s0
	vstr s0, [sp, #0]
	b label2
label12:
	vldr s0, [sp, #4]
	vneg.f32 s1, s0
	vmov.f32 s2, s1
	vstr s1, [sp, #0]
label2:
	vldr s0, [sp, #0]
	vmov r0, s0
	ldr r4, [sp, #8]
	add sp, sp, #12
	bx lr
.globl my_fmin
my_fmin:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	vmov.f32 s2, s1
	vmovmi.f32 s2, s0
	vmov r0, s2
	bx lr
.globl my_fmax
my_fmax:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	vmov.f32 s2, s1
	vmovgt.f32 s2, s0
	vmov r0, s2
	bx lr
.globl my_trunc
my_trunc:
	vmov s0, r0
	vcvt.s32.f32 s1, s0
	vcvt.f32.s32 s2, s1
	vmov r0, s2
	bx lr
