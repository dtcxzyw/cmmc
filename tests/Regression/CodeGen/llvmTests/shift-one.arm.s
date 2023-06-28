.arch armv7ve
.data
.align 4
.globl x
x:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	lsl r0, r0, #1
	bx lr
