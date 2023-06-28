.arch armv7ve
.data
.section .rodata
.bss
.align 4
.globl A
A:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl test5
test5:
	uxtb r1, r1
	rsb r2, r1, #32
	lsr r0, r0, r2
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r3, [r2, #0]
	orr r0, r0, r3, lsl r1
	str r0, [r2, #0]
	bx lr
