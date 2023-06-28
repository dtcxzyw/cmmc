.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar
bar:
	bx lr
.globl bar_comdat
bar_comdat:
	bx lr
.globl baz
baz:
	bx lr
.globl baz_comdat
baz_comdat:
	bx lr
.globl foo
foo:
	bx lr
.globl quux
quux:
	bx lr
.globl quux_comdat
quux_comdat:
	bx lr
