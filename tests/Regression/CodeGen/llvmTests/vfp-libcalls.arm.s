.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_call
test_call:
	vadd.f32 s0, s0, s1
	bx lr
