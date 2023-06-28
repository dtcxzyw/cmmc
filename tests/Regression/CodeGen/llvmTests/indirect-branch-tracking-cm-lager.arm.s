.arch armv7ve
.data
.data
.align 4
.globl a
a:
	.4byte	1
.text
.syntax unified
.arm
.fpu vfpv4
.globl ext
ext:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r1, #0
	str r1, [r0, #0]
	bx lr
.globl foo
foo:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r1, #0
	str r1, [r0, #0]
	bx lr
.globl main
main:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r0, #0
	str r0, [r1, #0]
	bx lr
