.arch armv7ve
.data
.data
.p2align 2
.globl x
x:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t
t:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	bx lr
