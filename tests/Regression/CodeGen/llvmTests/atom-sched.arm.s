.arch armv7ve
.data
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.4byte	0
.align 4
.globl c
c:
	.4byte	0
.align 4
.globl d
d:
	.4byte	0
.align 4
.globl e
e:
	.4byte	0
.align 4
.globl f
f:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl func
func:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r0, [r0, #0]
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	ldr r1, [r1, #0]
	mul r0, r0, r1
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r0, [r1, #0]
	movw r0, #:lower16:e
	movt r0, #:upper16:e
	ldr r0, [r0, #0]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	mul r0, r0, r1
	movw r1, #:lower16:d
	movt r1, #:upper16:d
	str r0, [r1, #0]
	bx lr
