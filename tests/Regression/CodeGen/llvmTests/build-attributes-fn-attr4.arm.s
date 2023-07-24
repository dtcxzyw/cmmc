.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo1
foo1:
.p2align 4
	mov r0, #42
	bx lr
