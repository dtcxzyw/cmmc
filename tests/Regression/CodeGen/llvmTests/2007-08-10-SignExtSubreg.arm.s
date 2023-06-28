.arch armv7ve
.data
.align 4
.globl X
X:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl _Z3fooi
_Z3fooi:
	movw r1, #:lower16:X
	movt r1, #:upper16:X
	str r0, [r1, #0]
	uxtb r0, r0
	sxtb r0, r0
	bx lr
