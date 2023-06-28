.arch armv7ve
.data
.align 1
.globl x
x:
	.byte	0
.align 4
.globl y
y:
	.4byte	0
.align 4
.globl z
z:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl PR35761
PR35761:
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	ldrsb r2, [r1, #0]
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	ldr r2, [r2, #0]
	movw r3, #32767
	orr r0, r0, r3
	eor r0, r0, r2
	ldrb r1, [r1, #0]
	orr r0, r0, r1
	uxtb r0, r0
	uxtb r0, r0
	movw r1, #65535
	movt r1, #63
	and r0, r0, r1
	movw r1, #:lower16:z
	movt r1, #:upper16:z
	str r0, [r1, #0]
	bx lr
