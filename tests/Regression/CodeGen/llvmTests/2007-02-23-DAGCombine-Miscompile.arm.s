.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
.p2align 4
	mvn r0, r0
	lsr r0, r0, #31
	rsb r0, r0, #2
	bx lr
