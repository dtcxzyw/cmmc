.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	movw r0, #0
	movt r0, #16448
	vmov s1, r0
	movw r0, #0
	movt r0, #16544
	vmov s2, r0
	movw r0, #0
	vmul.f32 s1, s0, s1
	movt r0, #16608
	vmul.f32 s2, s0, s2
	vadd.f32 s1, s1, s2
	vmov s2, r0
	movw r0, #0
	movt r0, #16688
	vmul.f32 s2, s0, s2
	vadd.f32 s1, s1, s2
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vadd.f32 s0, s1, s0
	bx lr
