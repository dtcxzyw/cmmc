.arch armv7ve
.data
.data
.align 4
.globl a
a:
	.4byte	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	bx lr
