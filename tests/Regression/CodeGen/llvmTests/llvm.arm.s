.arch armv7ve
.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	0
.section .rodata
.bss
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
	mov r1, #10
	mov r0, #55
	moveq r0, r1
	movw r1, #:lower16:j
	movt r1, #:upper16:j
	str r0, [r1, #0]
	mov r0, #0
	bx lr
