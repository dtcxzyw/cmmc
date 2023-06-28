.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	uxtb r0, r0
	bx lr
