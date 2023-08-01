.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl F
F:
	movw r0, #39322
	movt r0, #16521
	vmov s1, r0
	movw r0, #13107
	movt r0, #16515
	vadd.f32 s0, s0, s1
	vmov s1, r0
	vadd.f32 s0, s0, s1
	bx lr
