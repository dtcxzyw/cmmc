.arch armv7ve
.data
.align 4
.globl Y
Y:
	.4byte	0
.align 4
.globl X
X:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl fn1
fn1:
	movw r0, #:lower16:Y
	movt r0, #:upper16:Y
	ldr r1, [r0, #0]
	movw r0, #:lower16:X
	movt r0, #:upper16:X
	ldr r2, [r0, #0]
	orr r1, r2, r1, lsl #3
	str r1, [r0, #0]
	bx lr
.globl fn2
fn2:
	orr r0, r0, r1, lsl #3
	bx lr
