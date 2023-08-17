.arch armv7ve
.data
.data
.p2align 2
.globl x
x:
	.4byte	0
.p2align 2
.globl a
a:
	.4byte	0
.p2align 2
.globl b
b:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	ldr r0, [r1, #0]
	cmp r0, #0
	bne label10
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	b label3
label10:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
label3:
	str r0, [r1, #0]
	bx lr
