.arch armv7ve
.data
.data
.align 4
.globl baz
baz:
	.4byte	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl bar
bar:
	movw r0, #:lower16:baz
	movt r0, #:upper16:baz
	ldr r0, [r0, #0]
	bx lr
.p2align 4
.globl foo
foo:
	bx lr
