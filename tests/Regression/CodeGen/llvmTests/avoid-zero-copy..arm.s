.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	bx lr
.globl main
main:
.p2align 4
	mov r0, #0
	bx lr
.globl nofoo
nofoo:
.p2align 4
	bx lr
