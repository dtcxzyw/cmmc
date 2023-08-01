.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl bar1
bar1:
	bx lr
.p2align 4
.globl bar2
bar2:
	bx lr
.p2align 4
.globl foo
foo:
	bx lr
