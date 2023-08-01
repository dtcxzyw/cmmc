.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl ilpsched
ilpsched:
	vadd.f32 s2, s2, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s3, s4, s5
	vsub.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	bx lr
