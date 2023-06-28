.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl f9188_mul365384439_shift27
f9188_mul365384439_shift27:
	movw r1, #34693
	movt r1, #24073
	udiv r0, r0, r1
	bx lr
