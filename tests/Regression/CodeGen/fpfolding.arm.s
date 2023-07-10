.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl my_fabs
my_fabs:
	vabs.f32 s0, s0
	bx lr
.globl my_fmin
my_fmin:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl my_fmax
my_fmax:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl my_trunc
my_trunc:
	vcvt.s32.f32 s0, s0
	vcvt.f32.s32 s0, s0
	bx lr
