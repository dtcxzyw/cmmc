.arch armv7ve
.data
.align 4
.globl baz
baz:
	.4byte	4
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar
bar:
	movw r0, #:lower16:baz
	movt r0, #:upper16:baz
	ldr r0, [r0, #0]
	bx lr
.globl foo
foo:
	bx lr
