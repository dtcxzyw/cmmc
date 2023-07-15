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
	movs r1, r0
	movw r2, #:lower16:g0
	movt r2, #:upper16:g0
	mov r0, r2
	ldr r2, [r2, #0]
	bne label12
	add r1, r2, #11
	str r1, [r0, #0]
	movw r0, #:lower16:g1
	movt r0, #:upper16:g1
	ldr r0, [r0, #0]
	add r0, r0, #23
	b label3
label12:
	add r1, r2, #1
	str r1, [r0, #0]
	movw r0, #:lower16:g1
	movt r0, #:upper16:g1
	ldr r0, [r0, #0]
	add r0, r0, #23
label3:
	movw r1, #:lower16:g1
	movt r1, #:upper16:g1
	str r0, [r1, #0]
	bx lr
