.arch armv7ve
.data
.data
.p2align 2
.globl j
j:
	.4byte	5
.p2align 2
.globl result
result:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	movw r0, #:lower16:j
	movt r0, #:upper16:j
	ldr r0, [r0, #0]
	cmp r0, #5
	bne label3
	movw r0, #:lower16:result
	movt r0, #:upper16:result
	mov r1, #1
	str r1, [r0, #0]
label3:
	bx lr
