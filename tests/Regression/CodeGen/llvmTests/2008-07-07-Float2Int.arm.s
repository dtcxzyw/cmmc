.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl fptoint
fptoint:
.p2align 4
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
.globl fptouint
fptouint:
.p2align 4
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
