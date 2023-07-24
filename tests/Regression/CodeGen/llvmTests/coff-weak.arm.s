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
.globl bar_comdat
bar_comdat:
.p2align 4
	bx lr
.globl baz
baz:
.p2align 4
	bx lr
.globl baz_comdat
baz_comdat:
.p2align 4
	bx lr
.globl foo
foo:
.p2align 4
	bx lr
.globl quux
quux:
.p2align 4
	bx lr
.globl quux_comdat
quux_comdat:
.p2align 4
	bx lr
