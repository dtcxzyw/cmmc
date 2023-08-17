.arch armv7ve
.data
.bss
.p2align 2
.globl G
G:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	lsl r1, r0, #2
	movw r2, #:lower16:G
	movt r2, #:upper16:G
	str r1, [r2, #0]
	bx lr
