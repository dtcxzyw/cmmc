.arch armv7ve
.data
.data
.p2align 2
.globl i
i:
	.4byte	15
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f
f:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	bx lr
