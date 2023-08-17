.arch armv7ve
.data
.data
.p2align 2
.globl a
a:
	.4byte	0
.p2align 2
.globl b
b:
	.4byte	0
.p2align 2
.globl c
c:
	.4byte	0
.p2align 2
.globl d
d:
	.4byte	0
.p2align 2
.globl e
e:
	.4byte	0
.p2align 2
.globl f
f:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl func
func:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mul r0, r0, r1
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r0, [r1, #0]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	movw r0, #:lower16:e
	movt r0, #:upper16:e
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mul r0, r0, r1
	movw r1, #:lower16:d
	movt r1, #:upper16:d
	str r0, [r1, #0]
	bx lr
