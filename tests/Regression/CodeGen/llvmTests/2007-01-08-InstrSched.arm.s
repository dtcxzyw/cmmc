.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	movw r0, #0
	movt r0, #16448
	vmov s1, r0
	vmul.f32 s1, s0, s1
	movw r0, #0
	movt r0, #16544
	vmov s2, r0
	vmul.f32 s2, s0, s2
	vadd.f32 s1, s1, s2
	movw r0, #0
	movt r0, #16608
	vmov s2, r0
	vmul.f32 s2, s0, s2
	vadd.f32 s1, s1, s2
	movw r0, #0
	movt r0, #16688
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vadd.f32 s0, s1, s0
	bx lr
