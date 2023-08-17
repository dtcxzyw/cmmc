.arch armv7ve
.data
.data
.p2align 2
.globl X
X:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl _Z3fooi
_Z3fooi:
	uxtb r1, r0
	movw r2, #:lower16:X
	movt r2, #:upper16:X
	sxtb r1, r1
	str r0, [r2, #0]
	mov r0, r1
	bx lr
