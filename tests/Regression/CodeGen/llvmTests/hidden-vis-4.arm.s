.arch armv7ve
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
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	bx lr
