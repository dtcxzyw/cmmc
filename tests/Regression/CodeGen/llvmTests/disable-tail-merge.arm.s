.arch armv7ve
.data
.data
.align 4
.globl g0
g0:
	.4byte	0
.align 4
.globl g1
g1:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	movw r3, #:lower16:g0
	movw r2, #:lower16:g1
	cmp r0, #0
	movt r3, #:upper16:g0
	movt r2, #:upper16:g1
	ldr r1, [r3, #0]
	bne label14
	add r0, r1, #11
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	add r0, r0, #23
	b label3
label14:
	add r0, r1, #1
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	add r0, r0, #23
label3:
	str r0, [r2, #0]
	bx lr
