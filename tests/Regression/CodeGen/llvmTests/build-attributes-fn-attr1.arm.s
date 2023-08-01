.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo_no_fn_attr
foo_no_fn_attr:
	mov r0, #42
	bx lr
