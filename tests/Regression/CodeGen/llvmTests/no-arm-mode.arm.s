.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	bx lr
.globl no_thumb_mode_feature
no_thumb_mode_feature:
.p2align 4
	bx lr
