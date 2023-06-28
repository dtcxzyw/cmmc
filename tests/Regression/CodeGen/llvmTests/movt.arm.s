.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl t
t:
	movw r1, #0
	movt r1, #65535
	orr r0, r0, r1
	bx lr
.globl t2
t2:
	movw r1, #0
	movt r1, #65534
	orr r0, r0, r1
	bic r0, r0, #65536
	bx lr
