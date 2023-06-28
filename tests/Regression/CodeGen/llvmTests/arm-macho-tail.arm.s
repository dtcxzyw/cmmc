.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar
bar:
	bx lr
.globl foo
foo:
	bx lr
.globl one_inst
one_inst:
	bx lr
