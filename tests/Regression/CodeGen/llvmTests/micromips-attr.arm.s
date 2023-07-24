.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar
bar:
.p2align 4
	bx lr
.globl foo
foo:
.p2align 4
	bx lr
