.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	bx lr
.p2align 4
.globl no_thumb_mode_feature
no_thumb_mode_feature:
	bx lr
