.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	vadd.f32 s0, s0, s1
	bx lr
