.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar1
bar1:
.p2align 4
	bx lr
.globl bar2
bar2:
.p2align 4
	bx lr
.globl foo
foo:
.p2align 4
	bx lr
