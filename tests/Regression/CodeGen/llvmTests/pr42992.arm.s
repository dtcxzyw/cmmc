.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl hoge
hoge:
	mvn r1, #0
	lsl r0, r1, r0
	mvn r0, r0
	lsl r0, r0, #8
	and r0, r0, #3840
	bx lr
