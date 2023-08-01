.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	bx lr
.p2align 4
.globl main
main:
	mov r0, #0
	bx lr
.p2align 4
.globl nofoo
nofoo:
	bx lr
