.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl tailcallee
tailcallee:
	mov r0, r2
	bx lr
.p2align 4
.globl tailcaller
tailcaller:
	bx lr
