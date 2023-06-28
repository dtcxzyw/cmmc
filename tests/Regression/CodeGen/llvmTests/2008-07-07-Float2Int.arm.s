.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl fptoint
fptoint:
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
.globl fptouint
fptouint:
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bx lr
