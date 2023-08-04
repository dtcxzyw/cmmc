.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl fmadd1
fmadd1:
	vmul.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	bx lr
.p2align 4
.globl fmadd2
fmadd2:
	vmul.f32 s0, s0, s1
	vadd.f32 s0, s2, s0
	bx lr