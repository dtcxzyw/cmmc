.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl fptoint
fptoint:
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
.p2align 4
.globl fptouint
fptouint:
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
