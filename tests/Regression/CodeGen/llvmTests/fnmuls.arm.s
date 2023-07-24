.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	vmul.f32 s0, s0, s1
	vneg.f32 s0, s0
	bx lr
.globl test2
test2:
.p2align 4
	vmul.f32 s0, s0, s1
	vneg.f32 s0, s0
	bx lr
