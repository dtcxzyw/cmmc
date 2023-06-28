.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo_no_fn_attr
foo_no_fn_attr:
	mov r0, #42
	bx lr
