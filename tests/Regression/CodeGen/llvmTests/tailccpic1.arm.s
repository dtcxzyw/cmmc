.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl tailcallee
tailcallee:
.p2align 4
	bx lr
.globl tailcaller
tailcaller:
.p2align 4
	bx lr
