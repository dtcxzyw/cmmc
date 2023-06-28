.arch armv7ve
.data
.align 4
.globl bar
bar:
	.4byte	42
.align 4
.globl foo
foo:
	.4byte	42
.text
.syntax unified
.arm
.fpu vfpv4
