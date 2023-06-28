.arch armv7ve
.data
.data
.align 4
.globl v
v:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl f
f:
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	ldr r0, [r0, #0]
	add r0, r0, #1
	bx lr
.globl f_alias
f_alias:
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	ldr r0, [r0, #0]
	add r0, r0, #1
	bx lr
