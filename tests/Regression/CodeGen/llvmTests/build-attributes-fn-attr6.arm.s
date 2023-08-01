.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo1
foo1:
	mov r0, #42
	bx lr
.p2align 4
.globl foo2
foo2:
	mov r0, #42
	bx lr
