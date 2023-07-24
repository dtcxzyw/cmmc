.arch armv7ve
.data
.data
.align 4
.globl a
a:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl get_a
get_a:
.p2align 4
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	bx lr
