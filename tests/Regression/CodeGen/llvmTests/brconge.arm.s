.arch armv7ve
.data
.data
.p2align 2
.globl i
i:
	.4byte	5
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
.globl k
k:
	.4byte	5
.p2align 2
.globl result1
result1:
	.4byte	0
.p2align 2
.globl result2
result2:
	.4byte	1
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	movw r1, #:lower16:j
	movt r1, #:upper16:j
	ldr r0, [r0, #0]
	ldr r2, [r1, #0]
	movw r1, #:lower16:result1
	movt r1, #:upper16:result1
	cmp r0, r2
	bge label3
	mov r2, #1
	str r2, [r1, #0]
label3:
	movw r2, #:lower16:k
	movt r2, #:upper16:k
	ldr r2, [r2, #0]
	cmp r0, r2
	bge label5
	mov r0, #1
	str r0, [r1, #0]
label5:
	bx lr
