.arch armv7ve
.data
.data
.align 4
.globl x
x:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r1, #1
	str r1, [r0, #0]
	bx lr