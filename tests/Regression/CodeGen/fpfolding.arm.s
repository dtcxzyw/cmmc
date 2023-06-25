.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl my_fabs
my_fabs:
	vmov s0, r0
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	bge label2
	vneg.f32 s0, s0
label2:
	vmov r0, s0
	bx lr
.globl my_fmin
my_fmin:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s1, s0
	vmov r0, s1
	bx lr
.globl my_fmax
my_fmax:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s1, s0
	vmov r0, s1
	bx lr
.globl my_trunc
my_trunc:
	vmov s0, r0
	vcvt.s32.f32 s0, s0
	vcvt.f32.s32 s0, s0
	vmov r0, s0
	bx lr
