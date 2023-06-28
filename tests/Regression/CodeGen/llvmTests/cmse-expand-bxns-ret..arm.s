.arch armv7ve
.data
.align 4
.globl counter
counter:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	movw r0, #:lower16:counter
	movt r0, #:upper16:counter
	mov r1, #5
	str r1, [r0, #0]
	bx lr
