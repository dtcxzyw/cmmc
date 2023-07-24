.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	vmul.f32 s0, s0, s1
	bx lr
.globl test2
test2:
.p2align 4
	bx lr
