.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bare_select
bare_select:
.p2align 4
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl bare_select_float
bare_select_float:
.p2align 4
	cmp r0, #0
	vmovne.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
