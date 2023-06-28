.arch armv7ve
.data
.align 4
.globl b
b:
	.4byte	918
.align 4
.globl d
d:
	.4byte	8089
.align 4
.globl c
c:
	.4byte	0
.align 4
.globl a
a:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl PR37060
PR37060:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	ldr r1, [r1, #0]
	mvn r2, #0
	sdiv r3, r2, r1
	mls r1, r3, r1, r2
	eor r0, r0, r1
	and r0, r0, #255
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r0, [r1, #0]
	bx lr
.globl PR37667
PR37667:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
	movw r1, #:lower16:d
	movt r1, #:upper16:d
	ldr r1, [r1, #0]
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	ldr r1, [r1, #0]
	orr r0, r0, r1
	and r0, r0, #255
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r0, [r1, #0]
	bx lr
