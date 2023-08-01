.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	bx lr
.p2align 4
.globl test2
test2:
	bx lr
.p2align 4
.globl test3
test3:
	mov r0, #0
	bx lr
