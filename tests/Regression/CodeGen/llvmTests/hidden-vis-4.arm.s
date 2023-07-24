.arch armv7ve
.data
.data
.align 4
.globl x
x:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
.p2align 4
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	bx lr
