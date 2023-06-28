.arch armv7ve
.data
.align 4
.globl x
x:
	.zero	4
.align 4
.globl y
y:
	.zero	4
.align 4
.globl z
z:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r1, #1
	str r1, [r0, #0]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	movw r1, #2148
	str r1, [r0, #0]
	movw r0, #:lower16:z
	movt r0, #:upper16:z
	movw r1, #33332
	str r1, [r0, #0]
	mov r0, #0
	bx lr
