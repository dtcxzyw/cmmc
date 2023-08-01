.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl bar
bar:
	bx lr
.p2align 4
.globl foo
foo:
	bx lr
