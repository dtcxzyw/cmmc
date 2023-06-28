.arch armv7ve
.data
.align 4
.globl i
i:
	.4byte	15
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	bx lr
