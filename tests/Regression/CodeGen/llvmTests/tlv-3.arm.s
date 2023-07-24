.arch armv7ve
.data
.data
.align 1
.globl foo
foo:
	.byte	1
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r0, #0
	bx lr
