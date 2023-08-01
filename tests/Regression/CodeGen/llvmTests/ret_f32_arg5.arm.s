.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_f32_arg5
test_f32_arg5:
	vmov.f32 s0, s4
	bx lr
