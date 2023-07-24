.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	bx lr
.globl test2
test2:
.p2align 4
	bx lr
.globl test3
test3:
.p2align 4
	mov r0, #0
	bx lr
