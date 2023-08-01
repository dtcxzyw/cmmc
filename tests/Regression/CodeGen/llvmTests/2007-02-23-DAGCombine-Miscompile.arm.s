.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test
test:
	mvn r0, r0
	lsr r0, r0, #31
	rsb r0, r0, #2
	bx lr
