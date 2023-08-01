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
.globl bar_comdat
bar_comdat:
	bx lr
.p2align 4
.globl baz
baz:
	bx lr
.p2align 4
.globl baz_comdat
baz_comdat:
	bx lr
.p2align 4
.globl foo
foo:
	bx lr
.p2align 4
.globl quux
quux:
	bx lr
.p2align 4
.globl quux_comdat
quux_comdat:
	bx lr
