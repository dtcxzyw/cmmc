.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl tailcallee
tailcallee:
	bx lr
.p2align 4
.globl tailcaller
tailcaller:
	bx lr
