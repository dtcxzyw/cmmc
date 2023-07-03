.arch armv7ve
.data
.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	cmp r0, #0
	bne label3
	movw r0, #:lower16:j
	mov r1, #10
	movt r0, #:upper16:j
	str r1, [r0, #0]
label3:
	mov r0, #0
	bx lr
