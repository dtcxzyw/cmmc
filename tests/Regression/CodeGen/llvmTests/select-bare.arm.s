.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl bare_select
bare_select:
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl bare_select_float
bare_select_float:
	cmp r0, #0
	vmov.f32 s0, s2
	vmovne.f32 s0, s1
	bx lr
