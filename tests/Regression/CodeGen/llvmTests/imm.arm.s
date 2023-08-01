.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	add r0, r0, #-268435441
	bx lr
.p2align 4
.globl test2
test2:
	movw r0, #65533
	bx lr
.p2align 4
.globl test3
test3:
	movw r1, #65533
	orr r0, r0, r1
	bx lr
