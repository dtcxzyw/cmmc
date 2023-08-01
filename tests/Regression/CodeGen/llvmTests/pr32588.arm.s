.arch armv7ve
.data
.bss
.align 4
.globl c
c:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl d
d:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl fn1
fn1:
	movw r0, #:lower16:c
	movw r1, #:lower16:d
	movt r0, #:upper16:c
	movt r1, #:upper16:d
	ldr r0, [r0, #0]
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r1, #0]
	bx lr
