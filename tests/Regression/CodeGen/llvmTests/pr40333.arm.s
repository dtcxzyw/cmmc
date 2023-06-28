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
	lsr r0, r0, r1
	uxtb r0, r0
	bx lr
