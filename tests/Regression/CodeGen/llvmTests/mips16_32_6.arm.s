.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	bx lr
.globl main
main:
	mov r0, #0
	bx lr
.globl nofoo
nofoo:
	bx lr
