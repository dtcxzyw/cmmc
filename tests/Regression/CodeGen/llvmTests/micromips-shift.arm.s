.arch armv7ve
.data
.data
.p2align 2
.globl a
a:
	.4byte	10
.p2align 2
.globl b
b:
	.4byte	0
.p2align 2
.globl c
c:
	.4byte	10
.p2align 2
.globl d
d:
	.4byte	0
.p2align 2
.globl i
i:
	.4byte	10654
.p2align 2
.globl j
j:
	.4byte	0
.p2align 2
.globl m
m:
	.4byte	10
.p2align 2
.globl n
n:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl shift_left
shift_left:
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r0, [r0, #0]
	lsl r0, r0, #4
	str r0, [r1, #0]
	movw r1, #:lower16:d
	movt r1, #:upper16:d
	movw r0, #:lower16:c
	movt r0, #:upper16:c
	ldr r0, [r0, #0]
	lsl r0, r0, #10
	str r0, [r1, #0]
	mov r0, #0
	bx lr
.p2align 4
.globl shift_right
shift_right:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	movw r1, #:lower16:j
	movt r1, #:upper16:j
	ldr r0, [r0, #0]
	lsr r0, r0, #4
	str r0, [r1, #0]
	movw r1, #:lower16:n
	movt r1, #:upper16:n
	movw r0, #:lower16:m
	movt r0, #:upper16:m
	ldr r0, [r0, #0]
	lsr r0, r0, #10
	str r0, [r1, #0]
	mov r0, #0
	bx lr
