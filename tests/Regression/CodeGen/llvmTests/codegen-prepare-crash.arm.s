.arch armv7ve
.data
.section .rodata
.bss
.align 4
.globl g
g:
	.zero	40
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	add r1, r0, #4
	movw r2, #:lower16:g
	movt r2, #:upper16:g
	str r0, [r2, r1, lsl #2]
	bx lr
