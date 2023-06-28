.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl g
g:
	add r2, r0, r1, lsl #1
	mul r0, r0, r2
	mla r0, r1, r1, r0
	bx lr
