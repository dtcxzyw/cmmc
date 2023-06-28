.arch armv7ve
.data
.align 4
.globl bar
bar:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	movw r0, #:lower16:bar
	movt r0, #:upper16:bar
	ldr r0, [r0, #0]
	bx lr
