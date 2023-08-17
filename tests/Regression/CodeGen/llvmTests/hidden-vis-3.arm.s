.arch armv7ve
.data
.bss
.p2align 2
.globl x
x:
	.zero	4
.p2align 2
.globl y
y:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl t
t:
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r0, r0, r1
	bx lr
