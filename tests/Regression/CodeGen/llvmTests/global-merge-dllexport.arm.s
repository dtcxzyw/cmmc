.arch armv7ve
.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl y
y:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
.p2align 4
	movw r2, #:lower16:x
	movt r2, #:upper16:x
	str r0, [r2, #0]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	str r1, [r0, #0]
	bx lr
