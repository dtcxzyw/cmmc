.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl PR15705
PR15705:
	push { r4 }
	mov r4, r1
	cmp r0, r2
	moveq r4, r3
	cmp r0, r1
	mov r0, r4
	moveq r0, r2
	pop { r4 }
	bx lr
