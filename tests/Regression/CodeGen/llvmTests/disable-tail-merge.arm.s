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
.globl test1
test1:
.p2align 4
	movs r1, r0
	movw r2, #:lower16:g1
	movw r0, #:lower16:g0
	movt r2, #:upper16:g1
	movt r0, #:upper16:g0
	ldr r3, [r0, #0]
	bne label14
	add r1, r3, #11
	str r1, [r0, #0]
	ldr r0, [r2, #0]
	add r0, r0, #23
	b label3
label14:
	add r1, r3, #1
	str r1, [r0, #0]
	ldr r0, [r2, #0]
	add r0, r0, #23
label3:
	str r0, [r2, #0]
	bx lr
